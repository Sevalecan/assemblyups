Coreminer = {}

-- constants
Coreminer.name_core_miner = mod_prefix.."core-miner"
Coreminer.name_core_miner_drill = mod_prefix.."core-miner-drill"
Coreminer.name_core_mining_recipe = mod_prefix.."core-mining"
Coreminer.resource_normal = 1000000

function Coreminer.resource_to_fragment_name(resource_name)
  local try_name = util.mod_prefix .. "core-fragment-" .. resource_name
  if game.item_prototypes[try_name] then
    return try_name
  end
  -- otherwise there is no fragment
end

function Coreminer.variation_to_direction(var)
  if var == 1 then
    return defines.direction.south
  elseif var == 2 then
    return defines.direction.west
  elseif var == 3 then
    return defines.direction.north
  else
    return defines.direction.east
  end
end

function Coreminer.direction_to_variation(dir)
  if dir == defines.direction.south then
    return 1
  elseif dir == defines.direction.west then
    return 2
  elseif dir == defines.direction.north then
    return 3
  else
    return 4
  end
end

function Coreminer.default_fragment_name(zone)
  if not zone.fragment_name then
    zone.fragment_name = Coreminer.resource_to_fragment_name(zone.primary_resource)
    if not zone.fragment_name then
      -- maybe choose something at random?
      error("Primary resource has no core fragment: " .. zone.name )
      zone.fragment_name = util.mod_prefix .. "core-fragment-omni"
    end
  end
end

---Iterates through a zone's core_mining table verifying each entity.
---If an entity is invalid, destroys associated entities and removes entry
---from global and zone `core_mining` tables.
---@param zone PlanetType|MoonType Zone table, assumed to have a `core_mining` element
function Coreminer.validate_core_mining_table(zone)
  for key, entry in pairs(zone.core_mining) do
    if not (entry.miner and entry.miner.valid and
      entry.drill and entry.drill.valid and
      entry.resource and entry.resource.valid) then
      if entry.miner then entry.miner.destroy() end
      if entry.drill then entry.drill.destroy() end
      if entry.resource then entry.resource.destroy() end

      zone.core_mining[key] = nil
      global.core_mining[key] = nil
    end
  end
end

---Calculates the appropriate yield of core-fragment resources based on zone proprerties
---and number of core miners on a surface. Updates `resource.entity` values if needed.
---@param zone PlanetType|MoonType Zone table
function Coreminer.equalise(zone)
  local surface = Zone.get_surface(zone)
  if not (zone and surface) then return end
  Coreminer.default_fragment_name(zone)

  zone.core_mining = zone.core_mining or {}
  Coreminer.validate_core_mining_table(zone)

  -- Gather resource entities
  local resources = {}
  for _, entry in pairs(zone.core_mining) do
    table.insert(resources, entry.resource)
  end

  --local zone_efficiency = zone.type == "planet" and 0.5 or 0.25
  local zone_efficiency = zone.radius / 6000
  local n_resources = table_size(resources)
  local efficiency = math.sqrt(n_resources) / n_resources
  local new_amount = Coreminer.resource_normal * zone_efficiency * efficiency

  for _, resource in pairs(resources) do
    if resource.valid and resource.amount ~= new_amount then
      resource.amount = new_amount
      surface.create_entity{
         name = "flying-text",
         position = resource.position,
         text = string.format("%.2f", efficiency * 100).."% effective",
       }
     end
  end
end

---Calls `Coreminer.equalise` function for each solid zone with a generated surface.
function Coreminer.equalise_all()
  if global.zone_index then
    for _, zone in pairs(global.zone_index) do
      if zone.surface_index and Zone.is_solid(zone) then
        Coreminer.equalise(zone)
      end
    end
  end
end

