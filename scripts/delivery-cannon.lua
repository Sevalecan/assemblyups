local DeliveryCannon = {}

DeliveryCannon.variants = {
  ["logistic"] = {
    name = mod_prefix.."delivery-cannon",
    name_energy_interface = mod_prefix.."delivery-cannon-energy-interface",
    name_beam = mod_prefix.."delivery-cannon-beam",
    beam_offset = {x = -0.5, y = -5},
    name_capsule = mod_prefix.."delivery-cannon-capsule",
    name_capsule_projectile = mod_prefix.."delivery-cannon-capsule-projectile",
    energy_per_delta_v = 50000,
  },
  ["weapon"] = {
    name = mod_prefix.."delivery-cannon-weapon",
    name_energy_interface = mod_prefix.."delivery-cannon-weapon-energy-interface",
    name_beam = mod_prefix.."delivery-cannon-weapon-beam",
    beam_offset = {x = -1, y = -5},
    name_capsule = mod_prefix.."delivery-cannon-weapon-capsule",
    name_capsule_projectile = mod_prefix.."delivery-cannon-weapon-capsule-projectile",
    energy_per_delta_v = 500000,
  }
}

DeliveryCannon.name_delivery_cannon_chest = mod_prefix.."delivery-cannon-chest"

DeliveryCannon.name_delivery_cannon_capsule_shadow = mod_prefix.."delivery-cannon-capsule-shadow"
DeliveryCannon.name_delivery_cannon_capsule_explosion = mod_prefix.."delivery-cannon-capsule-explosion"

DeliveryCannon.name_delivery_cannon_targeter = mod_prefix.."delivery-cannon-targeter"
DeliveryCannon.name_target_activity_type = "delivery-cannon-target"

DeliveryCannon.capsule_fall_altitude = 100
DeliveryCannon.capsule_fall_time = 2 * 60

DeliveryCannon.name_event_copy_entity_settings = mod_prefix.."copy-entity-settings"

---Gets the DeliveryCannonInfo for given unit_number.
---@param unit_number uint
function DeliveryCannon.from_unit_number (unit_number)
  if not unit_number then Log.trace("DeliveryCannon.from_unit_number: invalid unit_number: nil") return end
  unit_number = tonumber(unit_number)
  -- NOTE: only supports container as the entity
  if global.delivery_cannons[unit_number] then
    return global.delivery_cannons[unit_number]
  else
    Log.trace("DeliveryCannon.from_unit_number: invalid unit_number: " .. unit_number)
  end
end

---Gets the DeliveryCannonInfo for given entity.
---@param entity LuaEntity
function DeliveryCannon.from_entity (entity)
  if not(entity and entity.valid) then
    Log.trace("DeliveryCannon.from_entity: invalid entity")
    return
  end
  -- NOTE: only supports container as the entity
  return DeliveryCannon.from_unit_number(entity.unit_number)
end

---Computes the cost to launch a delivery cannon.
---@param origin AnyZoneType Launch zone
---@param destination AnyZoneType Destination zone
function DeliveryCannon.get_delta_v(origin, destination)
  if origin and destination then
    return Zone.get_launch_delta_v(origin) + Zone.get_travel_delta_v(origin, destination)
  end
end

---Gets the coordinate the delivery cannon is targetting.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
function DeliveryCannon.get_coordinate(delivery_cannon)
  if delivery_cannon.destination and delivery_cannon.destination.coordinate then
    return delivery_cannon.destination.coordinate
  end
  return nil
end

---Does the delivery cannon have a destination set?
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
function DeliveryCannon.has_destination(delivery_cannon)
  return delivery_cannon and delivery_cannon.destination and delivery_cannon.destination.coordinate and delivery_cannon.destination.zone
end

---Returns whether this delivery cannon is valid.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
function DeliveryCannon.is_valid(delivery_cannon)
  return delivery_cannon and delivery_cannon.main and delivery_cannon.main.valid
  and delivery_cannon.energy_interface and delivery_cannon.energy_interface.valid
end

