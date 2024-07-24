local Migrate = {}

local dont_lock_techs = {
  mod_prefix.."naquium-cube",
  mod_prefix.."naquium-tessaract",
  mod_prefix.."naquium-processor",
  mod_prefix.."space-accumulator-2",
  mod_prefix.."wide-beacon-2",
  mod_prefix.."antimatter-production",
  mod_prefix.."antimatter-reactor",
  mod_prefix.."space-solar-panel-3",
  mod_prefix.. "space-probe",
  mod_prefix.. "dimensional-anchor",
  mod_prefix.. "long-range-star-mapping",
  mod_prefix.. "factory-spaceship-1",
  mod_prefix.. "factory-spaceship-2",
  mod_prefix.. "factory-spaceship-3",
  mod_prefix.. "factory-spaceship-4",
  mod_prefix.. "factory-spaceship-5",
  mod_prefix.. "lifesupport-equipment-4",
  mod_prefix.. "bioscrubber",
  "energy-shield-mk6-equipment",
  mod_prefix.. "spaceship-victory",
  mod_prefix.. "antimatter-engine",
}
Migrate.dont_lock_techs = {}
for _, tech in pairs(dont_lock_techs) do
  Migrate.dont_lock_techs[tech] = tech
end

function Migrate.migrations()
  if not global.version then global.version = 0 end

  if global.version < version then
    if global.version < 000138 then Migrate.v0_1_38() end
    if global.version < 0001065 then Migrate.v0_1_65() end
    if global.version < 0001086 then Migrate.v0_1_86() end
    if global.version < 0001089 then Migrate.v0_1_89() end
    if global.version < 0001096 then Migrate.v0_1_96() end
    if global.version < 0001101 then Migrate.v0_1_101() end
    if global.version < 0001126 then Migrate.v0_1_126() end
    if global.version < 0001130 then Migrate.v0_1_130() end
    if global.version < 0003001 then Migrate.v0_3_1() end
    if global.version < 0003011 then Migrate.v0_3_11() end
    if global.version < 0003039 then Migrate.v0_3_39() end
    if global.version < 0003040 then global.delivery_cannons = {} end
    if global.version < 0003054 then Migrate.v0_3_54() end
    if global.version < 0003059 then Migrate.v0_3_59() end
    if global.version < 0003061 then Migrate.v0_3_61() end
    if global.version < 0003069 then Migrate.v0_3_69() end
    if global.version < 0003071 then Migrate.v0_3_71() end
    if global.version < 0003088 then Migrate.v0_3_88() end
    if global.version < 0003099 then Migrate.v0_3_99() end
    if global.version < 0003112 then Migrate.v0_3_112() end
    if global.version < 0003135 then Migrate.v0_3_135() end
    if global.version < 0004002 then Migrate.v0_4_002() end
    if global.version < 0004007 then Migrate.v0_4_007() end
    if global.version < 0004030 then Migrate.v0_4_030() end
    if global.version < 0004039 then Migrate.v0_4_039() end
    if global.version < 0004044 then Migrate.v0_4_044() end
    if global.version < 0005001 then Migrate.v0_5_001() end
    if global.version < 0005039 then Migrate.v0_5_039() end
    if global.version < 0005045 then Migrate.v0_5_045() end
    if global.version < 0005050 then Migrate.v0_5_050() end
    if global.version < 0005053 then Migrate.v0_5_053() end
    if global.version < 0005056 then Migrate.v0_5_056() end
    if global.version < 0005060 then Migrate.v0_5_060() end
    if global.version < 0005064 then Migrate.v0_5_064() end
    if global.version < 0005073 then Migrate.v0_5_073() end
    if global.version < 0005094 then Migrate.v0_5_094() end
    if global.version < 0005095 then Migrate.v0_5_095() end
    if global.version < 0005101 then Migrate.v0_5_101() end
    if global.version < 0005104 then Migrate.v0_5_104() end
    if global.version < 0005106 then Migrate.v0_5_106() end
    if global.version < 0005113 then Migrate.v0_5_113() end
    if global.version < 0005114 then Migrate.v0_5_114() end
    if global.version < 0005115 then Migrate.v0_5_115() end
  end

  if not global.universe_scale then
    global.universe_scale =  math.sqrt(#global.universe.stars + #global.universe.space_zones) * Universe.stellar_average_separation
    Universe.separate_stellar_position()
    for _, zone in pairs(global.zone_index) do
      if zone.type == "planet" then
        Universe.planet_gravity_well_distribute(zone)
      end
    end
  end

  -- general cleaning
  for _, zone in pairs(global.zone_index) do
    if zone.is_homeworld or zone.name == "Nauvis" then
      zone.tags = nil
    end
    if zone.tags then
      if zone.tags.moisture and zone.tags.moisture == "moisture_very_low" then
        -- was incorrect in universe.raw, if surface is genrated it is incorrect but don't change the terrain if already settled
        zone.tags.moisture = "moisture_low"
        Zone.delete_surface(zone) -- remove if unsettled
        log("Changed moisture tag from moisture_very_low to moisture_low.")
      end
    end
    Zone.set_solar_and_daytime(zone)
  end

  for _, player in pairs(game.players) do
    if player.character and player.permission_group and player.permission_group.name == RemoteView.name_permission_group then
      player.permission_group = nil
    end
  end

  for _, name in pairs({"se-remote-view", "se-remote-view_satellite"}) do
    local group = game.permissions.get_group(name)
    if group then group.destroy() end
  end

  setup_util_forces()

  Migrate.fill_tech_gaps()

  Ancient.update_unlocks()

  global.version = version
end

function Migrate.fill_tech_gaps()
  local tech_children = {}
  for _, technology in pairs(game.technology_prototypes) do
    for _, prerequisite in pairs(technology.prerequisites) do
      tech_children[prerequisite.name] = tech_children[prerequisite.name] or {}
      table.insert(tech_children[prerequisite.name], technology.name)
    end
  end

  --first pass
  for _, force in pairs(game.forces) do
    if force.name ~= "enemy"
      and force.name ~= "neutral"
      and force.name ~= "capture"
      and force.name ~= "ignore"
      and force.name ~= "friendly" then
        if force.technologies[mod_prefix.."deep-space-science-pack-1"].researched then
          force.technologies[mod_prefix.."deep-catalogue-1"].researched = true
        end
        local techs_done = {}
        local rocket_science = force.technologies[mod_prefix.."rocket-science-pack"]
        Migrate.fill_tech_gaps_rec(tech_children, techs_done, rocket_science, false)
    end
  end
end

function Migrate.fill_tech_gaps_rec(tech_children, techs_done, tech, lock)
  local change = false
  if not(tech.researched or tech.level > 1) then
    if not Migrate.dont_lock_techs[tech.name] then
      lock = true
    end
  end
  if lock then
    if tech.researched then
      change = true
    end
    if not Migrate.dont_lock_techs[tech.name] then
      tech.researched = false
    end
  end
  if tech_children[tech.name] and (change or not techs_done[tech.name]) then
    for _, child_name in pairs(tech_children[tech.name]) do
      Migrate.fill_tech_gaps_rec(tech_children, techs_done, tech.force.technologies[child_name], lock)
    end
  end
  techs_done[tech.name] = true
end

function Migrate.v0_1_38_zone(zone)
  zone.core_miners = nil
  local surface = Zone.get_make_surface(zone)
  for _, miner in pairs(surface.find_entities_filtered{name = mod_prefix.."core-miner"}) do
    Coreminer.on_entity_created({entity = miner})
  end
end

function Migrate.v0_1_38 ()
  if global.universe then

    for _, star in pairs(global.universe.stars) do
      for _, planet in pairs(star.children) do
        if planet.core_miners then
          Migrate.v0_1_38_zone(planet)
        end
        if planet.children then -- could be an asteroid-belt
          for _, moon in pairs(planet.children) do
            if moon.core_miners then
              Migrate.v0_1_38_zone(moon)
            end
          end
        end
      end
    end
  end

end

function Migrate.v0_1_65 ()
  if global.universe then
    for _, zone in pairs(global.zone_index) do
      if zone.controls and zone.controls["enemy"] then
        zone.controls["enemy-base"] = zone.controls["enemy"]
        zone.controls["enemy"] = nil
        if zone.name ~= "Nauvis" then
          local surface = Zone.get_surface(zone)
          if surface then
            local map_gen_settings = surface.map_gen_settings
            map_gen_settings.autoplace_controls["enemy-base"].size = zone.controls["enemy-base"].size
            map_gen_settings.autoplace_controls["enemy-base"].frequency = zone.controls["enemy-base"].frequency
            surface.map_gen_settings = map_gen_settings
            if zone.controls["enemy-base"].size == 0  then
              local enemies = surface.find_entities_filtered{force={"enemy"}}
              for _, enemy in pairs(enemies) do
                enemy.destroy()
              end
            end
          end
        end
      end
    end
  end

end

function Migrate.v0_1_86()
  if global.universe then
    for _, zone in pairs(global.zone_index) do
      if Zone.is_solid(zone) then
        -- nauvis is 25000
        if zone.inflated and not zone.ticks_per_day then
          zone.ticks_per_day = 25000 -- nauvis
          if zone.name ~= "Nauvis" then
            if math.random() < 0.5 then
              zone.ticks_per_day = 60*60 + math.random(60*60*59) -- 1 - 60 minutes
            else
              zone.ticks_per_day = 60*60 + math.random(60*60*19) -- 1 - 20 minutes
            end
            local surface = Zone.get_surface(zone)
            if surface then
              surface.ticks_per_day = zone.ticks_per_day
            end
          end
        end
      end
    end
  end
end

function Migrate.v0_1_89()
  --global.rocket_landing_pads = global.rocket_landing_pads or {}
  for _, struct in pairs(global.rocket_landing_pads) do
    Landingpad.rename(struct, struct.name)
  end
end

function Migrate.v0_1_96()
  if global.universe then
    for _, zone in pairs(global.zone_index) do
      if Zone.is_space(zone) then
        local surface = Zone.get_surface(zone)
        if surface then
          local entities = surface.find_entities_filtered{type="offshore-pump"}
          for _, entity in pairs(entities) do
            entity.destroy()
          end
        end
      end
    end
  end
end

function Migrate.v0_1_101()
  if global.meteor_zones then
    for _, zone in pairs(global.meteor_zones) do
      if zone.meteor_defences then
        for _, defence in pairs(zone.meteor_defences) do
          if defence.charger and defence.charger.valid then
            defence.container = defence.charger.surface.find_entity(Meteor.name_meteor_defence_container, defence.charger.position)
            if defence.container then
              defence.container.active = false
              defence.container.insert({name=Meteor.name_meteor_defence_ammo, count=10})
            end
          end
        end
      end
      if zone.meteor_point_defences then
        for _, defence in pairs(zone.meteor_point_defences) do
          if defence.charger and defence.charger.valid then
            defence.container = defence.charger.surface.find_entity(Meteor.name_meteor_point_defence_container, defence.charger.position)
            if defence.container then
              defence.container.active = false
              defence.container.insert({name=Meteor.name_meteor_point_defence_ammo, count=20})
            end
          end
        end
      end
    end
  end
end

function Migrate.v0_1_126()
  for _, surface in pairs(game.surfaces) do
    local zone = Zone.from_surface(surface)
    if zone then
      if zone.type == "spaceship" then
        local map_gen_settings = surface.map_gen_settings
        map_gen_settings.autoplace_settings={
          ["decorative"]={
            treat_missing_as_default=false,
            settings={
            }
          },
          ["entity"]={
            treat_missing_as_default=false,
            settings={
            }
          },
          ["tile"]={
            treat_missing_as_default=false,
            settings={
              ["se-space"]={}
            }
          }
        }
        surface.map_gen_settings = map_gen_settings
      elseif Zone.is_space(zone) then
        local map_gen_settings = surface.map_gen_settings
        map_gen_settings.autoplace_settings={
          ["decorative"]={
            treat_missing_as_default=false,
            settings={
              ["se-crater3-huge"] ={},
              ["se-crater1-large-rare"] ={},
              ["se-crater1-large"] ={},
              ["se-crater2-medium"] ={},
              ["se-crater4-small"] ={},
              ["se-sand-decal-space"] ={},
              ["se-stone-decal-space"] ={},
              ["se-rock-medium-asteroid"] ={},
              ["se-rock-small-asteroid"] ={},
              ["se-rock-tiny-asteroid"] ={},
              ["se-sand-rock-medium-asteroid"] ={},
              ["se-sand-rock-small-asteroid"] ={}
            }
          },
          --[[["entity"]={
            treat_missing_as_default=false,
            settings={
              ["se-rock-huge-asteroid"] ={},
              ["se-rock-big-asteroid"] ={},
              ["se-sand-rock-big-asteroid"] ={},
              ["se-rock-huge-space"] ={},
              ["se-rock-big-space"] ={},
            }
          },]]--
          ["tile"]={
            treat_missing_as_default=false,
            settings={
              ["se-asteroid"]={},
              ["se-space"]={}
            }
          },
        }
        surface.map_gen_settings = map_gen_settings
      else
        local map_gen_settings = surface.map_gen_settings
        local penalty = -100000
        map_gen_settings.property_expression_names["decorative:se-crater3-huge:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-crater1-large-rare:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-crater1-large:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-crater2-medium:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-crater4-small:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-sand-decal-space:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-stone-decal-space:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-rock-medium-asteroid:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-rock-small-asteroid:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-rock-tiny-asteroid:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-sand-rock-medium-asteroid:probability"] = penalty
        map_gen_settings.property_expression_names["decorative:se-sand-rock-small-asteroid:probability"] = penalty

        map_gen_settings.property_expression_names["entity:se-rock-huge-asteroid:probability"] = penalty
        map_gen_settings.property_expression_names["entity:se-rock-big-asteroid:probability"] = penalty
        map_gen_settings.property_expression_names["entity:se-sand-rock-big-asteroid:probability"] = penalty
        map_gen_settings.property_expression_names["entity:se-rock-huge-space:probability"] = penalty
        map_gen_settings.property_expression_names["entity:se-rock-big-space:probability"] = penalty

        map_gen_settings.property_expression_names["tile:se-asteroid:probability"] = penalty
        map_gen_settings.property_expression_names["tile:se-space:probability"] = penalty
        surface.map_gen_settings = map_gen_settings
      end
    end
  end
end

function Migrate.v0_1_130()
  for _, surface in pairs(game.surfaces) do
    local zone = Zone.from_surface(surface)
    if zone and zone.type == "orbit" and zone.parent and zone.parent.type == "star" then
      surface.daytime = 0 -- that's why we're here
    end
  end
end

function Migrate.v0_3_1()
  setup_util_forces()

  for _, surface in pairs(game.surfaces) do
    surface.solar_power_multiplier = surface.solar_power_multiplier / 2
  end

  for _, zone in pairs(global.zone_index) do
    zone.inflated = nil
    if zone.name == "Nauvis" then
      zone.is_homeworld = true
    end
    if zone.resources and zone.resources[1] then
      zone.primary_resource = zone.resources[1]
      zone.resources = nil
    end
    if zone.surface_index then
      Zone.delete_surface(zone) -- only works on valid ones
    end
    Universe.inflate_climate_controls(zone)
    Zone.set_solar_and_daytime(zone)
  end
  Zone.rebuild_surface_index()

  -- assign glyps and vaults
  for force_name, forcedata in pairs(global.forces) do
    forcedata.zone_priorities = forcedata.zone_priorities or {}
    for _, zone in pairs(global.zone_index) do
      if zone.is_homeworld then
        forcedata.zone_priorities[zone.index] = forcedata.zone_priorities[zone.index] or 1
      end
    end

    local delay = 100
    for zone_index, discovery_data in pairs(forcedata.zones_discovered) do
      local zone = Zone.from_zone_index(zone_index)
      if zone.type == "planet" then
        --delay = delay + 10
        Ancient.assign_zone_next_glyph(zone)

        if zone.glyph then
          if not forcedata.first_discovered_vault then
            forcedata.first_discovered_vault = zone
          end
          Ancient.make_vault_exterior(zone)
          --local tick_task = new_tick_task("force-message")
          --tick_task.force_name = force_name
          --tick_task.message = {"space-exploration.discovered-glyph-vault", zone.name}
          --tick_task.delay_until = game.tick + delay --5s
        end
      end
    end
  end

  local anomaly = global.universe.anomaly
  if anomaly.surface_index then
    local surface = game.surfaces[anomaly.surface_index]
    Ancient.make_gate(Ancient.gate_default_position)
    Ruin.build({ruin_name = "galaxy-ship", surface_index = surface.index,  position = Ancient.galaxy_ship_default_position})

    for force_name, forcedata in pairs(global.forces) do
      local tick_task = new_tick_task("force-message")
      tick_task.force_name = force_name
      tick_task.message = {"space-exploration.discovered-anomaly-additional"}
      tick_task.delay_until = game.tick + 750 --5s
    end
  end

  for _, player in pairs(game.connected_players) do
    local character = player_get_character(player)
    if character then
      if character.force.technologies[mod_prefix .. "lifesupport-facility"].researched == true then
        character.insert({name = Lifesupport.lifesupport_canisters[1].name, count = 20})
      end
    end
  end
end

function Migrate.v0_3_11()
  if global.glyph_vaults then
    for _, g in pairs(global.glyph_vaults) do
      for _, z in pairs(g) do
        if z.surface_index and game.surfaces[z.surface_index] then
          game.delete_surface(z.surface_index)
          z.surface_index = nil
        end
      end
    end
  end
end

function Migrate.v0_3_39()
  local homeworlds = {}
  for _, zone in pairs(global.zone_index) do
    if zone.is_homeworld or zone.name == "Nauvis" then
      table.insert(homeworlds, zone)
    end
  end
  for _, homeworld in pairs(homeworlds) do
    Universe.make_validate_homesystem(homeworld)
  end
  global.resources_and_controls_compare_string = nil -- force udpate resources
end



function Migrate.v0_3_54()

  if global.spaceships then
    for _, surface in pairs(game.surfaces) do
      for _, entity in pairs(surface.find_entities_filtered{name = Spaceship.name_spaceship_console}) do
        local new_pos = {x = math.floor(entity.position.x), y = math.floor(entity.position.y)}
        local output = surface.find_entity(Spaceship.name_spaceship_console_output, entity.position)
        entity.teleport(new_pos)
        if output then output.destroy() end
        script.raise_event(defines.events.script_raised_built, {entity = entity})
      end
    end
  end

end

function Migrate.v0_3_59()

  for _, star in pairs(global.universe.stars) do
    for _, child in pairs(star.children) do
      child.parent = star
    end
    Universe.star_gravity_well_distribute(star)
  end

  for _, zone in pairs(global.zone_index) do
    Zone.set_solar_and_daytime(zone)
  end

end

function Migrate.v0_3_61()

  for _, zone in pairs(global.zone_index) do
    if Zone.is_solid(zone) and zone.tags then
      if not zone.tags.cliff then
        zone.tags.cliff = Universe.cliff_tags[math.random(#Universe.cliff_tags)]
        if zone.controls then
          local cliff_controls = Universe.apply_control_tags({}, {zone.tags.cliff})
          for _, control in pairs(cliff_controls) do
            zone.controls[_] = control
          end
        end
      end
    end
  end

end

function Migrate.v0_3_69()

  for _, surface in pairs(game.surfaces) do
    -- make sure there are no test items left in the ruin.
    for _, entity in pairs(surface.find_entities_filtered{type="infinity-pipe"}) do
      entity.destroy()
    end
    for _, entity in pairs(surface.find_entities_filtered{type="infinity-chest"}) do
      entity.destroy()
    end
    for _, entity in pairs(surface.find_entities_filtered{name="electric-energy-interface"}) do
      entity.destroy()
    end
  end

end

function Migrate.v0_3_71()

  for _, zone in pairs(global.zone_index) do
    if zone.glyph and zone.vault_pyramid then
      if zone.vault_pyramid.valid then
        zone.vault_pyramid_position = zone.vault_pyramid.position
      end
    end
  end

end

function Migrate.v0_3_88()
  if global.gtt then
    global.gtt[#global.gtt-3] = #global.gtt - 14
  end
end

function Migrate.v0_3_99()
  if not global.vgo then return end
  local r = 0
  for i, j in pairs(global.vgo) do
    if i > 40 and (Ancient.gtf(j) == 36 or Ancient.gtf(j) == 37) then
      r = r + 1
    end
  end
  if r > 0 then
    global.hcoord_old = global.hcoord
    global.gds_old = global.gds
    global.vgo_old = global.vgo
    global.gco_old = global.gco

    global.hcoord = nil
    Ancient.cryptf6()
    log("Migrate.v0_3_99")
    global.v0_3_99_fix = true
    for force_name, force_data in pairs(global.forces) do
      if force_data.coordinates_discovered then
        force_data.coordinates_discovered_old = force_data.coordinates_discovered
        local k = table_size(force_data.coordinates_discovered)
        force_data.coordinates_discovered = {}
        while k > #force_data.coordinates_discovered do
          table.insert(force_data.coordinates_discovered, global.gco[#force_data.coordinates_discovered+1])
        end
      end
    end
  end
end

function Migrate.v0_3_112()
  if global.delivery_cannons then
    for _, deliver_cannon in pairs(global.delivery_cannons) do
      deliver_cannon.variant = deliver_cannon.variant or "logistic"
    end
  end
end

function Migrate.v0_3_135()
  for _, player in pairs(game.players) do
    local forcedata = global.forces[player.force.name]
    forcedata.has_players = true
  end
  if game.active_mods["Krastorio2"] then
    for _, surface in pairs(game.surfaces) do
      local zone = Zone.from_surface(surface)
      if zone and zone.tags and util.table_contains(zone.tags, "water_none") then
        local entities = surface.find_entities_filtered{name = "kr-atmospheric-condenser"}
        for _, entity in pairs(entities) do
          entity.destroy()
        end
      end
    end
  end
end


function Migrate.v0_4_002()
  if global.spaceships then
    local force_max_integrity = {}
    for _, spaceship in pairs(global.spaceships) do
      if spaceship.integrity_valid and spaceship.integrity_stress and spaceship.integrity_stress > 1000 and spaceship.max_speed and spaceship.max_speed > 10 then
        local factory_level = math.ceil(spaceship.integrity_stress/500) - 2
        local force = game.forces[spaceship.force_name]
        if force and factory_level > 1 then
          force.technologies[mod_prefix.."factory-spaceship-2"].researched = true
          if factory_level > 2 then
            force.technologies[mod_prefix.."factory-spaceship-3"].researched = true
          end
          if factory_level > 3 then
            force.technologies[mod_prefix.."factory-spaceship-4"].researched = true
          end
          if factory_level > 4 then
            force.technologies[mod_prefix.."factory-spaceship-5"].level = factory_level
          end
        end
      end
    end
  end
end

function Migrate.v0_4_007()
  if global.spaceships and type(global.spaceships) == "table" then
    for _, spaceship in pairs(global.spaceships) do
      if spaceship.stellar_position then
        local closest_stellar_object = Zone.find_nearest_stellar_object(spaceship.stellar_position)
        if closest_stellar_object and util.vectors_delta_length(spaceship.stellar_position, closest_stellar_object.stellar_position) == 0 then
          spaceship.near_stellar_object = closest_stellar_object
        end
      end
    end
  end
end

function Migrate.v0_4_030()
  Log.debug_log("Migrate.v0_4_030")
  local zone_indexes = {}
  for _, force in pairs(global.forces) do
    if force.zones_discovered then
      for index, data in pairs(force.zones_discovered) do
        zone_indexes[index] = 1
        Log.debug_log("zone_index "..index)
      end
    end
  end
  for index, n in pairs(zone_indexes) do
    local zone = Zone.from_zone_index(index)
    if zone then
      Ruin.zone_assign_unique_ruins(zone)
    end
  end
end

function Migrate.v0_4_039()
  local function remove_interior_tiles(zone)
    if not zone.ruins then
      local surface = Zone.get_surface(zone)
      if surface then
        -- remove space tiles
        local tiles = surface.find_tiles_filtered{ name = {"interior-divider"}}
        local set_tiles = {}
        for _, tile in pairs(tiles) do
          table.insert(set_tiles, {name = "nuclear-ground", position = tile.position})
          surface.set_hidden_tile(tile.position, nil)
        end

        if #set_tiles > 0 then
          surface.set_tiles(
            set_tiles,
            true, -- corect tiles
            true, -- remove_colliding_entities
            true, -- remove_colliding_decoratives
            true -- raise_event
          )
        end
        log("Migrate.v0_4_039 remove_interior_tiles: " .. zone.type.." " ..zone.name.." is_land "..#set_tiles.." tiles changed surface_index "..surface.index.." surface_name " .. surface.name)
      end
    end
  end
  for _, zone in pairs(global.zone_index) do
    remove_interior_tiles(zone)
  end
end

function Migrate.v0_4_044()
  if global.spaceships then
    for _, spaceship in pairs(global.spaceships) do
      spaceship.engines = nil
      if spaceship.own_surface_index then
        Spaceship.find_own_surface_engines(spaceship)
      end
    end
  end
end

function Migrate.v0_5_001()
  for _, player in pairs(game.connected_players) do
    update_overhead_buttons(player)
  end
end

function Migrate.v0_5_039()
  for _, force in pairs(game.forces) do
    if force.technologies[mod_prefix .. "space-supercomputer-1"].researched then
      force.print({"space-exploration.migration-recipe-changed", {"recipe-name."..mod_prefix .. "formatting-1"}})
    end
    if force.technologies[mod_prefix .. "space-supercomputer-2"].researched then
      force.print({"space-exploration.migration-recipe-changed", {"recipe-name."..mod_prefix .. "formatting-2"}})
    end
  end
end

function Migrate.v0_5_045()
  for _, force in pairs(game.forces) do
    if force.technologies[mod_prefix .. "spaceship"].researched then
      force.print({"space-exploration.migration-recipe-changed", {"recipe-name."..mod_prefix .. "spaceship-floor"}})
    end
  end
end

function Migrate.v0_5_050()
  for _, player in pairs(game.players) do
    RemoteView.make_history_valid(player)
  end
end

function Migrate.v0_5_053()
  -- destroy any open GUIs for zonelist in center since now its in screen
  -- and we won't listen for the close event properly in center
  for _, player in pairs(game.players) do
    if player and player.gui and player.gui.center then
      local zonelist_gui = player.gui.center[Zonelist.name_gui_root]
      if zonelist_gui then
        zonelist_gui.destroy()
      end
    end
  end
  -- destroy any open GUIs for delivery cannon since we no longer
  -- listen to the close window button in that place
  for _, player in pairs(game.players) do
    if player.gui.left[DeliveryCannonGUI.name_delivery_cannon_gui_root] then
      player.gui.left[DeliveryCannonGUI.name_delivery_cannon_gui_root].destroy()
    end
  end
  -- destroy any open GUIS for landing pads since we no longer
  -- listen to the close window button in that place
  for _, player in pairs(game.players) do
    if player.gui.left[LandingpadGUI.name_rocket_landing_pad_gui_root] then
      player.gui.left[LandingpadGUI.name_rocket_landing_pad_gui_root].destroy()
    end
  end
end

function Migrate.v0_5_056()
  -- destroy any open GUIS for launchpads since we no longer
  -- listen to the close window button in that place
  for _, player in pairs(game.players) do
    if player.gui.left[LaunchpadGUI.name_rocket_launch_pad_gui_root] then
      player.gui.left[LaunchpadGUI.name_rocket_launch_pad_gui_root].destroy()
    end
  end
  -- destroy any open GUIS for landing pads since we no longer
  -- listen to the close window button in that place
  for _, player in pairs(game.players) do
    if player.gui.left[EnergyBeamGUI.name_transmitter_gui_root] then
      player.gui.left[EnergyBeamGUI.name_transmitter_gui_root].destroy()
    end
  end

  -- delete the map view surface so it can be regenerated prettier
  for _, player in pairs(game.players) do
    local surface_name = MapView.get_surface_name(player)
    if game.surfaces[surface_name] then
      MapView.stop_map(player)
      game.delete_surface(surface_name)
    end
  end
end

function Migrate.v0_5_060()
  for _, player in pairs(game.connected_players) do
    if player.gui and player.gui.screen and player.gui.screen[SpaceshipGUI.name_spaceship_gui_root] then
      player.gui.screen[SpaceshipGUI.name_spaceship_gui_root].destroy()
    end
  end

  -- make it so existing maps have the toggle for showing danger zones
  for _, player in pairs(game.players) do
    local settings = MapView.get_make_settings(player)
    if settings then
      settings.show_danger_zones = true
    end
  end

  -- close old spaceship UIs
  for _, player in pairs(game.players) do
    SpaceshipGUI.gui_close(player)
  end

  global.spaceship_clamps = {}
  global.spaceship_clamps_by_surface = {}
  -- migrate the clamps to have the internal power poles for passthrough
  for _, surface in pairs(game.surfaces) do
    local clamps = surface.find_entities_filtered{name=SpaceshipClamp.name_spaceship_clamp_keep}
    for _, clamp in pairs(clamps) do
      local position = table.deepcopy(clamp.position)
      local direction = table.deepcopy(clamp.direction)
      local force = clamp.force
      local clamp_comb = clamp.get_or_create_control_behavior()
      local clamp_signal = clamp_comb.get_signal(1)
      clamp.destroy{
        raise_destroy=true
      }
      local migrated_clamp = surface.create_entity{
        name=SpaceshipClamp.name_spaceship_clamp_keep,
        position=position,
        direction=direction,
        force=force,
        raise_built=true
      }
      if migrated_clamp then
        migrated_clamp.rotatable = false
        local migrated_comb = migrated_clamp.get_or_create_control_behavior()
        if clamp_signal and migrated_comb and migrated_comb.valid then
          migrated_comb.set_signal(1, clamp_signal)
        end
        SpaceshipClamp.validate_clamp_signal(migrated_clamp)
      end
    end
  end

  -- clear engines becusae old efficiency calculation will be too high
  -- and engines are more powerful now.
  for _, spaceship in pairs(global.spaceships) do
    spaceship.engines = nil
    Spaceship.start_integrity_check(spaceship)
  end
  for _, delivery_cannon in pairs(global.delivery_cannons) do
    DeliveryCannon.add_delivery_cannon_to_table(delivery_cannon) -- assigns to zone_assets
  end

  for _, force in pairs(game.forces) do
    if force.technologies[mod_prefix .. "spaceship"].researched then
      force.print({"space-exploration.migrate_0_5_056"})
    end
  end
end

function Migrate.v0_5_064()
  -- The tooltip for the starmap button changed.
  for _, player in pairs(game.players) do
    MapView.update_overhead_button(player.index)
  end
end

function Migrate.v0_5_073()
  game.print({"space-exploration.migrate_0_5_073"})
  Universe.update_zones_minimum_threat(false)
end

function Migrate.v0_5_094()
  Zone.fix_out_of_map_tiles()
end

function Migrate.v0_5_095()
  -- This was previously being done as part of Universe Explorer gui update logic
  Universe.set_hierarchy_values()

  -- Run for _all_ players, including disconnected ones
  for _, player in pairs(game.players) do
    if player.gui.screen[Zonelist.name_gui_root] then
      -- Zonelist.gui_close ignores disconnected players
      player.gui.screen[Zonelist.name_gui_root].destroy()
      Zonelist.gui_open(player.index)
    end
  end
end

function Migrate.v0_5_101()
  Krastorio2.disable_spaceship_victory_tech_on_migrate()
end

---The "charger" entities are being changed to electric-turrets from EEIs. The game will swap the
---old entities out for the new ones, though Lua references to the previous EEI chargers will
---become invalid. `defence.charger` needs to be updated to point to the new charger LuaEntity.
---This function will also populate the newly created `meteor_defences` and
---`meteor_point_defences` saved to `global` and clean up some old or invalid launchpad entities.
function Migrate.v0_5_104()
  -- Clean up launch old or invalid launchpad entities
  for _, launch_pad in pairs(global.rocket_launch_pads) do
    if launch_pad.rocket_entity and not launch_pad.rocket_entity.valid then
      launch_pad.rocket_entity = nil
    end
    if launch_pad.settings then launch_pad.settings = nil end
  end

  for _, landing_pad in pairs(global.rocket_landing_pads) do
    if landing_pad.settings then landing_pad.settings = nil end
  end

  -- Ensure a global table for meteor zones exists
  if not global.meteor_zones then
    local nauvis = Zone.from_name("Nauvis")
    global.meteor_zones = {[nauvis.index]=nauvis}
  end

  -- Create a meteor schedule table and populate it
  global.meteor_schedule = {}
  for _, zone in pairs(global.meteor_zones) do
    local target = (zone.type == "orbit" and Zone.is_solid(zone.parent)) and zone.parent or zone
    Meteor.schedule_meteor_shower{zone=target, tick=(zone.next_meteor_shower or game.tick+3600)}
  end

  global.meteor_defences = {}
  global.meteor_point_defences = {}

  local gl_charger_name = Meteor.name_meteor_defence_charger
  local pt_charger_name = Meteor.name_meteor_point_defence_charger
  local pt_charger_overcharged_name = Meteor.name_meteor_point_defence_charger_overcharged
  local charger_unit_numbers = {}

  for _, zone in pairs(global.zone_index) do
    -- Collect meteor defenses
    for index, defence in pairs(zone.meteor_defences or {}) do
      if defence.container and defence.container.valid then
        -- Try to find the colocated charger
        defence.charger = defence.container.surface.find_entity(gl_charger_name, defence.container.position)

        if defence.charger then
          defence.zone = zone
          defence.type = "global"
          charger_unit_numbers[defence.charger.unit_number] = true
          table.insert(global.meteor_defences, defence)
        else
          -- Charger not found; destroy container, and remove table reference from zone
          defence.container.destroy()
          zone.meteor_defences[index] = nil
        end
      else
        -- If container is invalid, remove this table reference from zone.
        zone.meteor_defences[index] = nil
      end
    end

    -- Collect meteor point defenses
    for index, defence in pairs(zone.meteor_point_defences or {}) do
      if defence.container and defence.container.valid then
        local position = defence.container.position
        -- Try to find the colocated charger
        defence.charger =
          defence.container.surface.find_entity(pt_charger_name, position) or
          defence.container.surface.find_entity(pt_charger_overcharged_name, position)

        if defence.charger then
          -- Do this for the charger to render on top
          defence.container.teleport(defence.container.position)
          defence.zone = zone
          defence.type = "point"
          defence.mode = (defence.charger.name == pt_charger_overcharged_name) and "fast" or "normal"
          charger_unit_numbers[defence.charger.unit_number] = true
          table.insert(global.meteor_point_defences, defence)
        else
          -- Charger not found; destroy container and remove table reference from zone
          defence.container.destroy()
          zone.meteor_point_defences[index] = nil
        end
      else
        -- If container is invalid, remove this table reference from zone.
        zone.meteor_point_defences[index] = nil
      end

      -- Delete the extra overlay tint used for overcharge since it's not working
      if defence.extra_overlay_id and rendering.is_valid(defence.extra_overlay_id) then
        rendering.destroy(defence.extra_overlay_id)
      end
      defence.extra_overlay_id = nil
    end
  end

  -- Destroy any orphaned or duplicate charger entities
  for _, zone in pairs(global.meteor_zones) do
    local surface = Zone.get_surface(zone)
    if surface then
      local chargers = surface.find_entities_filtered{
        name={gl_charger_name, pt_charger_name, pt_charger_overcharged_name}}

      for _, charger in pairs(chargers) do
        if not charger_unit_numbers[charger.unit_number] then
          charger.destroy()
        end
      end
    end
  end

  -- Destroy any MPD range circles leftover from 0.1.x
  for _, playerdata in pairs(global.playerdata) do
    if playerdata.meteor_point_defence_radius and rendering.is_valid(playerdata.meteor_point_defence_radius) then
      rendering.destroy(playerdata.meteor_point_defence_radius)
      playerdata.meteor_point_defence_radius = nil
    end
  end

  -- Hide clouds on space surfaces (excluding spaceships)
  for _, surface in pairs(game.surfaces) do
    local zone = Zone.from_surface(surface)
    if zone and Zone.is_space(zone) and zone.type ~= "spaceship" then
      surface.show_clouds = false
    end
  end
end

-- Revalidate meteor defense entities.
function Migrate.v0_5_106()
  -- Validate meteor defences
  for _, zone in pairs(global.zone_index) do
    for unit_number, def in pairs(zone.meteor_defences or {}) do
      if not def.container.valid or not def.charger.valid then
        if def.container.valid then def.container.destroy() end
        if def.charger.valid then def.charger.destroy() end

        -- Delete defence table from global array
        local idx = Meteor.get_any_defence_index(unit_number, "global")
        if idx then table.remove(global.meteor_defences, idx) end

        -- Delete defense table from zone's meteor defences table
        zone.meteor_defences[unit_number] = nil
      end
    end

    -- Validate meteor point defences
    for unit_number, def in pairs(zone.meteor_point_defences or {}) do
      if not def.container.valid or not def.charger.valid then
        if def.container.valid then def.container.destroy() end
        if def.charger.valid then def.charger.destroy() end

        -- Delete defence table from global array
        local idx = Meteor.get_any_defence_index(unit_number, "point")
        if idx then table.remove(global.meteor_point_defences, idx) end

        -- Delete defense table from zone's meteor defences table
        zone.meteor_point_defences[unit_number] = nil
      end
    end
  end
end

function Migrate.v0_5_113()
  -- Populate new bot_attrition field + Update space zones daytime from sunset to sunrise
  for _, zone in pairs(global.zone_index) do
    zone.bot_attrition = Zone.calculate_bot_attrition(zone)
    Zone.set_solar_and_daytime(zone)
  end
  for _, spaceship in pairs(global.spaceships) do
    spaceship.bot_attrition = Zone.calculate_bot_attrition(spaceship)
    Zone.set_solar_and_daytime(spaceship)
  end
end

function Migrate.v0_5_114()
  -- Some ground zones may have been daytime frozen by the previous migration
  for _, zone in pairs(global.zone_index) do
    if Zone.is_solid(zone) then
      Zone.set_solar_and_daytime(zone)
    end
  end
end

function Migrate.v0_5_115()
  -- Add hostiles_extinct flag
  for _, zone in pairs(global.zone_index) do
    if zone.controls["enemy-base"] and
       zone.controls["enemy-base"].frequency == 0 and
       zone.controls["enemy-base"].size == -1 and
       zone.controls["enemy-base"].richness == -1 and
       not zone.plague_used then
      zone.hostiles_extinct = true
    end
  end
end

return Migrate