---Creates drill entity and resource upon building a core miner and saves references to zone and
---global `core_mining` tables
---@param event EntityCreationEvent Event data
function Coreminer.on_entity_created(event)
  ---@type LuaEntity
  local entity = event.created_entity or event.entity
  if not entity.valid then return end

  local entity_name = entity.name

  -- Addresses a destroyed miner/drill being rebuilt by a robot (factorio-mods/#170).
  -- Create a core miner entity instead, and silently destroy the drill that was just created.
  if entity_name == Coreminer.name_core_miner_drill then
    entity.surface.create_entity{
      name=Coreminer.name_core_miner,
      position=entity.position,
      direction=entity.direction,
      force=entity.force,
      raise_built=true
    }
    entity.destroy()
    return
  end

  if entity_name ~= Coreminer.name_core_miner then return end

  local zone = Zone.from_surface(entity.surface)
  if zone and Zone.is_solid(zone) then
    Coreminer.default_fragment_name(zone)
    if not zone.fragment_name then
      game.print("[color=red]Error: This surface is missing a core fragment setting. Please report the issue.[/color]")
      cancel_entity_creation(entity, event.player_index, "Error", event)
    else
      local resource = entity.surface.create_entity{
          name = zone.fragment_name,
          position = entity.position,
          direction = entity.direction,
          amount = 1,
      }
      local drill = entity.surface.create_entity{
          name = Coreminer.name_core_miner_drill,
          position = {x = entity.position.x, y = entity.position.y + 1/32},
          direction = entity.direction,
          --direction = defines.direction.south,
          --direction = Coreminer.variation_to_direction(entity.graphics_variation),
          force = entity.force
      }

      ---@type CoreMiningInfo
      local record = {
        miner = entity,
        miner_unit_number = entity.unit_number,
        drill = drill,
        drill_unit_number = drill.unit_number,
        resource = resource,
        position = entity.position,
        zone_index = zone.index,
        surface_index = entity.surface.index,
        force_name = entity.force.name
      }

      global.core_mining[entity.unit_number] = record

      zone.core_mining = zone.core_mining or {}
      zone.core_mining[entity.unit_number] = record

      -- drill is selectable so make that the one that takes damage
      entity.destructible = false

      script.register_on_entity_destroyed(entity)
      script.register_on_entity_destroyed(drill)
      Coreminer.equalise(zone)
    end
  else
    cancel_entity_creation(entity, event.player_index, {"space-exploration.construction-denied-solid-only"}, event)
    return
  end
end
Event.addListener(defines.events.on_built_entity, Coreminer.on_entity_created)
Event.addListener(defines.events.on_robot_built_entity, Coreminer.on_entity_created)
Event.addListener(defines.events.script_raised_built, Coreminer.on_entity_created)
Event.addListener(defines.events.script_raised_revive, Coreminer.on_entity_created)

---Searches for the given entity `unit_number` in the `global.core_mining` table and returns
---the index if a match is found.
---@param unit_number uint Entity `unit_number` to search for
---@return uint|nil
function Coreminer.get_core_mining_entities_index(unit_number)
    for index, entry in pairs(global.core_mining) do
      if entry.miner_unit_number == unit_number or
        entry.drill_unit_number == unit_number then
        return index
      end
    end
end

---Destroys leftover components of a core miner composite when one of the entities is destroyed
---@param event on_player_mined_entity|on_robot_mined_entity|on_entity_died|script_raised_destroy|on_entity_destroyed
function Coreminer.on_entity_removed(event)
  local unit_number

  if event.entity and event.entity.valid and
    (event.entity.name == Coreminer.name_core_miner or
    event.entity.name == Coreminer.name_core_miner_drill) then
    unit_number = event.entity.unit_number
  elseif event.unit_number then
    unit_number = event.unit_number
  end

  local index = Coreminer.get_core_mining_entities_index(unit_number)

  -- exit if no match in core miner list
  if not index then return end

  local entry = global.core_mining[index]
  local zone = global.zone_index[entry.zone_index]

  -- destroy any leftover entities
  if entry.miner and entry.miner.valid and entry.miner_unit_number ~= unit_number then
    entry.miner.destroy()
  end

  if entry.drill and entry.drill.valid and entry.drill_unit_number ~= unit_number then
    entry.drill.destroy()
  end

  if entry.resource and entry.resource.valid then
    entry.resource.destroy()
  end

  zone.core_mining[index] = nil
  global.core_mining[index] = nil

  Coreminer.equalise(zone)
end
Event.addListener(defines.events.on_player_mined_entity, Coreminer.on_entity_removed)
Event.addListener(defines.events.on_robot_mined_entity, Coreminer.on_entity_removed)
Event.addListener(defines.events.on_entity_died, Coreminer.on_entity_removed)
Event.addListener(defines.events.script_raised_destroy, Coreminer.on_entity_removed)
Event.addListener(defines.events.on_entity_destroyed, Coreminer.on_entity_removed)

-- simple entity does not support rotation, bake into graphics variation
function Coreminer.on_player_rotated_entity(event)
  if event.entity and event.entity.valid then
    if event.entity.name == Coreminer.name_core_miner_drill then
      local e = event.entity.surface.find_entity(Coreminer.name_core_miner, event.entity.position)
      --if e then e.graphics_variation = Coreminer.direction_to_variation(event.entity.direction) end
      if e then e.direction = event.entity.direction end
    end
  end
end
Event.addListener(defines.events.on_player_rotated_entity, Coreminer.on_player_rotated_entity)

function Coreminer.update_zone_fragment_resources(zone)
  local surface = Zone.get_surface(zone)
  local core_mining = zone.core_mining
  if surface and core_mining then
    for _, record in pairs(core_mining) do
      if record.resource and record.resource.valid then
        record.resource.destroy()
      end
      record.resource = surface.create_entity{
         name = zone.fragment_name,
         position = record.position,
         amount = 1,
      }
    end
    Coreminer.equalise(zone)
  end
end

---Searches all zones for miner entities and (re)creates global and zone `core_mining` tables.
---Any existing ones are deleted. This function can be quite expensive and should only run once
---`on_configuration_changed`, when loading an old save where `global.core_mining` is nil.
function Coreminer.create_core_mining_tables()
  global.core_mining = {}

  for _, zone in pairs(global.zone_index) do
    if zone.surface_index and Zone.is_solid(zone) then
      local surface = Zone.get_surface(zone)
      local miners = surface.find_entities_filtered{name=Coreminer.name_core_miner}

      zone.core_mining = {}

      for _, miner in pairs(miners) do
        local drill = surface.find_entity(Coreminer.name_core_miner_drill, miner.position)
        local resource = surface.find_entity(zone.fragment_name, miner.position)

        local record = {
          miner = miner,
          miner_unit_number = miner.unit_number,
          drill = drill,
          drill_unit_number = drill and drill.unit_number or nil,
          resource = resource,
          position = miner.position,
          zone_index = zone.index,
          surface_index = miner.surface.index,
          force_name = miner.force.name
        }

        script.register_on_entity_destroyed(miner)
        script.register_on_entity_destroyed(drill)

        global.core_mining[miner.unit_number] = record
        zone.core_mining[miner.unit_number] = record
      end
    end
  end
end

return Coreminer