---Returns whether the destination zone is reachable for a given delivery cannon.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
---@param dest? AnyZoneType Zone in which candidate target is located
---@return boolean is_reachable
function DeliveryCannon.is_reachable_destination(delivery_cannon, dest)
  if not dest then return end

  local source = delivery_cannon.zone
  local is_reachable

  if source == dest then
    -- Delivery within the same zone is always valid
    is_reachable = true
  elseif source.type == "anomaly" or dest.type == "anomaly" or dest.type == "asteroid-field" then
    -- Delivery cannons can't deliver to or from anomaly, or to an asteroid field
    is_reachable = false
  elseif source.type == "asteroid-field" then
    -- Delivery cannons on asteroid fields can only deliver to zones within their nearest star system
    is_reachable = Zone.find_parent_star(dest) == Zone.find_nearest_star(source.stellar_position) and true or false
  else
    -- Only zone types left are directly associated with a star; parent stars have to match
    is_reachable = Zone.find_parent_star(source) == Zone.find_parent_star(dest) and true or false
  end

  return is_reachable
end

---Returns if this delivery cannon can fire.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
function DeliveryCannon.can_fire(delivery_cannon)
  return delivery_cannon and (not delivery_cannon.is_off)
  and delivery_cannon.energy and delivery_cannon.required_energy
  and delivery_cannon.energy >= delivery_cannon.required_energy
end

---Gets the stack that this delivery cannon is ready to fire.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
---@return table stack
function DeliveryCannon.get_stack(delivery_cannon)
  if not delivery_cannon then return end
  local recipe = delivery_cannon.main.get_recipe()
  if not recipe then return end
  if string.find(recipe.name, "se-delivery-cannon-weapon-pack-", 1, true) then
    local ammo_name = Util.replace(recipe.name, "se-delivery-cannon-weapon-pack-", "")
    local ammo = game.item_prototypes[ammo_name]
    if ammo then
      return {name = ammo_name, count = 1}
    end
  else
    for _, ingredient in pairs(recipe.ingredients) do
      if ingredient.name ~= DeliveryCannon.variants[delivery_cannon.variant].name_capsule then
        local stack = ingredient
        stack.count = stack.amount or stack.count
        return stack
      end
    end
  end
end

---Displays a message that the delivery cannon projectile was destroyed by an opposing force.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
---@param defence_data any Info about the destruction
---@param target_zone AnyZoneType Zone the delivery cannon was firing at
function DeliveryCannon.display_destroyed_projectile_message(delivery_cannon, defence_data, target_zone)
  game.forces[delivery_cannon.force_name].print({"space-exploration.delivery_cannon_canister_destroyed_by", delivery_cannon.zone.name, target_zone.name})
  for force_name, shots_fired in pairs(defence_data) do
    game.forces[force_name].print({"space-exploration.delivery_cannon_defended_canister", target_zone.name, shots_fired.defence_shots, shots_fired.point_defence_shots})
  end
end

---Displays a message that the delivery cannon projectile was not destroyed by an opposing force.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
---@param defence_data any Info about the (failed) destruction
---@param target_zone AnyZoneType Zone the delivery cannon was firing at
function DeliveryCannon.display_not_destroyed_projectile_message(delivery_cannon, defence_data, target_zone)
  for force_name, shots_fired in pairs(defence_data) do
    game.forces[force_name].print({"space-exploration.delivery_cannon_defended_canister_failed", target_zone.name, shots_fired.defence_shots, shots_fired.point_defence_shots})
  end
end

--- Sets delivery cannon target to `coordinates` in `target_zone` and updates its required energy.
--- If a non-nil zone is passed, validates it for the given delivery cannon and prints outs a
--- message for the player that triggered the action if it was invalid.
--- Returns true if the function modified the cannon's zone (including setting it to nil)
--- @param delivery_cannon DeliveryCannonInfo Delivery cannon data
--- @param player LuaPlayer|nil player who should receive a message if target zone is not valid
--- @param target_zone? AnyZoneType Zone table or nil to set no destination
--- @param coordinates? Position Coordinates table if available
--- @return boolean is_successful
function DeliveryCannon.set_target(delivery_cannon, player, target_zone, coordinates)
  local is_successful

  if target_zone then
    -- Check if zone is reachable from the given delivery cannon
    if DeliveryCannon.is_reachable_destination(delivery_cannon, target_zone) then
      -- Set the delivery cannon properties accordingly and calculate its required_energy
      delivery_cannon.destination.zone = target_zone
      delivery_cannon.destination.coordinate = coordinates
      delivery_cannon.required_energy =
        (DeliveryCannon.variants[delivery_cannon.variant].energy_per_delta_v *
        DeliveryCannon.get_delta_v(delivery_cannon.zone, target_zone))

      is_successful = true
      Log.trace("set destination to location: " .. target_zone.name )
    else
      -- Inform the player that the chosen target_zone was not reachable
      if player then
        local source_str = "[img=" .. Zone.get_icon(delivery_cannon.zone) .. "] " .. delivery_cannon.zone.name
        local dest_str = "[img=" .. Zone.get_icon(target_zone) .. "] " .. target_zone.name
        player.print({"space-exploration.delivery-cannon-invalid-destination", source_str, dest_str})
      end

      is_successful = false
      Log.trace("attempted to set unreachable destination: " .. target_zone.name)
    end
  else
    -- This executes if a nil target_zone was passed to the function
    delivery_cannon.destination.zone = nil
    delivery_cannon.destination.coordinate = nil
    delivery_cannon.required_energy = nil

    is_successful = true
  end

  return is_successful
end

---Picks a new target for a delivery cannon.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
---@param target_zone AnyZoneType Zone to pick a target from
---@param target_surface LuaSurface Surface to pick a target from
function DeliveryCannon.pick_new_target(delivery_cannon, target_zone, target_surface)
  local random_chunk = target_surface.get_random_chunk()
  local position = {x = (random_chunk.x + math.random()) * 32, y = (random_chunk.y + math.random()) * 32}
  if target_zone.radius and Util.vector_length(position) > target_zone.radius then
     position = Util.vector_set_length(position, target_zone.radius * math.random())
  end
  if math.random() < 0.99 then
    local enemy = find_enemy(game.forces[delivery_cannon.force_name], target_surface, position)
    if enemy then
      position = enemy.position
    else
      delivery_cannon.is_off = true

      game.forces[delivery_cannon.force_name].print({
        "space-exploration.delivery-cannon-no-enemies-found",
        "[gps="..math.floor(delivery_cannon.main.position.x)..","..math.floor(delivery_cannon.main.position.y)..","..delivery_cannon.main.surface.name.."]"
        })
    end
  end
  delivery_cannon.destination.coordinate = position
end

---Adds a delivery cannon to a force's zone assets.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
function DeliveryCannon.add_delivery_cannon_to_table(delivery_cannon)
  local type_table = DeliveryCannon.get_delivery_cannon_type_table(delivery_cannon)
  type_table[delivery_cannon.unit_number] = delivery_cannon
end

---Gets the delivery cannon zone assets.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
function DeliveryCannon.get_delivery_cannon_type_table(delivery_cannon)
  local zone_assets = Zone.get_force_assets(delivery_cannon.force_name, delivery_cannon.zone.index)
  zone_assets.delivery_cannons = zone_assets.delivery_cannons or {}
  return zone_assets.delivery_cannons
end

---Removes a delivery cannon from a force's zone assets.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
function DeliveryCannon.remove_delivery_cannon_from_table(delivery_cannon)
  local type_table = DeliveryCannon.get_delivery_cannon_type_table(delivery_cannon)
  if not type_table[delivery_cannon.unit_number] then return end
  type_table[delivery_cannon.unit_number] = nil
end

---Fires a delivery cannon if it's ready to fire.
---@param delivery_cannon DeliveryCannonInfo Delivery cannon data
function DeliveryCannon.attempt_fire(delivery_cannon)
  -- only fire cannons that are valid, have a valid destination, and have enough energy to fire at that destination
  if not DeliveryCannon.is_valid(delivery_cannon) then DeliveryCannon.destroy(delivery_cannon) return end
  if not DeliveryCannon.has_destination(delivery_cannon) then return end
  delivery_cannon.energy = delivery_cannon.energy_interface.energy
  if not delivery_cannon.required_energy then
    delivery_cannon.required_energy = DeliveryCannon.variants[delivery_cannon.variant].energy_per_delta_v * DeliveryCannon.get_delta_v(delivery_cannon.zone, delivery_cannon.destination.zone)
  end
  if not DeliveryCannon.can_fire(delivery_cannon) then return end

  -- only fire cannons with a valid payload ready
  local cannon_inv = delivery_cannon.main.get_output_inventory()
  delivery_cannon.payload_name = nil
  delivery_cannon.payload_count = 0
  for name, count in pairs(cannon_inv.get_contents()) do -- should only be 1
    delivery_cannon.payload_name = name
    delivery_cannon.payload_count = count
  end
  if not (delivery_cannon.payload_count > 0) then return end

  -- fire the cannon
  local target_zone = delivery_cannon.destination.zone
  local target_surface = Zone.get_make_surface(target_zone)
  local target_position = DeliveryCannon.get_coordinate(delivery_cannon)
  if delivery_cannon.force_name then game.forces[delivery_cannon.force_name].chart(target_surface, Util.position_to_area(target_position, 64)) end
  local stack = DeliveryCannon.get_stack(delivery_cannon)
  if not stack then error("Delivery Cannon tried to fire invalid stack") return end
  cannon_inv.remove({name=delivery_cannon.payload_name, count=1})
  delivery_cannon.energy_interface.energy = delivery_cannon.energy_interface.energy - delivery_cannon.required_energy
  delivery_cannon.main.surface.create_entity{
    name = DeliveryCannon.variants[delivery_cannon.variant].name_beam,
    position = Util.vectors_add(delivery_cannon.main.position, DeliveryCannon.variants[delivery_cannon.variant].beam_offset ),
    target = Util.vectors_add(delivery_cannon.main.position, {x = 0, y = -100})
  }

  -- give opposing force's meteor defence a chance to destroy the projectile
  local payload = {
    variant = delivery_cannon.variant,
    stack = stack,
    target_zone = target_zone,
    target_position = target_position,
    force_name = delivery_cannon.force_name,
    eta = game.tick + DeliveryCannon.capsule_fall_time,
    health = 1
  }
  local defence_data = Meteor.defence_vs_projectile(payload)
  if payload.health <= 0 then DeliveryCannon.display_destroyed_projectile_message(delivery_cannon, defence_data, target_zone) return end

  -- the projectile went through
  DeliveryCannon.display_not_destroyed_projectile_message(delivery_cannon, defence_data, target_zone)
  global.delivery_cannon_payloads = global.delivery_cannon_payloads or {}
  table.insert(global.delivery_cannon_payloads, payload)

  local projectile_start_position = Util.vectors_add(target_position, {x = 0, y = -DeliveryCannon.capsule_fall_altitude})
  local shadow_start_position = Util.vectors_add(target_position, {x = DeliveryCannon.capsule_fall_altitude, y = 0})
  target_surface.create_entity{
    name = DeliveryCannon.variants[delivery_cannon.variant].name_capsule_projectile,
    position = projectile_start_position,
    target = target_position,
    force = delivery_cannon.force_name,
    speed = DeliveryCannon.capsule_fall_altitude/DeliveryCannon.capsule_fall_time
  }
  target_surface.create_entity{
    name = DeliveryCannon.name_delivery_cannon_capsule_shadow,
    position = shadow_start_position,
    target = target_position,
    force = delivery_cannon.force_name,
    speed = DeliveryCannon.capsule_fall_altitude/DeliveryCannon.capsule_fall_time
  }
  target_surface.request_to_generate_chunks(projectile_start_position)
  target_surface.request_to_generate_chunks(shadow_start_position)
  target_surface.request_to_generate_chunks(target_position)

  -- select a new target if it automatic mode
  if delivery_cannon.auto_select_targets then
    DeliveryCannon.pick_new_target(delivery_cannon, target_zone, target_surface)
  end
end

---Performs the effect of a payload landing.
---If there is a delivery chest at the landing location, try to insert the payload item,
---otherwise causes an explosion at the target and spills the items on the ground
---@param payload DeliveryCannonPayloadInfo the payload that is landing
function DeliveryCannon.do_payload_effect(payload)
  local surface = Zone.get_make_surface(payload.target_zone)
  local spill = payload.stack.count
  local chest = surface.find_entity(DeliveryCannon.name_delivery_cannon_chest, payload.target_position)
  if chest then
    spill = spill - chest.insert(payload.stack)
  end
  if spill > 0 then

    surface.create_entity{
      name = DeliveryCannon.name_delivery_cannon_capsule_explosion,
      position = payload.target_position,
      force = payload.force_name
    }
    if payload.stack.name == "explosives" then -- double damage
      surface.create_entity{
        name = DeliveryCannon.name_delivery_cannon_capsule_explosion,
        position = payload.target_position,
        force = payload.force_name
      }
    end

    local proto = game.item_prototypes[payload.stack.name]
    local projectiles = {}
    if proto.type == "ammo" then
      local ammo_type = proto.get_ammo_type()
      for _, action in pairs(ammo_type.action) do
        for _, action_delivery in pairs(action.action_delivery) do
          if action_delivery.type == "projectile" or action_delivery.type == "artillery" then
            projectiles[action_delivery.projectile] = (projectiles[action_delivery.projectile] or 0) + 1
          end
        end
      end
    end
    if proto.type == "capsule" then
      local ammo_type = proto.capsule_action.attack_parameters.ammo_type
      for _, action in pairs(ammo_type.action) do
        for _, action_delivery in pairs(action.action_delivery) do
          if action_delivery.type == "projectile" or action_delivery.type == "artillery" then
            projectiles[action_delivery.projectile] = (projectiles[action_delivery.projectile] or 0) + 1
          end
        end
      end
    end
    local no_items = false
    for projectile_name, projectile_count in pairs(projectiles) do
      no_items = true
      surface.create_entity{
        name = projectile_name,
        position = payload.target_position,
        target = payload.target_position,
        speed = 0.1,
        force = payload.force_name
      }
    end
    if not no_items then
      local spill_stack = table.deepcopy(payload.stack)
      spill_stack.count = math.ceil(spill/4)
      surface.spill_item_stack(payload.target_position, spill_stack, true, payload.force_name, true)
    end
  end
end

---Updates all delivery cannons, potentially firing them or updating their guis. Checks are done
---infrequently, but still frequently enough that the cannon will never get backed up while
---assembling at full speed. Updates all cannon payloads, causing their effect when they hit.
function DeliveryCannon.on_tick()
  -- fire cannons
  for _, delivery_cannon in pairs(global.delivery_cannons) do
    if (game.tick + delivery_cannon.unit_number) % 60 == 0 then
      DeliveryCannon.attempt_fire(delivery_cannon)
    end
  end

  -- update guis
  if game.tick % 60 == 0 then
    for _, player in pairs(game.connected_players) do
      DeliveryCannonGUI.gui_update(player)
    end
  end

  -- process payloads
  if global.delivery_cannon_payloads then
    for i = #global.delivery_cannon_payloads, 1, -1 do
      local payload = global.delivery_cannon_payloads[i]
      if payload then
        if game.tick >= payload.eta then
          DeliveryCannon.do_payload_effect(payload)
          table.remove(global.delivery_cannon_payloads, i)
        end
      end
    end
  end
end
Event.addListener(defines.events.on_tick, DeliveryCannon.on_tick)

---Handles the player setting a delivery cannon target using the targetting selection tool.
---@param event on_player_selected_area
function DeliveryCannon.on_player_selected_area(event)
  if (event.item == DeliveryCannon.name_delivery_cannon_targeter) then
    local player = game.players[event.player_index]
    local playerdata = get_make_playerdata(player)
    if playerdata.remote_view_activity and playerdata.remote_view_activity.type == DeliveryCannon.name_target_activity_type then
      local delivery_cannon = playerdata.remote_view_activity.delivery_cannon
      local destination_zone = Zone.from_surface(event.surface)
      if delivery_cannon.main and delivery_cannon.main.valid and destination_zone then
        local coordinates = {
          x = (event.area.left_top.x + event.area.right_bottom.x) / 2,
          y = (event.area.left_top.y + event.area.right_bottom.y) / 2
        }
        local is_successful = DeliveryCannon.set_target(delivery_cannon, player, destination_zone, coordinates)
        if is_successful then
          player.print({"space-exploration.delivery-cannon-coordinates-set",
            math.floor(delivery_cannon.destination.coordinate.x),
            math.floor(delivery_cannon.destination.coordinate.y)})
        end
      end
    end
  end
end
Event.addListener(defines.events.on_player_selected_area, DeliveryCannon.on_player_selected_area)

function DeliveryCannon.on_entity_created(event)
  local entity = util.get_entity_from_event(event)

  if not entity then return end
  if entity.name == DeliveryCannon.variants["logistic"].name or entity.name == DeliveryCannon.variants["weapon"].name then
    if not RemoteView.is_unlocked_force(entity.force.name) then
      return cancel_entity_creation(entity, event.player_index, {"space-exploration.generic-requires-satellite"}, event)
    end
    local force_name = entity.force.name

    local zone = Zone.from_surface(entity.surface)

    if not zone then
      return cancel_entity_creation(entity, event.player_index, {"space-exploration.invalid_launch_location"}, event)
    end

    local delivery_cannon = {
      type = entity.name,
      variant = entity.name == DeliveryCannon.variants["logistic"].name and "logistic" or "weapon",
      valid = true,
      force_name = force_name,
      unit_number = entity.unit_number,
      main = entity,
      zone = zone,
      is_off = true,
      destination = {
        zone = nil
      },
      launch_status = -1
    }

    global.delivery_cannons[entity.unit_number] = delivery_cannon
    Log.trace("DeliveryCannon: delivery_cannon added")

    DeliveryCannon.add_delivery_cannon_to_table(delivery_cannon) -- assigns to zone_assets

    -- spawn energy interface
    delivery_cannon.energy_interface = util.find_entity_or_revive_ghost(entity.surface, DeliveryCannon.variants[delivery_cannon.variant].name_energy_interface, entity.position)
    if not delivery_cannon.energy_interface then
      delivery_cannon. energy_interface = entity.surface.create_entity{
        name = DeliveryCannon.variants[delivery_cannon.variant].name_energy_interface,
        force = entity.force,
        position = {entity.position.x, entity.position.y}
      }
    end
    delivery_cannon.energy_interface.destructible = false

    -- set settings
    local tags = util.get_tags_from_event(event, DeliveryCannon.serialize)
    if tags then
      DeliveryCannon.deserialize(entity, tags)
    end

    if event.player_index and game.players[event.player_index] and game.players[event.player_index].connected then
      DeliveryCannonGUI.gui_open(game.players[event.player_index], delivery_cannon)
    end
  end
end
Event.addListener(defines.events.on_entity_cloned, DeliveryCannon.on_entity_created)
Event.addListener(defines.events.on_built_entity, DeliveryCannon.on_entity_created)
Event.addListener(defines.events.on_robot_built_entity, DeliveryCannon.on_entity_created)
Event.addListener(defines.events.script_raised_built, DeliveryCannon.on_entity_created)
Event.addListener(defines.events.script_raised_revive, DeliveryCannon.on_entity_created)

function DeliveryCannon.destroy_sub(delivery_cannon, key)
  if delivery_cannon[key] and delivery_cannon[key].valid then
    delivery_cannon[key].destroy()
    delivery_cannon[key] = nil
  end
end

function DeliveryCannon.destroy(delivery_cannon, player_index)
  if not delivery_cannon then
    Log.trace("delivery_cannon_destroy: no delivery_cannon")
    return
  end

  delivery_cannon.valid = false

  DeliveryCannon.destroy_sub(delivery_cannon, 'main')
  DeliveryCannon.destroy_sub(delivery_cannon, 'energy_interface')

  DeliveryCannon.remove_delivery_cannon_from_table(delivery_cannon)
  global.delivery_cannons[delivery_cannon.unit_number] = nil

  -- if a player has this gui open then close it
  local gui_name = DeliveryCannonGUI.name_delivery_cannon_gui_root
  for _, player in pairs(game.connected_players) do
    local root = player.gui.relative[gui_name]
    if root and root.tags and root.tags.unit_number == delivery_cannon.unit_number then
      root.destroy()
    end
  end
end

function DeliveryCannon.on_entity_removed(event)
  local entity = event.entity
  if entity and entity.valid and
    (entity.name == DeliveryCannon.variants["logistic"].name or entity.name == DeliveryCannon.variants["weapon"].name) then
      DeliveryCannon.destroy(DeliveryCannon.from_entity(entity), event.player_index )
  end
end
Event.addListener(defines.events.on_entity_died, DeliveryCannon.on_entity_removed)
Event.addListener(defines.events.on_robot_mined_entity, DeliveryCannon.on_entity_removed)
Event.addListener(defines.events.on_player_mined_entity, DeliveryCannon.on_entity_removed)
Event.addListener(defines.events.script_raised_destroy, DeliveryCannon.on_entity_removed)

function DeliveryCannon.serialize(entity)
  local delivery_cannon = DeliveryCannon.from_entity(entity)
  if delivery_cannon then
    local tags = {}
    if delivery_cannon.destination then
      tags.destination = {
        coordinate = delivery_cannon.destination.coordinate,
        zone_name = delivery_cannon.destination.zone and delivery_cannon.destination.zone.name
      }
    end
    tags.is_off = delivery_cannon.is_off
    tags.auto_select_targets = delivery_cannon.auto_select_targets
    return tags
  end
end

function DeliveryCannon.deserialize(entity, tags)
  local delivery_cannon = DeliveryCannon.from_entity(entity)

  if delivery_cannon then
    if tags.destination then
      local destination_zone = Zone.from_name(tags.destination.zone_name)
      local coordinates = table.deepcopy(tags.destination.coordinate)

      DeliveryCannon.set_target(delivery_cannon, entity.last_user, destination_zone, coordinates)
    end
    delivery_cannon.is_off = tags.is_off
    delivery_cannon.auto_select_targets = tags.auto_select_targets
  end
end

--- Handles the player creating a blueprint by setting tags to store the state of delivery cannons
---@param event any
function DeliveryCannon.on_player_setup_blueprint(event)
  util.setup_blueprint(event, {DeliveryCannon.variants["logistic"].name, DeliveryCannon.variants["weapon"].name}, DeliveryCannon.serialize)
end
Event.addListener(defines.events.on_player_setup_blueprint, DeliveryCannon.on_player_setup_blueprint)

--- Handles the player copy/pasting settings between delivery cannons
---@param event any
function DeliveryCannon.on_entity_settings_pasted(event)
  util.settings_pasted(event, {DeliveryCannon.variants["logistic"].name, DeliveryCannon.variants["weapon"].name}, DeliveryCannon.serialize, DeliveryCannon.deserialize,
    function(entity, player_index)
      local delivery_cannon = DeliveryCannon.from_entity(entity)
      local player = game.players[player_index]
      if delivery_cannon and delivery_cannon.destination and delivery_cannon.destination.coordinate then
        player.print({"space-exploration.delivery-cannon-coordinates-pasted", math.floor(delivery_cannon.destination.coordinate.x), math.floor(delivery_cannon.destination.coordinate.y)})
      end
    end)
end
Event.addListener(defines.events.on_entity_settings_pasted, DeliveryCannon.on_entity_settings_pasted)

function DeliveryCannon.on_init(event)
    ---Table of all delivery cannons, indexed by `unit_number` property
    ---@type table<uint, DeliveryCannonInfo>
    global.delivery_cannons = {}
end
Event.addListener("on_init", DeliveryCannon.on_init, true)

return DeliveryCannon
