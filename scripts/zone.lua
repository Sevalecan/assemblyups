local Zone = {}

-- constants
Zone.solar_multiplier = 1

Zone.discovery_scan_radius = 32
Zone.clear_enemies_radius = 512

Zone.travel_cost_interstellar = 400 -- stellar position distance, roughly 50 distance between stars, can be up to 300 apart
Zone.travel_cost_star_gravity = 500 -- roughly 10-20 base for a star
Zone.travel_cost_planet_gravity = 100 -- roughly 10-20 base for a planet
Zone.travel_cost_space_distortion = Zone.travel_cost_interstellar * 25 -- based on 0-1 range

Zone.name_tech_discover_random = mod_prefix.."zone-discovery-random"
Zone.name_tech_discover_targeted = mod_prefix.."zone-discovery-targeted"
Zone.name_tech_discover_deep = mod_prefix.."zone-discovery-deep"

Zone.name_setting_dropdowns_hide_low_priority = mod_prefix.."dropdowns-hide-low-priority-zones"
Zone.name_setting_dropdowns_priority_threshold = mod_prefix.."dropdowns-priority-threshold"

-- based on alien biomes, unsure as to how to make this more dynamic
-- biome name = {tilenames}
Zone.biome_tiles = {
  ["out-of-map"] = {"out-of-map"}, -- always allowed
  ["water"] = {"water", "deepwater", "water-green", "deepwater-green", "water-shallow", "water-mud"},

  ["dirt-purple"] = {"mineral-purple-dirt-1", "mineral-purple-dirt-2", "mineral-purple-dirt-3", "mineral-purple-dirt-4", "mineral-purple-dirt-5", "mineral-purple-dirt-6"},
  ["dirt-violet"] = {"mineral-violet-dirt-1", "mineral-violet-dirt-2", "mineral-violet-dirt-3", "mineral-violet-dirt-4", "mineral-violet-dirt-5", "mineral-violet-dirt-6"},
  ["dirt-red"] = {"mineral-red-dirt-1", "mineral-red-dirt-2", "mineral-red-dirt-3", "mineral-red-dirt-4", "mineral-red-dirt-5", "mineral-red-dirt-6"},
  ["dirt-brown"] = {"mineral-brown-dirt-1", "mineral-brown-dirt-2", "mineral-brown-dirt-3", "mineral-brown-dirt-4", "mineral-brown-dirt-5", "mineral-brown-dirt-6"},
  ["dirt-tan"] = {"mineral-tan-dirt-1", "mineral-tan-dirt-2", "mineral-tan-dirt-3", "mineral-tan-dirt-4", "mineral-tan-dirt-5", "mineral-tan-dirt-6"},
  ["dirt-aubergine"] = {"mineral-aubergine-dirt-1", "mineral-aubergine-dirt-2", "mineral-aubergine-dirt-3", "mineral-aubergine-dirt-4", "mineral-aubergine-dirt-5", "mineral-aubergine-dirt-6"},
  ["dirt-dustyrose"] = {"mineral-dustyrose-dirt-1", "mineral-dustyrose-dirt-2", "mineral-dustyrose-dirt-3", "mineral-dustyrose-dirt-4", "mineral-dustyrose-dirt-5", "mineral-dustyrose-dirt-6"},
  ["dirt-beige"] = {"mineral-beige-dirt-1", "mineral-beige-dirt-2", "mineral-beige-dirt-3", "mineral-beige-dirt-4", "mineral-beige-dirt-5", "mineral-beige-dirt-6"},
  ["dirt-cream"] = {"mineral-cream-dirt-1", "mineral-cream-dirt-2", "mineral-cream-dirt-3", "mineral-cream-dirt-4", "mineral-cream-dirt-5", "mineral-cream-dirt-6"},
  ["dirt-black"] = {"mineral-black-dirt-1", "mineral-black-dirt-2", "mineral-black-dirt-3", "mineral-black-dirt-4", "mineral-black-dirt-5", "mineral-black-dirt-6"},
  ["dirt-grey"] = {"mineral-grey-dirt-1", "mineral-grey-dirt-2", "mineral-grey-dirt-3", "mineral-grey-dirt-4", "mineral-grey-dirt-5", "mineral-grey-dirt-6"},
  ["dirt-white"] = {"mineral-white-dirt-1", "mineral-white-dirt-2", "mineral-white-dirt-3", "mineral-white-dirt-4", "mineral-white-dirt-5", "mineral-white-dirt-6"},

  ["sand-purple"] = {"mineral-purple-sand-1", "mineral-purple-sand-2", "mineral-purple-sand-3"},
  ["sand-violet"] = {"mineral-violet-sand-1", "mineral-violet-sand-2", "mineral-violet-sand-3"},
  ["sand-red"] = {"mineral-red-sand-1", "mineral-red-sand-2", "mineral-red-sand-3"},
  ["sand-brown"] = {"mineral-brown-sand-1", "mineral-brown-sand-2", "mineral-brown-sand-3"},
  ["sand-tan"] = {"mineral-tan-sand-1", "mineral-tan-sand-2", "mineral-tan-sand-3"},
  ["sand-aubergine"] = {"mineral-aubergine-sand-1", "mineral-aubergine-sand-2", "mineral-aubergine-sand-3"},
  ["sand-dustyrose"] = {"mineral-dustyrose-sand-1", "mineral-dustyrose-sand-2", "mineral-dustyrose-sand-3"},
  ["sand-beige"] = {"mineral-beige-sand-1", "mineral-beige-sand-2", "mineral-beige-sand-3"},
  ["sand-cream"] = {"mineral-cream-sand-1", "mineral-cream-sand-2", "mineral-cream-sand-3"},
  ["sand-black"] = {"mineral-black-sand-1", "mineral-black-sand-2", "mineral-black-sand-3"},
  ["sand-grey"] = {"mineral-grey-sand-1", "mineral-grey-sand-2", "mineral-grey-sand-3"},
  ["sand-white"] = {"mineral-white-sand-1", "mineral-white-sand-2", "mineral-white-sand-3"},

  ["vegetation-green"] = {"vegetation-green-grass-1", "vegetation-green-grass-2", "vegetation-green-grass-3", "vegetation-green-grass-4"},
  ["vegetation-olive"] = {"vegetation-olive-grass-1", "vegetation-olive-grass-2"},
  ["vegetation-yellow"] = {"vegetation-yellow-grass-1", "vegetation-yellow-grass-2"},
  ["vegetation-orange"] = {"vegetation-orange-grass-1", "vegetation-orange-grass-2"},
  ["vegetation-red"] = {"vegetation-red-grass-1", "vegetation-red-grass-2"},
  ["vegetation-violet"] = {"vegetation-violet-grass-1", "vegetation-violet-grass-2"},
  ["vegetation-purple"] = {"vegetation-purple-grass-1", "vegetation-purple-grass-2"},
  ["vegetation-mauve"] = {"vegetation-mauve-grass-1", "vegetation-mauve-grass-2"},
  ["vegetation-blue"] = {"vegetation-blue-grass-1", "vegetation-blue-grass-2"},
  ["vegetation-turquoise"] = {"vegetation-turquoise-grass-1", "vegetation-turquoise-grass-2"},

  ["volcanic-orange"] = {"volcanic-orange-heat-1", "volcanic-orange-heat-2", "volcanic-orange-heat-3", "volcanic-orange-heat-4"},
  ["volcanic-green"] = {"volcanic-green-heat-1", "volcanic-green-heat-2", "volcanic-green-heat-3", "volcanic-green-heat-4"},
  ["volcanic-blue"] = {"volcanic-blue-heat-1", "volcanic-blue-heat-2", "volcanic-blue-heat-3", "volcanic-blue-heat-4"},
  ["volcanic-purple"] = {"volcanic-purple-heat-1", "volcanic-purple-heat-2", "volcanic-purple-heat-3", "volcanic-purple-heat-4"},

  ["frozen-snow"] = {"frozen-snow-0", "frozen-snow-1", "frozen-snow-2", "frozen-snow-3", "frozen-snow-4"},
  ["frozen-ice"] = {"frozen-snow-5", "frozen-snow-6", "frozen-snow-7", "frozen-snow-8", "frozen-snow-9"},
}
Zone.biome_collections = {
  ["all-sand"] = {"sand-purple", "sand-violet", "sand-red", "sand-brown", "sand-tan", "sand-aubergine", "sand-dustyrose", "sand-beige", "sand-cream", "sand-black", "sand-grey", "sand-white"},
  ["all-dirt"] = {"dirt-purple", "dirt-violet", "dirt-red", "dirt-brown", "dirt-tan", "dirt-aubergine", "dirt-dustyrose", "dirt-beige", "dirt-cream", "dirt-black", "dirt-grey", "dirt-white"},
  ["all-vegetation"] = {"vegetation-green", "vegetation-olive", "vegetation-yellow", "vegetation-orange", "vegetation-red",
                        "vegetation-violet", "vegetation-purple", "vegetation-mauve", "vegetation-blue", "vegetation-turquoise" },
  ["all-volcanic"] = {"volcanic-orange", "volcanic-green", "volcanic-blue", "volcanic-purple"},
  ["all-frozen"] = {"frozen-snow", "frozen-ice"},
}
Zone.signal_to_zone_type = {
  [mod_prefix.."planet"] = "planet",
  [mod_prefix.."moon"] = "moon",
  [mod_prefix.."planet-orbit"] = "orbit",
  [mod_prefix.."moon-orbit"] = "orbit",
  [mod_prefix.."star"] = "orbit",
  [mod_prefix.."asteroid-belt"] = "asteroid-belt",
  [mod_prefix.."asteroid-field"] = "asteroid-field",
  [mod_prefix.."anomaly"] = "anomaly",
}
Zone.controls_without_frequency_multiplier = {
  "trees",
  "enemy-base"
}
-- NOTE: cliff and base terrain sliders have special settings,

--[[ eg:
biome_replacements = {
  {replace={"all-dirt", "all-sand", "all-volcanic"}, with="sand-red"},
  {replace={"all-vegetation", "all-frozen"}, with="vegetation-red"}
} ]]--

---Gets the "Nauvis" zone
---@return PlanetType zone
function Zone.get_default()
  return Zone.from_name("Nauvis")
end

---Gets the homezone of a given force, given the force's name.
---@param force_name string Name of force
---@return PlanetType homeworld
function Zone.get_force_home_zone(force_name)
  if global.forces[force_name] and global.forces[force_name].homeworld_index then
    return Zone.from_zone_index(global.forces[force_name].homeworld_index)
  end
end

---Gets a LocalisedString reflecting the type of zone or spaceship given.
---@param zone AnyZoneType|SpaceshipType Zone or spaceship
---@return LocalisedString
function Zone.type_title(zone)
  if zone.type == "planet" then
    return {"space-exploration.planet"}
  elseif zone.type == "moon" then
    return {"space-exploration.moon"}
  elseif zone.type == "star" then
    return {"space-exploration.star"}
  elseif zone.type == "asteroid-field" then
    return {"space-exploration.asteroid-field"}
  elseif zone.type == "asteroid-belt" then
    return {"space-exploration.asteroid-belt"}
  elseif zone.type == "anomaly" then
    return {"space-exploration.anomaly"}
  elseif zone.type == "spaceship" then
    return {"space-exploration.spaceship"}
  elseif zone.type == "orbit" then
    return {"space-exploration.something_orbit", Zone.type_title(zone.parent)}
  end
end

---Gets the virtual signal name of a given zone or spaceship based on its type.
---@param zone AnyZoneType|SpaceshipType Zone or spaceship
---@return string signal_name
function Zone.get_signal_name(zone)
  -- used for rich text
  if zone.type == "orbit" and zone.parent.type == "star" then
    return mod_prefix.."star"
  elseif zone.type == "orbit" and zone.parent.type == "planet" then
    return mod_prefix.."planet-orbit"
  elseif zone.type == "orbit" and zone.parent.type == "moon" then
    return mod_prefix.."moon-orbit"
  else
    return mod_prefix..zone.type
  end
end

---Returns "virtual-signal/" concatenated with a zone/spaceship's virtual signal name
---@param zone AnyZoneType|SpaceshipType Zone or spaceship whose icon to get
---@return string icon_string
function Zone.get_icon(zone)
  -- used for rich text
  return "virtual-signal/" .. Zone.get_signal_name(zone)
end

---Returns true if a given zone is a planet or moon.
---@param zone AnyZoneType|SpaceshipType
---@return boolean is_solid
function Zone.is_solid(zone)
  return zone.type == "planet" or zone.type == "moon"
end

---Returns true if a given zone is _not_ a planet or moon. Returns true for spaceships.
---@param zone AnyZoneType|SpaceshipType Zone to evaluate
---@return boolean is_space
function Zone.is_space(zone)
  return not Zone.is_solid(zone)
end

---Returns a zone that can also defend against projectiles or energy beams in the current zone, if
---any.
---@param zone AnyZoneType|SpaceshipType Zone to evaluate
---@return AnyZoneType Zone Zone that can also defend
function Zone.get_alternate_defence_zone(zone)
  if Zone.is_solid(zone) and zone.orbit then
    return zone.orbit -- if the zone is a planet/moon, the orbit can also defend
  elseif zone.type == "orbit" and Zone.is_solid(zone.parent) then
    return zone.parent -- if the zone is an orbit, the planet/moon can also defend
  end
end

---Returns a zone with the given index number, if any.
---@param zone_index uint Zone index
---@return AnyZoneType? zone
function Zone.from_zone_index(zone_index)
  return global.zone_index[zone_index]
end

---Returns a zone with the given name, if any
---@param name string Zone name
---@return AnyZoneType? zone
function Zone.from_name(name)
    return global.zones_by_name[name]
end

---Returns a zone associated with a given `surface_index`. Will _not_ find spaceships.
---@param surface_index uint Surface index
---@return AnyZoneType? zone
function Zone.from_surface_index(surface_index)
  return global.zones_by_surface[surface_index]
end

---Returns a zone or spaceship associated with a given surface, if any.
---@param surface LuaSurface Surface whose zone to find
---@return AnyZoneType|SpaceshipType? zone
function Zone.from_surface(surface)
  local from_index = Zone.from_surface_index(surface.index)
  if from_index then return from_index end
  -- maybe a spaceship
  return Spaceship.from_own_surface_index(surface.index)
end

---Gets the effective stellar position of a given zone, recursively going through its parents if it
---does not have one.
---@param zone AnyZoneType Zone whose stellar position to find
---@return StellarPosition? stellar_position
function Zone.get_stellar_position(zone)
  if not zone then return nil end
  if zone.type == "anomaly" then return {x = 0, y = 0} end
  -- everything else should have a stellar position
  return zone.stellar_position or Zone.get_stellar_position(zone.parent)
end

function Zone.get_star_gravity_well(zone)
  if zone.type == "orbit" then
      return Zone.get_star_gravity_well(zone.parent)
  end
  return zone.star_gravity_well or 0
end

function Zone.get_planet_gravity_well(zone)
  if zone.type == "orbit" then
    if zone.parent.type == "star" then
      return 0
    elseif zone.parent.type == "planet" then
      return Zone.get_planet_gravity_well(zone.parent) - 1
    else
      return Zone.get_planet_gravity_well(zone.parent) - 0.5
    end
  end
  return zone.planet_gravity_well or 0
end

function Zone.get_space_distortion(zone) -- anomaly
  if zone.space_distortion then
    return zone.space_distortion
  end
  return zone.type == "anomaly" and 1 or 0
end

function Zone.find_parent_star(zone)
  if zone.type == "star" then
    return zone
  elseif zone.parent then
    return Zone.find_parent_star(zone.parent)
  end
end

function Zone.apply_markers(zone)
  for force_name, force_data in pairs(global.forces) do
    local force = game.forces[force_name]
    if force and force_data.zones_discovered[zone.index] then
      if not (force_data.zones_discovered[zone.index].marker and force_data.zones_discovered[zone.index].marker.valid) then
        local surface = Zone.get_surface(zone)
        if surface then
          force_data.zones_discovered[zone.index].marker = force.add_chart_tag(surface, {
            icon = {type = "virtual", name = Zone.get_signal_name(zone)},
            position = {0,0},
            text = zone.name
          })
        end
      end
    end
  end
end

function Zone.validate_controls_and_error(controls)
  if controls then
    for name, control in pairs(controls) do
      if type(name) ~= "string" then
        error(serpent.block(name))
      end
    end
  end
end

function Zone.validate_controls(controls)
  if controls then
    for name, control in pairs(controls) do
      if type(name) ~= "string" then
        controls[name] = nil
      end
    end
  end
end

function Zone.apply_controls_to_mapgen(zone, controls, mapgen)
  Zone.validate_controls(controls)
  local frequency_multiplier = Zone.get_frequency_multiplier(zone)
  for name, control in pairs(controls) do
    if type(name) == "string" then
      if name == "moisture" then
        mapgen.property_expression_names = mapgen.property_expression_names or {}
        if control.frequency then
          mapgen.property_expression_names["control-setting:moisture:frequency:multiplier"] = control.frequency
        end
        if control.bias then
          mapgen.property_expression_names["control-setting:moisture:bias"] = control.bias
        end
      elseif name == "aux" then
        mapgen.property_expression_names = mapgen.property_expression_names or {}
        if control.frequency then
          mapgen.property_expression_names["control-setting:aux:frequency:multiplier"] = control.frequency
        end
        if control.bias then
          mapgen.property_expression_names["control-setting:aux:bias"] = control.bias
        end
      elseif name == "water" then
        if control.frequency then
          mapgen.terrain_segmentation = control.frequency
        end
        if control.size then
          mapgen.water = control.size
        end
      elseif name == "cliff" then
        mapgen.cliff_settings = mapgen.cliff_settings or {
    			name="cliff",
    			cliff_elevation_0=10, -- default
    			cliff_elevation_interval=400, -- when set from the GUI the value is 40 / frequency.
    			richness=0, -- 0.17 to 6.
        }
        if control.frequency then
          mapgen.cliff_settings.cliff_elevation_interval = 40 / control.frequency
          mapgen.cliff_settings.cliff_elevation_0 = mapgen.cliff_settings.cliff_elevation_interval / 4
        end
        if control.richness then
          mapgen.cliff_settings.richness = control.richness
        end
      else
        if game.autoplace_control_prototypes[name] then
          mapgen.autoplace_controls[name] = table.deepcopy(control)
          if mapgen.autoplace_controls[name].frequency
            and (not zone.is_homeworld)
            and (not Util.table_contains(Zone.controls_without_frequency_multiplier, name)) then
            mapgen.autoplace_controls[name].frequency = mapgen.autoplace_controls[name].frequency * frequency_multiplier
          end
        else
          log("Zone.apply_controls_to_mapgen: Attempt to apply invalid control name to mapgen: "..name)
          controls[name] = nil
        end
      end
    end
  end
end

-- Apply zone flags to zone.controls
-- e.g. `zone.plague_used` and `zone.hostiles_exstinct
function Zone.apply_flags_to_controls(zone)
  if zone.plague_used then
    Zone.apply_plague_to_controls(zone)
  end
  if zone.hostiles_extinct then
    zone.controls["enemy-base"] = {frequency = 0, size = -1, richness = -1}
  end
end

function Zone.apply_plague_to_controls(zone)
  zone.controls["enemy-base"] = {frequency = 0, size = -1, richness = -1}
  zone.controls["trees"] = {frequency = 0, size = -1, richness = -1}
  if zone.controls["se-vitamelange"] then
    zone.controls["se-vitamelange"] = {frequency = 0, size = -1, richness = -1}
  end

  if zone.primary_resource == "se-vitamelange" then
    zone.primary_resource = "coal"
    zone.fragment_name = Coreminer.resource_to_fragment_name(zone.primary_resource)
    Coreminer.update_zone_fragment_resources(zone)
  end

  local surface = Zone.get_surface(zone)
  if not surface then return end
  local map_gen_settings = surface.map_gen_settings
  map_gen_settings.autoplace_controls["enemy-base"] = {frequency = 0, size = -1, richness = -1}
  map_gen_settings.autoplace_controls["trees"] = {frequency = 0, size = -1, richness = -1}
  if map_gen_settings.autoplace_controls["se-vitamelange"] then
    map_gen_settings.autoplace_controls["se-vitamelange"] = {frequency = 0, size = -1, richness = -1}
    Universe.remove_resource_from_zone_surface(zone, "se-vitamelange")
  end
  surface.map_gen_settings = map_gen_settings
end

function Zone.get_frequency_multiplier(zone)
  if zone.radius then
    return 5000 / zone.radius
  end
  return 1
end

function Zone.create_surface(zone)

    if not zone.surface_index then

      Universe.inflate_climate_controls(zone) -- This also applies zone.tags to zone.controls
      Zone.apply_flags_to_controls(zone) -- Overwrite the changes from tags in inflate_climate_controls

      -- TODO planets should have customised controls

      local map_gen_settings = table.deepcopy(game.default_map_gen_settings)
      map_gen_settings.width = 0
      map_gen_settings.height = 0
      if not zone.seed then zone.seed = math.random(4294967295) end
      map_gen_settings.seed = zone.seed

      local autoplace_controls = map_gen_settings.autoplace_controls
      zone.controls = zone.controls or {}

      -- This is unused. Intentional?
      local frequency_multiplier = Zone.get_frequency_multiplier(zone) -- increase for small planets and moons

      -- For all possible controls set values so it can be regenreated consistently.
      for control_name, control_prototype in pairs(game.autoplace_control_prototypes) do
        if control_name ~= "planet-size" and game.autoplace_control_prototypes[control_name] then
          zone.controls[control_name] = zone.controls[control_name] or {}
          zone.controls[control_name].frequency = (zone.controls[control_name].frequency or (0.17 + math.random() * math.random() * 2))
          zone.controls[control_name].size = zone.controls[control_name].size or (0.1 + math.random() * 0.8)
          zone.controls[control_name].richness = zone.controls[control_name].richness or (0.1 + math.random() * 0.8)
        end
      end

      zone.controls.moisture = zone.controls.moisture or {}
      zone.controls.moisture.frequency = (zone.controls.moisture.frequency or (0.17 + math.random() * math.random() * 2))
      zone.controls.moisture.bias = zone.controls.moisture.bias or (math.random() - 0.5)

      zone.controls.aux = zone.controls.aux or {}
      zone.controls.aux.frequency = (zone.controls.aux.frequency or (0.17 + math.random() * math.random() * 2))
      zone.controls.aux.bias = zone.controls.aux.bias or (math.random() - 0.5)

      zone.controls.cliff = zone.controls.cliff or {}
      zone.controls.cliff.frequency = (zone.controls.cliff.frequency or (0.17 + math.random() * math.random() * 10)) --
      zone.controls.cliff.richness  = zone.controls.cliff.richness  or (math.random() * 1.25)

      Zone.apply_controls_to_mapgen(zone, zone.controls, map_gen_settings)

      autoplace_controls["planet-size"] = { frequency = 1, size = 1 } -- default
      -- planet_radius = 10000 / 6 * (6 + log(1/planet_frequency/6, 2))
      -- planet_frequency = 1 / 6 / 2 ^ (planet_radius * 6 / 10000 - 6)
      local planet_size_frequency = 1/6 -- 10000 radius planet
      if Zone.is_solid(zone) then
        map_gen_settings.width = zone.radius*2+32
        map_gen_settings.height = zone.radius*2+32
        -- planet or moon
        --planet_size_frequency = 1 / (zone.radius / 10000)
        planet_size_frequency = 1 / 6 / 2 ^ (zone.radius * 6 / 10000 - 6)
        local penalty = -100000
        if zone.tags and util.table_contains(zone.tags, "water_none") then
          map_gen_settings.property_expression_names["tile:deepwater:probability"] = penalty
          map_gen_settings.property_expression_names["tile:water:probability"] = penalty
          map_gen_settings.property_expression_names["tile:water-shallow:probability"] = penalty
          map_gen_settings.property_expression_names["tile:water-mud:probability"] = penalty
        end
        map_gen_settings.property_expression_names["decorative:se-crater3-huge:probability"] = penalty
        if not zone.is_homeworld then
          map_gen_settings.starting_area = 0.5
        end
      else
        if zone.type == "orbit" then
          autoplace_controls["planet-size"].size = zone.parent.radius and (zone.parent.radius / 200) or 50
        elseif zone.type == "asteroid-belt" then
          autoplace_controls["planet-size"].size = 200
        elseif zone.type == "asteroid-field" then
          autoplace_controls["planet-size"].size = 10000
        end

        planet_size_frequency = 1/1000
        map_gen_settings.cliff_settings={
    			name="cliff",
    			cliff_elevation_0=10, -- default
    			cliff_elevation_interval=400, -- when set from the GUI the value is 40 / frequency.
    			richness=0, -- 0.17 to 6.
    		}
        zone.controls.cliff.frequency = 0
        zone.controls.cliff.richness = 0

        map_gen_settings.property_expression_names = {
          ["control-setting:moisture:frequency:multiplier"] = 10,
          ["control-setting:moisture:bias"] = -1,
          ["control-setting:aux:frequency:multiplier"] = 0,
          ["control-setting:aux:bias"] = 0,
        }
        map_gen_settings.starting_area = 0
      end
      autoplace_controls["planet-size"].frequency = planet_size_frequency

      Log.debug_log("Creating surface " .. zone.name .. " with map_gen_settings:")
      Log.debug_log(util.table_to_string(map_gen_settings))
      if Zone.is_space(zone) then
        -- Speed up terrain generation by excluding everything not specifically allowed to spawn
        --map_gen_settings.default_enable_all_autoplace_controls = false
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
      else
        -- speed up terrain generation by specifying specific things not to spawn
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
      end

      local surface
      if not game.surfaces[zone.name] then
        surface = game.create_surface(zone.name, map_gen_settings)
        surface.force_generate_chunk_requests()

      else
        -- this happens if the mod was uninstalled and reinstalled. The surface will be invalid and unfaxable.
        -- game.delete_surface(zone.name) -- does not work in time to re make the surface
        surface = game.surfaces[zone.name]
        surface.clear(false)

      end

      zone.surface_index = surface.index
      global.zones_by_surface = global.zones_by_surface or {}
      global.zones_by_surface[surface.index] = zone

      -- Don't show clouds in space zones
      if Zone.is_space(zone) then surface.show_clouds = false end

      Zone.set_solar_and_daytime(zone)

      if zone.type == "planet" and not zone.is_homeworld then

        -- Vault planet
        if  (not zone.ruins) and not zone.glyph then
          Ancient.assign_zone_next_glyph(zone)
        end
        Ancient.make_vault_exterior(zone) -- only makes the vault if glyph exists

        -- Interburbulator planet
        if (not zone.glyph) and (not zone.ruins) and not global.interburbulator then
          Interburbulator.make_interburbulator(zone)
        end
        if zone.interburbulator then
          Interburbulator.build_platform()
        end

      end

      if not zone.is_homeworld then
        -- Unique ruins
        Ruin.zone_assign_unique_ruins(zone)
        Ruin.zone_build_ruins(zone, surface)
      end

      if zone.type == "anomaly" then
        Ancient.make_gate(Ancient.gate_default_position)
        Ruin.build({ruin_name = "galaxy-ship", surface_index = surface.index,  position = Ancient.galaxy_ship_default_position})
      end

    end
end

---Gets the parent star of any planet, moon, orbit, or asteroid belt. Returns the star itself if
---given a star and nil for zones that don't have parent stars.
---@param zone AnyZoneType Zone to get parent of
---@return StarType? star
function Zone.get_star_from_child(zone)
  if zone.type == "star" then
    return zone
  elseif zone.parent then
    return Zone.get_star_from_child(zone.parent)
  end
end

---Gets the parent stellar object for a zone, which is a star for everything inside a star system
---and an asteroid field if given that asteroid field. Returns nil for the anomaly.
---@param zone AnyZoneType Zone to get parent of
---@return StarType|AsteroidFieldType stellar_object
function Zone.get_stellar_object_from_child(zone)
  if zone.type == "asteroid-field" then
    return zone
  else
    return Zone.get_star_from_child(zone)
  end
end

function Zone.get_star_from_position(zone)
  if not zone.stellar_position then return end
  for _, star in pairs(global.universe.stars) do
    if star.stellar_position.x == zone.stellar_position.x and star.stellar_position.y == zone.stellar_position.y then
      return star
    end
  end
end

function Zone.get_stellar_object_from_position(zone)
  local star = Zone.get_star_from_position(zone)
  if star then return star end
  for _, asteroid_field in pairs(global.universe.space_zones) do
    if asteroid_field.stellar_position.x == zone.stellar_position.x and asteroid_field.stellar_position.y == zone.stellar_position.y then
      return asteroid_field
    end
  end
end

---Gets the expected light percentage of a given zone or spaceship.
---@param zone AnyZoneType|SpaceshipType Zone or spaceship whose light % to get
---@return number
function Zone.get_solar(zone)
  -- return the actual expected light % including daytime for space zones and spaceships.
  -- return peak expected light % space solid zones.

  if zone.type == "anomaly" then
    return 0
  end

  local star
  local star_gravity_well = 0

  if zone.type == "spaceship" then
    star = zone.near_star
    star_gravity_well = zone.star_gravity_well or 0
  else
    star = Zone.get_star_from_child(zone)
    star_gravity_well = Zone.get_star_gravity_well(zone)
  end

  local light_percent = 0

  if star then
    light_percent = 1.6 * star_gravity_well / (star.star_gravity_well + 1)
  end

  if Zone.is_space(zone) then
    if(zone.type == "orbit" and zone.parent and zone.parent.type == "star") then -- star
      light_percent = light_percent * 10 -- x20
    elseif zone.type == "asteroid-belt" then
      light_percent = light_percent * 2.5 -- x5
    else
      light_percent = light_percent * 5 -- x10
      if zone.parent and zone.parent.radius then
        light_percent = light_percent * (1 - 0.1 * zone.parent.radius / 10000)
      end
    end
    light_percent = light_percent + 0.01
  else
    if zone.radius then
      light_percent = light_percent * (1 - 0.1 * zone.radius / 10000)
      if zone.is_homeworld then
        light_percent = 1
      end
    end
  end

  if zone.space_distortion and zone.space_distortion > 0 then

    light_percent = light_percent * (1 - zone.space_distortion)

    if zone.is_homeworld then
      light_percent = 1
    end
  end
  return light_percent
end

function Zone.get_display_light_percent(zone)
  return Zone.get_solar(zone)
end

---Sets the zone's surface's daytime and solar multiplier
---@param zone AnyZoneType|SpaceshipType Zone or spaceship whose daytime and solar multiplier to set
---@return number
function Zone.set_solar_and_daytime(zone)
  local surface
  if zone.type == "spaceship" then
    surface = Spaceship.get_own_surface(zone)
  else
    surface = Zone.get_surface(zone)
  end
  if not surface then return end

  local light_percent = Zone.get_solar(zone)

  if Zone.is_space(zone) then

    -- light_percent is the total output
    -- but we have most space zones daylight ranging from mid evening to night so that lights are active.
    -- so that is the main driving factor.
    -- except stars.

    surface.freeze_daytime = true

    if zone.type == "anomaly" then
      -- Anomaly
      surface.daytime = 0.5 -- night
      surface.solar_power_multiplier = 0
    elseif zone.type == "orbit" and zone.parent.type == "star" then
      -- Star orbit
      surface.daytime = 0 -- very bright
      surface.solar_power_multiplier = Zone.solar_multiplier * light_percent
    else
      -- Other space zones, including spaceships
      Zone.set_solar_and_daytime_for_space_zone(surface, light_percent)
    end

  else
    -- planet or moon
    -- has daytime

    surface.freeze_daytime = false

    surface.daytime = (game.tick / zone.ticks_per_day) % 1
    surface.solar_power_multiplier = Zone.solar_multiplier * light_percent

    if zone.ticks_per_day then
      surface.ticks_per_day = zone.ticks_per_day
    end

  end

end

---Sets the zone's surface's daytime and solar multiplier
---@param surface LuaSurface Surface of the zone to change
---@param light_percent number Light percentage taken from Zone.get_solar
function Zone.set_solar_and_daytime_for_space_zone(surface, light_percent)
  -- light_percent of 1 would be daytime 0.65 (half-light)
  -- light_percent of 0.5 would still be daytime 0.65
  -- between 0.5 to 0 light_percent, daytime decreases from 0.65 to 0.55
  -- light_percent of 0 would be daytime 0.55 (dark)

  if light_percent >= 0.5 then
    surface.daytime = 0.65 -- half light (sunrise)
    surface.solar_power_multiplier = Zone.solar_multiplier * light_percent * 2 -- x2 compensate for half light
  else
    surface.daytime = 0.55 + 0.2 * light_percent
    surface.solar_power_multiplier = Zone.solar_multiplier
  end
end

---Gets a weighted score for a zone, based on its flags; used for sorting in the Universe Explorer.
---@param zone AnyZoneType Zone to evaluate
---@param force_name string Force's name
---@param playerdata PlayerData Player data
---@return float weight
function Zone.get_flags_weight(zone, force_name, playerdata)
  local weight = (
    ((playerdata.track_glyphs and zone.glyph) and 0.96 or 0)
    + ((zone.interburbulator or zone.ruins) and 0.95 or 0)
    + ((playerdata.visited_zone and playerdata.visited_zone[zone.index]) and 0.97 or 0)
    + ((global.forces[force_name].zone_assets and global.forces[force_name].zone_assets[zone.index] and table_size(global.forces[force_name].zone_assets[zone.index].rocket_landing_pad_names) > 0) and 0.98 or 0)
    + ((global.forces[force_name].zone_assets and global.forces[force_name].zone_assets[zone.index] and table_size(global.forces[force_name].zone_assets[zone.index].rocket_launch_pad_names) > 0) and 1 or 0)
  )
  Log.debug_log("Zone.get_flags_weight " .. zone.name.." " ..weight, "zone")
  return weight
end

---Gets the surface of a given zone or spaceship, if any. Does not create it if it doesn't exist.
---@param zone AnyZoneType|SpaceshipType Zone or spaceship whose surface to get
---@return LuaSurface?
function Zone.get_surface(zone)
  if zone.type == "spaceship" then
    return Spaceship.get_current_surface(zone)
  end
  if zone.surface_index then
    return game.get_surface(zone.surface_index)
  end
  return nil
end

---Gets the name of a given zone or spaceship's surface, if any.
---@param zone AnyZoneType|SpaceshipType Zone or spaceship whose name to get
---@return string? surface_name
function Zone.get_surface_name(zone)
  local surface = Zone.get_surface(zone)
  if surface then return surface.name end
end

---Gets the surface of a zone or creates one if it doesn't already exist.
---@param zone AnyZoneType|SpaceshipType Zone whose surface to get/make
---@return LuaSurface surface
function Zone.get_make_surface(zone)
  if zone.type == "spaceship" then
    return Spaceship.get_current_surface(zone)
  end
  if not zone.surface_index then Zone.create_surface(zone) end
  return game.get_surface(zone.surface_index)
end

function Zone.discover(force_name, zone, source) -- source could be "Satellite "
  global.forces[force_name] = global.forces[force_name] or {}
  global.forces[force_name].zones_discovered = global.forces[force_name].zones_discovered or {}
  global.forces[force_name].zones_discovered_count = global.forces[force_name].zones_discovered_count or 0

  if not global.forces[force_name].zones_discovered[zone.index] then

      Universe.inflate_climate_controls(zone)

      global.forces[force_name].zones_discovered[zone.index] = {
        discovered_at = game.tick,
        marker = nil
      }
      global.forces[force_name].zones_discovered_count = global.forces[force_name].zones_discovered_count + 1
      if zone.type == "planet" and (not zone.is_homeworld) and (not zone.ruins) and (not zone.glyph) then
        Ancient.assign_zone_next_glyph(zone)
      end

      -- Unique ruins
      Ruin.zone_assign_unique_ruins(zone)

      local message = nil
      if source then
        message = {"space-exploration.source-discovered-zone", source, Zone.type_title(zone), Zone.get_icon(zone), zone.name}
        --game.forces[force_name].print(source .. " discovered a new " .. Zone.type_title(zone) .. ": " .. zone.name)
      else
        message = {"space-exploration.discovered-zone", source, Zone.type_title(zone), Zone.get_icon(zone), zone.name}
        --game.forces[force_name].print("Discovered a new " .. Zone.type_title(zone) .. ": " .. zone.name)
      end
      local tick_task = new_tick_task("force-message")
      tick_task.force_name = force_name
      tick_task.message = message

      Zone.apply_markers(zone) -- in case the surface exists

      for _, player in pairs(game.connected_players) do
        if Zonelist.get_main_window(player.index) then
          Zonelist.gui_update_list(player.index)
        end
      end

      if zone.type == "anomaly" then
        local tick_task = new_tick_task("force-message")
        tick_task.force_name = force_name
        tick_task.message = {"space-exploration.discovered-anomaly-additional"}
        tick_task.delay_until = game.tick + 300 --5s
      end

      if zone.glyph then
        local force = game.forces[force_name]
        for _, player in pairs(force.players) do
          if player.connected then
            local playerdata = get_make_playerdata(player)
            if playerdata.track_glyphs then
              player.print({"space-exploration.discovered-glyph-vault", zone.name})
            end
          end
        end
      end

      return true

  end
  return false
end

function Zone.discover_next_research(force_name, source, allow_targeted)
  global.forces[force_name] = global.forces[force_name] or {}
  global.forces[force_name].zones_discovered = global.forces[force_name].zones_discovered or {}
  global.forces[force_name].zones_discovered_count = global.forces[force_name].zones_discovered_count or 0

  local target_resource = "n/a"
  if allow_targeted then
    target_resource = global.forces[force_name].search_for_resource
  end

  local can_discover = {}
  local can_discover_targeted = {}

  -- star and deep space discovery should be bias to nearer positions
  local closest_1 = nil
  local closest_stellar_distance = 1000000
  local pos1 = {x = 0, y = 0} -- focus on aeras close to the center of the star map

  for _, star in pairs(global.universe.stars) do
    if not global.forces[force_name].zones_discovered[star.index] then
      local pos2 = Zone.get_stellar_position(star)
      local distance = util.vectors_delta_length(pos1, pos2)
      if distance < closest_stellar_distance then
        closest_stellar_distance = distance
        closest_1 = star
      end
    end
  end

  if closest_1 then
    -- x5
    table.insert(can_discover, closest_1)
    table.insert(can_discover, closest_1)
    table.insert(can_discover, closest_1)
    table.insert(can_discover, closest_1)
    table.insert(can_discover, closest_1)
  end

  for _, star in pairs(global.universe.stars) do
    if global.forces[force_name].zones_discovered[star.index] then
      for _, planet in pairs(star.children) do
        if not global.forces[force_name].zones_discovered[planet.index] then
          if planet.primary_resource == target_resource then
            table.insert(can_discover_targeted, planet)
            if planet.type == "planet" then
              --x5 bias towards planets
              table.insert(can_discover_targeted, planet)
              table.insert(can_discover_targeted, planet)
              table.insert(can_discover_targeted, planet)
              table.insert(can_discover_targeted, planet)
            end
          else
            table.insert(can_discover, planet)
            if planet.type == "planet" then
              --x5 bias towards planets
              table.insert(can_discover, planet)
              table.insert(can_discover, planet)
              table.insert(can_discover, planet)
              table.insert(can_discover, planet)
            end
          end
        else
          if planet.children then
            for _, moon in pairs(planet.children) do
              if not global.forces[force_name].zones_discovered[moon.index] then
                if moon.primary_resource == target_resource then
                  table.insert(can_discover_targeted, moon)
                else
                  table.insert(can_discover, moon)
                end
              end
            end
          end
        end
      end
    end
  end

  if #can_discover_targeted > 0 then
    return Zone.discover(force_name, Util.random_from_array(can_discover_targeted), source)
  end
  if #can_discover > 0 then
    return Zone.discover(force_name, Util.random_from_array(can_discover), source)
  end

end

function Zone.discover_next_research_deep_space(force_name, source, allow_targeted)
  global.forces[force_name] = global.forces[force_name] or {}
  global.forces[force_name].zones_discovered = global.forces[force_name].zones_discovered or {}
  global.forces[force_name].zones_discovered_count = global.forces[force_name].zones_discovered_count or 0

  if game.forces[force_name].technologies[Zone.name_tech_discover_deep].level > 11 then
    -- should have discovered multiple stars at this point
    if not global.forces[force_name].zones_discovered[global.universe.anomaly.index] then
      return Zone.discover(force_name, global.universe.anomaly, source)
    end
  end

  local target_resource = "n/a"
  if allow_targeted then
    target_resource = global.forces[force_name].search_for_resource
  end

  local can_discover = {}
  local can_discover_targeted = {}
  for _, zone in pairs(global.universe.space_zones) do
    if not global.forces[force_name].zones_discovered[zone.index] then
      if zone.primary_resource == target_resource then
        table.insert(can_discover_targeted, zone)
      else
        table.insert(can_discover, zone)
      end
    end
  end

  if #can_discover_targeted > 0 then
    return Zone.discover(force_name, Util.random_from_array(can_discover_targeted), source)
  end
  if #can_discover > 0 then
    return Zone.discover(force_name, Util.random_from_array(can_discover), source)
  end
end

function Zone.discover_first_moon(force_name, source)
  return Zone.discover(force_name, Zone.get_force_home_zone(force_name).children[1], source)
end

function Zone.discover_next_satellite(force_name, source, system_restriction)
  global.forces[force_name] = global.forces[force_name] or {}
  global.forces[force_name].zones_discovered = global.forces[force_name].zones_discovered or {}
  global.forces[force_name].zones_discovered_count = global.forces[force_name].zones_discovered_count or 0

  if system_restriction then
    local star = system_restriction
    while star.parent do
      star = star.parent
    end
    local last_valid
    if star.children then
      for _, planet in pairs(star.children) do
        if not global.forces[force_name].zones_discovered[planet.index] then
          if math.random() < 0.5 then -- skip it
            last_valid = planet
          else
            return Zone.discover(force_name, planet, source)
          end
        elseif planet.children then
          for _, moon in pairs(planet.children) do
            if not global.forces[force_name].zones_discovered[moon.index] then
              if math.random() < 0.5 then -- skip it
                last_valid = moon
              else
                return Zone.discover(force_name, moon, source)
              end
            end
          end
        end
      end
    end
    --skipped too much
    if last_valid then
      return Zone.discover(force_name, last_valid, source)
    end
    -- find stars now
    local closest_1 = nil
    local closest_stellar_distance = 1000000
    local pos1 = Zone.get_stellar_position(star)

    for _, star2 in pairs(global.universe.stars) do
      if not global.forces[force_name].zones_discovered[star2.index] then
        local pos2 = Zone.get_stellar_position(star2)
        local distance = util.vectors_delta_length(pos1, pos2)
        if distance < closest_stellar_distance then
          closest_stellar_distance = distance
          closest_1 = star2
        end
      end
    end
    if closest_1 then
      return Zone.discover(force_name, closest_1, source)
    end
    return false
  end

end

---Finds the nearest star or asteroid field from a given stellar position.
---@param stellar_position StellarPosition
---@return StarType|AsteroidFieldType
function Zone.find_nearest_stellar_object(stellar_position)
  local closest_distance = math.huge
  local closest = nil

  for _, star in pairs(global.universe.stars) do
    local distance = util.vectors_delta_length(star.stellar_position, stellar_position)
    if distance < closest_distance then
      closest_distance = distance
      closest = star
    end
  end

  for _, space_zone in pairs(global.universe.space_zones) do
    local distance = util.vectors_delta_length(space_zone.stellar_position, stellar_position)
    if distance < closest_distance then
      closest_distance = distance
      closest = space_zone
    end
  end
  return closest
end

---Finds the nearest star from a given stellar position.
---@param stellar_position StellarPosition
---@return StarType
function Zone.find_nearest_star(stellar_position)
  local closest_distance = math.huge
  local closest = nil

  for _, star in pairs(global.universe.stars) do
    local distance = util.vectors_delta_length(star.stellar_position, stellar_position)
    if distance < closest_distance then
      closest_distance = distance
      closest = star
    end
  end
  return closest
end

function Zone.find_nearest_zone(space_distortion, stellar_position, star_gravity_well, planet_gravity_well)

  if space_distortion > 0.4 then return global.universe.anomaly end -- default from the anomaly

  local star = Zone.find_nearest_stellar_object(stellar_position) -- can be asteroid field
  if star_gravity_well > 0 then
    local closest_zone = star
    local closest_distance =  math.abs((star.star_gravity_well or 0) - star_gravity_well)
    if closest_zone.type == "star" then
      for _, planet in pairs(star.children) do
        local distance = math.abs(planet.star_gravity_well - star_gravity_well)
        if distance < closest_distance then
          closest_distance = distance
          closest_zone = planet
        end
      end
    end

    if closest_zone.type == "planet" then
      local closest_zone2 = closest_zone
      closest_distance =  math.abs(closest_zone.planet_gravity_well - planet_gravity_well)
      for _, moon in pairs(closest_zone.children) do
        if moon.type == "moon" then
          local distance = math.abs(moon.planet_gravity_well - planet_gravity_well)
          if distance < closest_distance then
            closest_distance = distance
            closest_zone2 = moon
          end
        end
      end
      return closest_zone2
    end
    return closest_zone
  else
    if not star then return global.universe.anomaly end
    if not star.children then return star end
    local last_child = star.children[#star.children]
    if last_child.children then
      last_child = last_child.children[#last_child.children]
    end
    return last_child
  end
  return Zone.get_default()

end

function Zone.find_nearest_solid_zone(space_distortion, stellar_position, star_gravity_well, planet_gravity_well, allow_moon)
  if space_distortion == 1 then return Zone.get_default() end -- default from the anomaly

  if planet_gravity_well == 0 then -- if no moon
    planet_gravity_well = 100000 -- high to land on planet
  end

  if star_gravity_well == 0 then -- if no planet
    star_gravity_well = 100000 -- high to land on planet with high solar
  end

  local star = Zone.find_nearest_star(stellar_position)
  if not star then return Zone.get_default() end

  local closest_planet = nil
  local closest_distance = math.huge
  for _, planet in pairs(star.children) do
    if planet.type == "planet" then -- not an asteroid belt
      local distance = math.abs(planet.star_gravity_well - star_gravity_well)
      if distance < closest_distance then
        closest_distance = distance
        closest_planet = planet
      end
    end
  end

  if not closest_planet then return Zone.get_default() end

  local closest_body = closest_planet -- default to planet

  if allow_moon then
    closest_distance =  math.abs(closest_body.planet_gravity_well - planet_gravity_well)
    -- see if a moon is closer
    for _, moon in pairs(closest_planet.children) do
      if moon.type == "moon" then
        local distance = math.abs(moon.planet_gravity_well - planet_gravity_well)
        if distance < closest_distance then
          closest_distance = distance
          closest_body = moon
        end
      end
    end
  end

  return closest_body

end

function Zone.find_nearest_solid_zone_from_zone(zone)
  -- typically used for escape pod
  if Zone.is_solid(zone) then return nil end -- already there

  if zone.type == "orbit" and Zone.is_solid(zone.parent) then
    return zone.parent -- drop to planet / moon
  end

  return Zone.find_nearest_solid_zone(
    Zone.get_space_distortion(zone),
    Zone.get_stellar_position(zone),
    Zone.get_star_gravity_well(zone),
    Zone.get_planet_gravity_well(zone),
    true
  )
end

---Gets the zone assets of a given force located in a given zone.
---@param force_name string Force name
---@param zone_index uint Zone index
---@return ZoneAssetsInfo zone_assets
function Zone.get_force_assets(force_name, zone_index)
  if not global.forces[force_name] then
    if game.forces[force_name] then
      setup_force(game.forces[force_name])
    else
      return
    end
  end
  if not global.forces[force_name] then
    if game.forces[force_name] then
      game.forces[force_name].print("Error getting force data for invalid player force " .. force_name)
    else
      game.forces[force_name].print("Error getting force data for invalid force " .. force_name)
    end
    return -- invalid force
  end
  if not global.forces[force_name].zone_assets then
    global.forces[force_name].zone_assets = {}
  end
  if not global.forces[force_name].zone_assets[zone_index] then
    global.forces[force_name].zone_assets[zone_index] = {
      rocket_launch_pad_names = {},
      rocket_landing_pad_names = {},
    }
  end
  --Log.debug_log("Zone.get_force_assets: " .. util.table_to_string(global.forces[force_name].zone_assets[zone_index]))
  return global.forces[force_name].zone_assets[zone_index]
end

function Zone.get_travel_delta_v_sub(origin, destination)
  -- expected ranges:
    -- 1500 planetary system
    -- 15000 solar system
    -- 50000 interstellarsystem
    -- 50000 to/from anomaly
  if origin == destination then return 0 end

  local origin_space_distorion = Zone.get_space_distortion(origin)
  local origin_stellar_position = Zone.get_stellar_position(origin)
  local origin_star_gravity_well = Zone.get_star_gravity_well(origin)
  local origin_planet_gravity_well = Zone.get_planet_gravity_well(origin)

  local destination_space_distorion = Zone.get_space_distortion(destination)
  local destination_stellar_position = Zone.get_stellar_position(destination)
  local destination_star_gravity_well = Zone.get_star_gravity_well(destination)
  local destination_planet_gravity_well = Zone.get_planet_gravity_well(destination)

  if origin_space_distorion > 0 and destination_space_distorion > 0 then -- spaceship partially in distortion
    return Zone.travel_cost_interstellar * math.abs(origin_space_distorion - destination_space_distorion)
  elseif origin_space_distorion > 0 then
    return Zone.travel_cost_space_distortion
      + Zone.travel_cost_star_gravity * destination_star_gravity_well
      + Zone.travel_cost_planet_gravity * destination_planet_gravity_well
  elseif destination_space_distorion > 0 then
    return Zone.travel_cost_space_distortion
      + Zone.travel_cost_star_gravity * origin_star_gravity_well
      + Zone.travel_cost_planet_gravity * origin_planet_gravity_well
  end

  if origin_stellar_position.x == destination_stellar_position.x and origin_stellar_position.y == destination_stellar_position.y then
    -- same solar system
    if origin_star_gravity_well == destination_star_gravity_well then
      -- same planetary system
      return Zone.travel_cost_planet_gravity * math.abs(origin_planet_gravity_well - destination_planet_gravity_well) -- the planet_gravity_well difference
    else
      -- different planetary systems
      return Zone.travel_cost_star_gravity * math.abs(destination_star_gravity_well - origin_star_gravity_well) -- the star_gravity_well difference
        + Zone.travel_cost_planet_gravity * origin_planet_gravity_well
        + Zone.travel_cost_planet_gravity * destination_planet_gravity_well
    end
  else
    -- interstellar
    return Zone.travel_cost_interstellar * util.vectors_delta_length(origin_stellar_position, destination_stellar_position)
      + Zone.travel_cost_star_gravity * origin_star_gravity_well
      + Zone.travel_cost_planet_gravity * origin_planet_gravity_well
      + Zone.travel_cost_star_gravity * destination_star_gravity_well
      + Zone.travel_cost_planet_gravity * destination_planet_gravity_well
  end

end

---Gets delta_v between two zones/spaceships; will fetch it from `global.cache_travel_delta_v` if
---it has been previously calculated for that origin-destination pair.
---@param origin AnyZoneType|SpaceshipType Origin zone or spaceship
---@param destination AnyZoneType|SpaceshipType Destination zone or spaceship
---@return number delta_v
function Zone.get_travel_delta_v(origin, destination)
  if origin and destination then
    if origin.type == "spaceship" or destination.type == "spaceship" then
      return Zone.get_travel_delta_v_sub(origin, destination)
    end
    global.cache_travel_delta_v = global.cache_travel_delta_v or {}
    global.cache_travel_delta_v[origin.index] = global.cache_travel_delta_v[origin.index] or {}
    if not global.cache_travel_delta_v[origin.index][destination.index] then
      global.cache_travel_delta_v[origin.index][destination.index] = Zone.get_travel_delta_v_sub(origin, destination)
    end
    return global.cache_travel_delta_v[origin.index][destination.index]
  end
end

function Zone.get_launch_delta_v(zone)
  -- 10000 to 800 for planets, 0 for in space
  return 500 + (zone.radius or 50)
end

function Zone.get_closest_zone(origin, destination_list)
  if origin and destination_list then
    if Util.table_contains(destination_list, origin) then return origin end
    local destination = nil
	local delta_v_closest = math.huge
	local delta_v_current = nil
    for _, zone in pairs(destination_list) do
	  delta_v_current = Zone.get_travel_delta_v(origin, zone)
      if delta_v_current < delta_v_closest then
	    delta_v_closest = delta_v_current
	    destination = zone
	  end
    end
    return destination
  end
end

function Zone.find_zone_landing_position(zone, try_position)
  Log.debug_log("Zone.find_zone_landing_position: " ..zone.name)
  local surface = Zone.get_make_surface(zone)

  if not try_position then
    if zone.type == "spaceship" then
      try_position = Spaceship.get_boarding_position(zone)
    elseif Zone.is_solid(zone) then
      local try_angle = math.random() * math.pi * 2 -- rad
      local try_distance = math.random() * (zone.radius / 4 or 512)
      try_position = {x = math.cos(try_angle) * try_distance, y = math.sin(try_angle) * try_distance}
    else
      try_position = {x = math.random(-512, 512), y = math.random(-128, 128)}
    end
  end
  surface.request_to_generate_chunks(try_position, 2)
  surface.force_generate_chunk_requests()
  local safe_position
  if Zone.is_solid(zone) then
    safe_position = surface.find_non_colliding_position(collision_rocket_destination_surface, try_position, 64, 1)
  else
    safe_position = surface.find_non_colliding_position(collision_rocket_destination_orbit, try_position, 64, 1)
  end
  if not safe_position then
    local try_position_2 = {x = 64 * (math.random() - 0.5), y = 64 * (math.random() - 0.5)}
    surface.request_to_generate_chunks(try_position_2, 2)
    surface.force_generate_chunk_requests()
    if Zone.is_solid(zone) then
      safe_position = surface.find_non_colliding_position(collision_rocket_destination_surface, try_position_2, 64, 1)
    else
      safe_position = surface.find_non_colliding_position(collision_rocket_destination_orbit, try_position_2, 64, 1)
    end
  end
  if safe_position then
    Log.debug_log("Zone.find_zone_landing_position: safe_position found")
    return safe_position
  else
    Log.debug_log("Zone.find_zone_landing_position: safe_position not found, falling back to try_position")
    return try_position
  end
end

function Zone.dropdown_name_from_zone(zone, no_indent)
  local i1 = "    "
  local i2 = "        "
  local i3 = "              "
  if no_indent then
    i1 = ""
    i2 = ""
    i3 = ""
  end
  if zone.type == "orbit" then
    if zone.parent.type == "star" then
      return "[img=virtual-signal/se-star] " .. zone.name -- star orbit
    elseif zone.parent.type == "planet" then
      return i2.."[img=virtual-signal/se-planet-orbit] " .. zone.name  -- planet orbit
    elseif zone.parent.type == "moon" then
      return i3.."[img=virtual-signal/se-moon-orbit] " .. zone.name -- moon orbit
    end
  elseif zone.type == "asteroid-belt" then
    return i1 .. "[img=virtual-signal/se-asteroid-belt] " .. zone.name
  elseif zone.type == "planet" then
    return i1 .. "[img=virtual-signal/se-planet] " ..  zone.name
  elseif zone.type == "moon" then
    return i2 .. "[img=virtual-signal/se-moon] " ..  zone.name
  elseif zone.type == "asteroid-field" then
    return "[img=virtual-signal/"..mod_prefix..zone.type .. "] " .. zone.name .. " [color=black](Asteroid Field)[/color]"
  elseif zone.type == "anomaly" then
    return "[img=virtual-signal/"..mod_prefix..zone.type .. "] " .. zone.name .. " [color=black](Anomaly)[/color]"
  elseif zone.type == "spaceship" then
    return "[img=virtual-signal/"..mod_prefix..zone.type .. "] " .. zone.name .. " [color=black](Spaceship)[/color]"
  end
  return "[img=virtual-signal/"..mod_prefix..zone.type .. "] " .. zone.name
end

function Zone.get_alphabetised()
  local zones_alphabetised = {}
  for _, zone in pairs(global.zone_index) do
    table.insert(zones_alphabetised, zone)
  end
  for _, spaceship in pairs(global.spaceships) do
    table.insert(zones_alphabetised, spaceship)
  end
  table.sort(zones_alphabetised, function(a,b) return a.name < b.name end)
  return zones_alphabetised
end

function Zone.is_visible_to_force(zone, force_name)
  if global.debug_view_all_zones then return true end
  if zone.type == "spaceship" then return zone.force_name == force_name end
  if not (global.forces[force_name] and global.forces[force_name].zones_discovered) then return false end
  return global.forces[force_name].zones_discovered[zone.index] or (zone.type == "orbit" and global.forces[force_name].zones_discovered[zone.parent.index]) and true or false
end
function Zone.insert_if_visible_to_force(target_table, zone, force_name)
  if Zone.is_visible_to_force(zone, force_name) then table.insert(target_table, zone) end
end

function Zone.dropdown_list_zone_destinations(player, force_name, current, alphabetical, filter, wildcard, star_restriction, excluded_types)
  -- wildcard = {list = "display", value={type = "any"}}
  -- excluded_types = {"spaceship", "star", "moon"}
  local selected_index = 1
  local list = {""}
  local values = {{type = "nil", index = nil}} -- zone indexes
  excluded_types = excluded_types or {}

  local forcedata = global.forces[force_name]
  if not forcedata then return list, selected_index, values end

  local playerdata = get_make_playerdata(player)
  playerdata.dropdowns_hide_low_priority_zones = playerdata.dropdowns_hide_low_priority_zones
    or settings.get_player_settings(player.index)["se-dropdowns-hide-low-priority-zones"].value
  playerdata.dropdowns_priority_threshold = playerdata.dropdowns_priority_threshold
    or settings.get_player_settings(player.index)["se-dropdowns-priority-threshold"].value

  if wildcard then
    table.insert(list, wildcard.list)
    table.insert(values, wildcard.value)
  end

  local function conditional_add_zone_to_list(zone)
    local priority_toggle = playerdata.dropdowns_hide_low_priority_zones
    local priority_threshold = playerdata.dropdowns_priority_threshold

    if global.debug_view_all_zones
     or (zone.type == "spaceship" and forcedata.force_name == zone.force_name)
     or (zone.type ~= "spaceship" and (forcedata.zones_discovered[zone.index] or (zone.type == "orbit" and forcedata.zones_discovered[zone.parent.index]))) then
      local allowed_system = true
      if Util.table_contains(excluded_types, zone.type) then
        allowed_system = false
      end
      if star_restriction then
        allowed_system = false
        if zone == star_restriction
        or Zone.get_star_from_child(zone) == star_restriction then
          allowed_system = true
        end
      end
      if allowed_system then
        if not priority_toggle
          or Zone.get_priority(zone, player.force.name) >= priority_threshold
          or (current and zone.type == current.type and zone.index == current.index) then
          if zone.type == "spaceship" then
            table.insert(list, Zone.dropdown_name_from_zone(zone, alphabetical or filter))
            table.insert(values, {type = "spaceship", index = zone.index})
            if current and zone.type == current.type and zone.index == current.index then selected_index = #list end
          else
            table.insert(list, Zone.dropdown_name_from_zone(zone, alphabetical or filter))
            table.insert(values, {type = "zone", index = zone.index})
            if current and zone.type == current.type and zone.index == current.index then selected_index = #list end
          end
        end
      end
    end
  end

  if alphabetical == true or filter then
    for _, zone in pairs(Zone.get_alphabetised()) do
      -- ignore stars since we only want to list star orbits
      if zone.type ~= "star" then
        if (not filter) or string.find(string.lower(zone.name), string.lower(filter), 1, true) then
          conditional_add_zone_to_list(zone)
        end
      end
    end
  else
    conditional_add_zone_to_list(global.universe.anomaly)

    for _, star in pairs(global.universe.stars) do
      conditional_add_zone_to_list(star.orbit)
      for _, planet in pairs(star.children) do
        conditional_add_zone_to_list(planet)
        if planet.children then
          conditional_add_zone_to_list(planet.orbit)
          for _, moon in pairs(planet.children) do
            conditional_add_zone_to_list(moon)
            conditional_add_zone_to_list(moon.orbit)
          end
        end
      end
    end

    for _, zone in pairs(global.universe.space_zones) do
      conditional_add_zone_to_list(zone)
    end

    if not Util.table_contains(excluded_types, "spaceship") then
      for _, spaceship in pairs(global.spaceships) do
        conditional_add_zone_to_list(spaceship)
      end
    end
  end

  if star_restriction then
    if filter then
      list[1] = (#list - 1) .. " matching locations in system"
    else
      list[1] = (#list - 1) .. " known locations in system"
    end
  else
    if filter then
      list[1] = (#list - 1) .. " matching locations"
    else
      list[1] = (#list - 1) .. " known locations"
    end
  end

  return list, selected_index, values
end

function Zone.on_runtime_mod_setting_changed(event)
  if event.player_index and event.setting_type == "runtime-per-user" then
    local player_index = event.player_index
    local playerdata = get_make_playerdata(game.players[player_index])

    if event.setting == Zone.name_setting_dropdowns_hide_low_priority then
      playerdata.dropdowns_hide_low_priority_zones = settings.get_player_settings(player_index)[Zone.name_setting_dropdowns_hide_low_priority].value
    elseif event.setting == Zone.name_setting_dropdowns_priority_threshold then
      playerdata.dropdowns_priority_threshold =  settings.get_player_settings(player_index)[Zone.name_setting_dropdowns_priority_threshold].value
    end
  end
end
Event.addListener(defines.events.on_runtime_mod_setting_changed, Zone.on_runtime_mod_setting_changed)

function Zone.build_tile_replacements(zone)
    -- replaces biome_collections in replace specifications with the full biome names
    --[[
  convert :
  biome_replacement = {
    {replace={"all-dirt", "all-sand", "all-volcanic"}, with="sand-red"},
    {replace={"all-vegetation", "all-frozen"}, with="vegetation-red"}
  }
  to
    {
      ["tile-from-1"] = "tile-to-1",
      ["tile-from-2"] = "tile-to-1",
    }
  ]]--
  if zone.biome_replacements then

    -- expand replacement collections
    local biome_replacements_expanded = {}
    for _, replacement in pairs(zone.biome_replacements) do
      local replace_biomes = {}
      for _, replace in pairs(replacement.replace) do
        if Zone.biome_collections[replace] then -- this is a collection name
          for _, biome_name in pairs(Zone.biome_collections[replace]) do
            if biome_name ~= replacement.with then -- don't replace to iteself
              table.insert(replace_biomes, biome_name)
            end
          end
        elseif replace ~= replacement.with then -- this is a biome name
          table.insert(replace_biomes, replace)
        end
      end
      table.insert(biome_replacements_expanded, {replace = replace_biomes, with = replacement.with})
    end
    -- biome_replacements_expanded now has all of the replace names being all biome names
    -- build tile map
    local tile_replacements = {}
    for _, replacement in pairs(biome_replacements_expanded) do
      local to_tiles = Zone.biome_tiles[replacement.with]
      local i = 0
      for _, replace in pairs(replacement.replace) do
        for _, replace_tile in pairs(Zone.biome_tiles[replace]) do
          tile_replacements[replace_tile] = to_tiles[(i % #to_tiles) + 1]
          i = i + 1
        end
      end
    end

    zone.tile_replacements = tile_replacements
  end

end

---Handles tile replacements for solid zones that require them.
---@param event on_chunk_generated Event data
function Zone.on_chunk_generated(event)
  local zone = Zone.from_surface(event.surface)

  -- Only proceed if zone is solid and has biome replacements that would be made
  if not (zone and Zone.is_solid(zone)) then return end
  if not (zone.biome_replacements and next(zone.biome_replacements)) then return end

  local surface = event.surface
  local area = event.area
  local set_tiles = {} -- by tile name, array of positions, for the surface.set_tiles function
  local count = 0

  if not zone.tile_replacements then
    Zone.build_tile_replacements(zone)
  end

  for x = area.left_top.x, area.right_bottom.x - 1 do
    for y = area.left_top.y, area.right_bottom.y - 1 do
      local tile = surface.get_tile(x, y)
      local tile_name = tile.name

      if zone.tile_replacements[tile_name] then
        count = count + 1
        set_tiles[count] = {
            name = zone.tile_replacements[tile_name],
            position = {x, y}
        }
      end
    end
  end

  if count > 0 then
    surface.set_tiles(set_tiles, true, true, false)
    surface.destroy_decoratives{area=area}
    surface.regenerate_decorative(nil, {{x=math.floor((area.left_top.x+16)/32), y=math.floor((area.left_top.y+16)/32)}})
  end
end
Event.addListener(defines.events.on_chunk_generated, Zone.on_chunk_generated)

function Zone.export_zone(zone)
  if not zone then return end
  -- not safe to deepcopy
  -- make all object table references id references instead.
  local export_zone = Util.shallow_copy(zone)
  if export_zone.orbit then
    export_zone.orbit_index = export_zone.orbit.index
    export_zone.orbit = nil
  end
  if export_zone.parent then
    export_zone.parent_index = export_zone.parent.index
    export_zone.parent = nil
  end
  if export_zone.children then
    export_zone.child_indexes = {}
    for i, child in pairs(export_zone.children) do
      export_zone.child_indexes[i] = child.index
    end
    export_zone.children = nil
  end
  -- should be safe to deepcopy now
  export_zone = Util.deep_copy(export_zone)
  return export_zone
end

function Zone.get_threat(zone)
  if Zone.is_solid(zone) then
    if zone.is_homeworld and zone.surface_index then
      local surface = Zone.get_surface(zone)
      local mapgen = surface.map_gen_settings
      if mapgen.autoplace_controls["enemy-base"] and mapgen.autoplace_controls["enemy-base"].size then
        return math.max(0, math.min(1, mapgen.autoplace_controls["enemy-base"].size / 3)) -- 0-1
      end
    end
    if zone.controls and zone.controls["enemy-base"] and zone.controls["enemy-base"].size then
      local threat = math.max(0, math.min(1, zone.controls["enemy-base"].size / 3)) -- 0-1
      if Zone.is_biter_meteors_hazard(zone) then
        return math.max(threat, 0.01)
      end
      return threat
    end
  end
  return 0
end

function Zone.get_hazards(zone)
  local hazards = {}
  if Zone.is_biter_meteors_hazard(zone) then
    table.insert(hazards, "biter-meteors")
  end
  if zone.plague_used then
    table.insert(hazards, "plague-world")
  end
  if zone.tags and util.table_contains(zone.tags, "water_none") then
    table.insert(hazards, "waterless")
  end
  return hazards
end

function Zone.is_biter_meteors_hazard(zone)
  return zone.controls and zone.controls["se-vitamelange"] and zone.controls["se-vitamelange"].richness > 0
end

function Zone.get_priority(zone, force_name)
  if global.forces[force_name] then
    if zone.type ~= "spaceship" and global.forces[force_name].zone_priorities and global.forces[force_name].zone_priorities[zone.index] then
      return global.forces[force_name].zone_priorities[zone.index]
    end
    if zone.type == "spaceship" and global.forces[force_name].spaceship_priorities and global.forces[force_name].spaceship_priorities[zone.index] then
      return global.forces[force_name].spaceship_priorities[zone.index]
    end
  end
  return 0
end

---Called for each zone during universe creation, shouldn't be called after that to avoid bot attrition changes.
---e.g. Threat can change, but bot attrition shouldn't.
---@param zone AnyZoneType|SpaceshipType
---@param default_rate? float Override the "robot attrition factor" mod setting. Nauvis will be set to this, other attritions will be biased by this.
function Zone.calculate_bot_attrition(zone, default_rate)
  if default_rate == nil then default_rate = settings.global["robot-attrition-factor"].value end
  if zone then
    if zone.type == "spaceship" then
      return 0 -- no attrition
    elseif zone.type == "anomaly" then -- anomalies are dangerous, give them an absolute increase
      return 10 + default_rate * 2
    elseif Zone.is_solid(zone) then -- planet or moon
      if zone.name == "Nauvis" or zone.is_homeworld then
        return default_rate
      end
      local enemy = 0
      if zone.controls and zone.controls["enemy-base"] and zone.controls["enemy-base"].size then
        enemy = Zone.get_threat(zone) -- 0-1
      end
      local rate = 0.5 * (1 - enemy * 0.9)
      rate = rate + 0.5 * zone.radius / 10000
      if enemy == 0 then -- add a penalty to enemy free zones
        rate = rate + 10
      end
      return rate * (0.5 + 0.5 * default_rate)
    else -- space
      local star_gravity_well = Zone.get_star_gravity_well(zone)
      local planet_gravity_well = Zone.get_planet_gravity_well(zone)
      local base_rate = star_gravity_well / 20 + planet_gravity_well / 200
      local rate = 10 * (0.01 + 0.99 * base_rate) -- 0-1
      return rate * (0.5 + 0.5 * default_rate)
    end
  end
end

function Zone.rebuild_surface_index()
  global.zones_by_surface = {}
  for _, zone in pairs(global.zone_index) do
    if zone.surface_index then
      if game.surfaces[zone.surface_index] then
        global.zones_by_surface[zone.surface_index] = zone
      else
        zone.surface_index = nil
      end
    end
  end
end

function Zone.trim_surface(zone, player_index)
  local surface = Zone.get_surface(zone)
  if not surface then return end

  local protected_forces = {
    friendly = "friendly",
    capture = "capture",
    conquest = "conquest"
  }

  -- Protect the ship before its been visited
  if zone.type == "anomaly" then protected_forces["ignore"] = "ignore" end

  for force_name, forcedata in pairs(global.forces) do
    if game.forces[force_name] and not is_system_force(force_name) then
      protected_forces[force_name] = force_name
    end
  end

  local protected_entities = table.deepcopy(Ancient.vault_entrance_structures)
  table.insert(protected_entities, Ancient.name_gate_blocker)
  table.insert(protected_entities, Ancient.name_gate_blocker_void)
  for name, stuff in pairs(Ancient.gate_fragments) do
    table.insert(protected_entities, name)
  end

  local min_x = 1000000
  local max_x = -1000000
  local min_y = 1000000
  local max_y = -1000000

  local entities = surface.find_entities_filtered{name = protected_entities}
  if #entities > 0 then
    for _, entity in pairs(entities) do
      --local p = entity.position
      local b = entity.bounding_box
      min_x = min_x and math.min(min_x, b.left_top.x) or b.left_top.x
      min_y = min_y and math.min(min_y, b.left_top.y) or b.left_top.y
      max_x = max_x and math.max(max_x, b.right_bottom.x) or b.right_bottom.x
      max_y = max_y and math.max(max_y, b.right_bottom.y) or b.right_bottom.y
    end
  end


  for chunk in surface.get_chunks() do
    if surface.count_entities_filtered{force = protected_forces, area = chunk.area} > 0 then
      min_x = min_x and math.min(min_x, chunk.area.left_top.x) or chunk.area.left_top.x
      min_y = min_y and math.min(min_y, chunk.area.left_top.y) or chunk.area.left_top.y
      max_x = max_x and math.max(max_x, chunk.area.right_bottom.x) or chunk.area.right_bottom.x
      max_y = max_y and math.max(max_y, chunk.area.right_bottom.y) or chunk.area.right_bottom.y
    end
  end

  local chunk_min_x = math.floor(min_x/32) -1
  local chunk_max_x = math.floor(max_x/32) +1
  local chunk_min_y = math.ceil(min_y/32) -1
  local chunk_max_y = math.ceil(max_y/32) +1

  local chunks_deleted = 0
  for chunk in surface.get_chunks() do
    if chunk.x < chunk_min_x
      or chunk.x > chunk_max_x
      or chunk.y < chunk_min_y
      or chunk.y > chunk_max_y then
        chunks_deleted = chunks_deleted + 1
        surface.delete_chunk(chunk)
    end
  end
  rendering.draw_rectangle{
    color = {0,0,1},
    widht = 1,
    filled = false,
    left_top = {min_x, min_y},
    right_bottom = {max_x, max_y},
    surface = surface,
    time_to_live = 60
  }
  rendering.draw_rectangle{
    color = {1,0,0},
    widht = 1,
    filled = false,
    left_top = {chunk_min_x*32, chunk_min_y*32},
    right_bottom = {chunk_max_x*32, chunk_max_y*32},
    surface = surface,
    time_to_live = 60
  }
  game.print({"space-exploration.trim-zone-results", chunks_deleted, zone.name, chunk_min_x, chunk_max_x, chunk_min_y, chunk_max_y})
  --game.print("Deleted "..chunks_deleted.." from "..zone.name ..". Trimmed X ["..chunk_min_x.." to "..chunk_max_x.."] Y ["..chunk_min_y.." to "..chunk_max_y.."]")

end

---Deletes a surface associated with a zone after ensuring no player entities exist on that surface.
---@param zone AnyZoneType Zone to be deleted
---@param player_index uint Index of player requesting the deletion
function Zone.delete_surface(zone, player_index)
  local player = player_index and game.players[player_index] or nil

  if zone.surface_index == 1 then
    if player then player.print("Game cannot delete surface 1.") end
  elseif zone.is_homeworld then
    if player then player.print("Cannot delete homeworlds.") end
  elseif zone.type == "anomaly" then
    if player then player.print("Cannot delete anomalies.") end
  elseif zone.type == "spaceship" then
    if player then player.print("Cannot delete spaceships. They must be landed and dismantled.") end
  elseif not zone.surface_index then
    if player then player.print("Zone has no surface.") end
  else
    local surface = Zone.get_surface(zone)
    if not surface then
      --error(Zone.name.." has a surface but it was missing.")
      zone.surface_index = nil
      Zone.rebuild_surface_index()
      return
    end

    -- Count entities belonging to player forces, limit=1 because we only care if nonzero
    local count_entities = surface.count_entities_filtered{
      force=get_player_forces(),
      type={"character", "electric-pole", "container", "logistic-container"},
      limit=1
    }

    if count_entities > 0 then
      if player then player.print("Cannot delete a zone with player entities.") end
    else
      local event = {
        player_index = player_index,
        surface_index = surface.index,
        zone_index = zone.index,
        zone_name = zone.name
      }

      -- Run `space_exploration_delete_surface` functions in other mods' remote interfaces
      for interface, functions in pairs(remote.interfaces) do
        if functions["space_exploration_delete_surface"] then
          ---@type table<string, boolean|LocalisedString|string>
          local result = remote.call(interface, "space_exploration_delete_surface", event)
          if type(result) == "table" and result.allow_delete == false then
            if player and (type(result.message) == "table" or type(result.message) == "string") then
              player.print(result.message)
              log("Deletion of surface of " .. zone.name .. " was stopped by " .. interface)
            end
            return
          end
        end
      end

      -- All checks passed, surface will be deleted
      log("Deleting surface for zone: " .. zone.name)

      -- Find all players viewing that surface and teleport their controller to their homeworlds
      for _, player in pairs(game.connected_players) do
        if player.surface == surface then
          local force = player.force
          local home_zone
          if global.forces[force.name] and global.forces[force.name].homeworld_index then
            home_zone = Zone.from_zone_index(global.forces[force.name].homeworld_index)
          end
          if not home_zone then home_zone = Zone.from_name("Nauvis") end
          player.teleport({0,0}, Zone.get_make_surface(home_zone))
        end
      end

      -- Remove zone from meteor zones
      if not global.meteor_zones then global.meteor_zones = {} end
      global.meteor_zones[zone.index] = nil

      -- Delete the surface
      game.delete_surface(surface)
      zone.surface_index = nil
      zone.deleted_surface = {tick = game.tick, player_index = player_index}
      Zone.rebuild_surface_index()
    end
  end
end

---Sets the solar multiplier of a newly created surface that is not associated with an SE zone.
---@param event on_surface_created
function Zone.on_surface_created(event)
  local zone = Zone.from_surface_index(event.surface_index)
  if not zone then
    game.surfaces[event.surface_index].solar_power_multiplier = Zone.solar_multiplier * 0.5
  end
end
Event.addListener(defines.events.on_surface_created, Zone.on_surface_created)

function Zone.on_research_finished(event)

  local force = event.research.force
  local source = {"", "[img=item/se-space-telescope] ", {"space-exploration.telescope-data-analysis"}}

  if event.research.name == Zone.name_tech_discover_random then
    local dicovered_something = Zone.discover_next_research(force.name, source, false)
    if not dicovered_something then
      force.print({"space-exploration.tech-discovered-nothing"})
    end
  elseif  event.research.name == Zone.name_tech_discover_targeted then
    local dicovered_something = Zone.discover_next_research(force.name, source, true)
    if not dicovered_something then
      force.print({"space-exploration.tech-discovered-nothing"})
    end
  elseif  event.research.name == Zone.name_tech_discover_deep then
    local dicovered_something = Zone.discover_next_research_deep_space(force.name, source, false)
    if not dicovered_something then
      force.print({"space-exploration.tech-deep-discovered-nothing"})
    end
  end
end
Event.addListener(defines.events.on_research_finished, Zone.on_research_finished)

---Deletes solid zone surfaces that are _entirely_ made up of out-of-map tiles and were previously
---deleted. Deletes chunks in space zones that have out-of-map tiles, and deletes the surfaces they
---belong to if no remaining properly generated chunks are found.
function Zone.fix_out_of_map_tiles()
  for _, zone in pairs(global.zones_by_name) do
    local surface = Zone.get_surface(zone)

    if surface then
      if Zone.is_solid(zone) and zone.deleted_surface then
        local chunk_count = 0
        local contains_other_tiles = false

        for chunk in surface.get_chunks() do
          if surface.count_tiles_filtered{name="out-of-map", area=chunk.area} < 1024 then
            contains_other_tiles = true
            break
          end
          chunk_count = chunk_count + 1
        end
        if not contains_other_tiles then
          log("Zone.fix_out_of_map_tiles: All " .. chunk_count .. " chunks in " .. zone.name .. " (" .. zone.type .. ") found to have only out-of-map tiles" )
          Zone.delete_surface(zone)
        end
      elseif Zone.is_space(zone) and zone.type ~= "spaceship" then
        local chunks_checked, chunks_deleted = 0, 0
        for chunk in surface.get_chunks() do
            local count = surface.count_tiles_filtered{
                name="out-of-map", area=chunk.area, limit=1}
            if count > 0 and surface.count_entities_filtered{area=chunk.area, limit=1} == 0 then
                surface.delete_chunk(chunk)
                chunks_deleted = chunks_deleted + 1
            end
            chunks_checked = chunks_checked + 1
        end
        log("Zone.fix_out_of_map_tiles: Deleted " .. chunks_deleted .. "/" .. chunks_checked .. " chunks from " .. zone.name .. " (" .. zone.type .. ")")
        if zone.deleted_surface and chunks_checked == chunks_deleted then
          Zone.delete_surface(zone)
        end
      end
    end
  end
end

function Zone.zone_fix_all_tiles(zone) -- or spaceship
  -- debug command
  --/c p = game.player po = p.position for x = -5,5 do for y = -5,5 do p.surface.set_tiles{{name = "dirt-1", position = {x+po.x, y=y+po.y}}} end end
  local surface = Zone.get_surface(zone)
  if surface then
    if Zone.is_space(zone) then
      if zone.type ~= "spaceship" or zone.own_surface_index then
        -- remove planet tiles
        local tiles = surface.find_tiles_filtered{
          collision_mask = global.named_collision_masks.planet_collision_layer
        }
        local set_tiles = {}
        for _, tile in pairs(tiles) do
          --if not Util.table_contains(tiles_allowed_in_space, tile.name) then
            -- remove the tile
            table.insert(set_tiles, {name = name_space_tile, position = tile.position})
            surface.set_hidden_tile(tile.position, nil)
          --end
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

        log("Zone.zone_fix_all_tiles: " .. zone.type.." " .. zone.name.." is_space "..#set_tiles.." tiles changed surface_index "..surface.index.." surface_name " .. surface.name)
      else
        log("Zone.zone_fix_all_tiles: " .. zone.type.." " .. zone.name.." anchored surface_index "..surface.index.." surface_name " .. surface.name)
      end
    else
      -- remove space tiles
      local tiles = surface.find_tiles_filtered{
        collision_mask = global.named_collision_masks.space_collision_layer
      }
      local set_tiles = {}
      for _, tile in pairs(tiles) do
        if not Util.table_contains(Spaceship.names_spaceship_floors, tile.name) then -- spacehip floor is allowed
          -- remove the tile
          table.insert(set_tiles, {name = "nuclear-ground", position = tile.position})
          surface.set_hidden_tile(tile.position, nil)
        end
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

      log("Zone.zone_fix_all_tiles: " .. zone.type.." " ..zone.name.." is_land "..#set_tiles.." tiles changed surface_index "..surface.index.." surface_name " .. surface.name)

    end
  end
end

function Zone.zones_fix_all_tiles()
  for _, zone in pairs(global.zone_index) do
    Zone.zone_fix_all_tiles(zone)
  end
  if global.spaceships then
    for _, spaceship in pairs(global.spaceships) do
      Zone.zone_fix_all_tiles(spaceship)
    end
  end
end

---Sets a given zone as the homeworld of a given force. Only planets can be set as homeworlds.
---@param data table Arguments can include zone_name, match_nauvis_seed, and reset_surface
---@return PlanetType?
function Zone.set_zone_as_homeworld(data)
  local zone = Zone.from_name(data.zone_name)
  local nauvis = Zone.from_name("Nauvis")
  if not zone then
    game.print("No zone found")
  else
    if zone.type ~= "planet" then
      game.print("Zone type must be planet, selected zone is: " .. zone.type)
      return
    else
      zone.is_homeworld = true
      zone.inflated = true
      zone.resources = {}
      zone.ticks_per_day = 25000
      zone.fragment_name = "se-core-fragment-omni"
      zone.radius = nauvis.radius

      local nauvis_map_gen = table.deepcopy(game.surfaces[1].map_gen_settings)

      if not zone.original_seed then
        zone.original_seed = zone.seed
      end
      if data.match_nauvis_seed then
        zone.seed = nauvis_map_gen.seed
      else
        nauvis_map_gen.seed = zone.seed
      end

      local surface = Zone.get_surface(zone)
      if surface and data.reset_surface ~= false then
        surface.map_gen_settings = nauvis_map_gen
        surface.clear()
      else
        surface = Zone.get_make_surface(zone)
        surface.map_gen_settings = nauvis_map_gen
      end

      Universe.make_validate_homesystem(zone)
      global.resources_and_controls_compare_string = nil -- force udpate resources
      Universe.load_resource_data()

      surface.request_to_generate_chunks({0,0}, 4)
      surface.force_generate_chunk_requests()

      if settings.startup[mod_prefix.."spawn-small-resources"].value then
        Zone.spawn_small_resources(surface)
      end

    end
  end

  return Zone.export_zone(Zone.from_name(data.zone_name))
end

function Zone.spawn_small_resources(surface)

  local seed = surface.map_gen_settings.seed
  local rng = game.create_random_generator(seed)
  -- The starting resourecs of the map generation are inconsistent and spread out.
  -- Add some tiny patches to reduce the amount of running around at the start.
  -- We only care about super-early game, so just iron, copper, stone, and coal.
  -- If there are other resources added to the game then the naturally spawned resources will have to do for now.
  -- These resources are not designed to replace the normal starting resources at all.
  local valid_position_search_range = 256
  local cluster_primary_radius = 50 -- get away from crash site
  local cluster_secondary_radius = 25
  local resources = {}
  if game.entity_prototypes["iron-ore"] then table.insert(resources, { name = "iron-ore", tiles = 200, amount = 100000}) end
  if game.entity_prototypes["copper-ore"] then table.insert(resources, { name = "copper-ore", tiles = 150, amount = 80000}) end
  if game.entity_prototypes["stone"] then table.insert(resources, { name = "stone", tiles = 150, amount = 80000}) end
  if game.entity_prototypes["coal"] then table.insert(resources, { name = "coal", tiles = 150, amount = 80000}) end

  local cluster_orientation = rng()
  local secondary_orientation = rng()
  local cluster_position = Util.orientation_to_vector(cluster_orientation, cluster_primary_radius)
  surface.request_to_generate_chunks(cluster_position, 4)
  surface.force_generate_chunk_requests()

  Log.trace("[gps="..math.floor(cluster_position.x)..","..math.floor(cluster_position.y).."]")
  local closed_tiles = {} -- 2d disctionary
  local open_tiles = {} -- 1d array
  local function close_tile(position)
    closed_tiles[position.x] = closed_tiles[position.x] or {}
    closed_tiles[position.x][position.y] = true
  end
  local function open_tile(set, position) -- don't open if closed
    if not (closed_tiles[position.x] and closed_tiles[position.x][position.y]) then
      table.insert(set, position)
      close_tile(position)
    end
  end
  local function open_neighbour_tiles(set, position)
    open_tile(set, Util.vectors_add(position, {x=0,y=-1}))
    open_tile(set, Util.vectors_add(position, {x=1,y=0}))
    open_tile(set, Util.vectors_add(position, {x=0,y=1}))
    open_tile(set, Util.vectors_add(position, {x=-1,y=0}))
  end
  for i, resource in pairs(resources) do
    resource.orientation = secondary_orientation + rng()
    local offset = Util.orientation_to_vector(resource.orientation, rng(cluster_secondary_radius/2, cluster_secondary_radius))
    local position = Util.tile_to_position(Util.vectors_add(offset, cluster_position))
    local valid = surface.find_non_colliding_position(resource.name, position, valid_position_search_range, 1, true)
    if not valid then Log.trace("no valid position found") end
    resource.start_point = surface.find_non_colliding_position(resource.name, position, valid_position_search_range, 1, true) or position
    resource.open_tiles = {resource.start_point}
    resource.entities = {}
    resource.amount_placed = 0
  end
  local continue = true
  local repeats = 0
  while continue and repeats < 1000 do
    repeats = repeats + 1
    continue = false
    for _, resource in pairs(resources) do
      --if #resource.entities < resource.tiles then
      if resource.amount_placed < resource.amount then
        continue = true
        local try_tile
        if #resource.open_tiles > 0 then
          local choose = rng(#resource.open_tiles)
          try_tile = resource.open_tiles[choose]
          close_tile(try_tile)
        end
        if not try_tile then -- handle tiny island case
          try_tile = resource.start_point
        end
        local position = surface.find_non_colliding_position(resource.name, try_tile, valid_position_search_range, 1, true)
        if not position then -- exit
          resource.amount_placed = resource.amount
          log("Space Exploration failed to place starting resource, no valid positions in range. [".. resource.name.."]")
        else
          close_tile(try_tile)
          close_tile(position)
          local remaining = resource.amount - resource.amount_placed
          local amount = math.ceil(math.min( remaining * (0.01 + rng() * 0.005) + 100 + rng() * 100, remaining))
          resource.amount_placed = resource.amount_placed + amount
          table.insert(resource.entities, surface.create_entity{name = resource.name, position=position, amount=amount, enable_tree_removal=true, snap_to_tile_center =true})
          --Log.trace("Starting resource entity created "..resource.name.." ".. position.x.." "..position.y)
          open_neighbour_tiles(resource.open_tiles, position)
        end
      end
    end
  end

end

---Iterates over every game surface, and if it's part of a zone, creates an `inhabited_chunks`
---table that it populates with positions of chunks that have eletric poles, assembling machines,
---or ammo turrets.
function Zone.create_inhabited_chunks()
  for _, surface in pairs(game.surfaces) do
    local zone = Zone.from_surface(surface)

    if zone and zone.type ~= "spaceship" and not zone.inhabited_chunks then
      zone.inhabited_chunks = {}

      local entities = surface.find_entities_filtered{
        type={"electric-pole", "assembling-machine", "ammo-turret"},
        force=get_player_forces()
      }
      for __, entity in pairs(entities) do
        local chunks = Zone.get_chunks_from_bounding_box(entity.bounding_box)

        for key, chunk in pairs(chunks) do
          if not zone.inhabited_chunks[key] then zone.inhabited_chunks[key] = chunk end
        end
      end
    end
  end
end

---Returns an array containing the chunk or chunks that intersect a given BoundingBox.
---@param box BoundingBox Bounding box of the entity of interest
---@return table<string, ChunkPosition> chunks
function Zone.get_chunks_from_bounding_box(box)
  local vertices, chunks = {}, {}

  -- Get the four vertices of the bounding box
  vertices[1] = {x=box.left_top.x, y=box.left_top.y}
  vertices[2] = {x=box.right_bottom.x, y=box.left_top.y}
  vertices[3] = {x=box.right_bottom.x, y=box.right_bottom.y}
  vertices[4] = {x=box.left_top.x, y=box.right_bottom.y}

  --Rotate vertices if an orientation is provided
  if box.orientation then
    local angle = box.orientation * 2 * math.pi
    local origin_x = box.left_top.x + ((box.right_bottom.x - box.left_top.x) / 2)
    local origin_y = box.left_top.y + ((box.right_bottom.y - box.left_top.y) / 2)

    for _, vertex in pairs(vertices) do
      local x, y = vertex.x-origin_x, vertex.y-origin_y
      vertex.x = x*math.cos(angle) - y*math.sin(angle) + origin_x
      vertex.y = x*math.sin(angle) + y*math.cos(angle) + origin_y
    end
  end

  -- Collect all the unique chunks that the vertices are positioned in
  for _, vertex in pairs(vertices) do
    local chunk_x = math.floor(vertex.x / 32)
    local chunk_y = math.floor(vertex.y / 32)

    local key = chunk_x .. "/" .. chunk_y
    if not chunks[key] then chunks[key] = {x=chunk_x, y=chunk_y} end
  end

  return chunks
end

---Returns an array containing the chunk coordinates that compose the full planet
---@param zone SolidBodyType
---@return table<uint, ChunkPosition> chunks
function Zone.get_all_chunk_positions(zone)
  if not zone.radius then return end
  local chunks = {}

  -- We consider the horizontal line between chunks, starting at the top one
  -- e.g. for a planet of radius 68, that starting line would be y=-64
  local bottom_of_top_chunk = - (zone.radius - (zone.radius % 32))

  -- For each horizontal line between chunks
  -- We also do the bottom half of the circle at the same time since planets are symmetrical and centered on the origin
  for y = bottom_of_top_chunk, 0, 32 do
    -- Coordinates of a circle: x^2 + y^2 = r^2
    -- which gives us x = +/- sqrt(r^2 - y^2)
    local x = math.sqrt(zone.radius^2 - y^2)
    local left_chunk_x = - math.floor(x / 32) - 1
    local right_chunk_x = math.floor(x / 32)

    -- Top half of the circle, we add the chunks *above* the y line we are considering
    -- Bottom half of the circle, we add the chunks *below* the y line we are considering
    -- (Both will be done for y == 0)
    local chunk_y_top_half = math.floor(y / 32) - 1
    local chunk_y_bottom_half = math.floor(- y / 32)

    for chunk_x=left_chunk_x, right_chunk_x do
      table.insert(chunks, {x=chunk_x, y=chunk_y_top_half})
      table.insert(chunks, {x=chunk_x, y=chunk_y_bottom_half})
    end
  end

  return chunks
end

---Checks whether all chunks of a zone have been generated
---@param zone AnyZoneType
---@return boolean
function Zone.is_every_chunk_generated(zone)
  if not zone.radius then return false end -- Zones without radius are infinite

  local surface = Zone.get_surface(zone)
  for _, chunk_position in pairs(Zone.get_all_chunk_positions(zone)) do
    if not surface.is_chunk_generated(chunk_position) then
      return false
    end
  end

  return true
end

---Verifies zone is fully generated and hostiles are cleared, prints messages, lowers threat if needed.
---Called when clicking the "Confirm hostile extinction" button in Universe Explorer
---@param zone AnyZoneType
---@param player_index uint Player that called this.
function Zone.confirm_extinction(zone, player_index)
  if not zone.radius then return end
  if not zone.surface_index then return end

  local surface = Zone.get_surface(zone)
  local player = game.players[player_index]
  local enemy_count = surface.count_entities_filtered{ -- Same enemy search as auto-glaive
    force = enemy_forces(player.force),
    type = {"unit-spawner", "turret"},
    limit = 1
  }
  if enemy_count > 0 then
    player.print{"space-exploration.confirm-extinction-failure-not-fully-extinct", zone.name}
    return
  end

  if not Zone.is_every_chunk_generated(zone) then
    player.print{"space-exploration.confirm-extinction-failure-not-fully-generated", zone.name}
    return
  end

  -- Success!
  zone.hostiles_extinct = true
  zone.controls["enemy-base"] = {frequency = 0, size = -1, richness = -1}
  local map_gen_settings = surface.map_gen_settings
  map_gen_settings.autoplace_controls["enemy-base"] = {frequency = 0, size = -1, richness = -1}
  surface.map_gen_settings = map_gen_settings

  for _, connected_player in pairs(game.connected_players) do
    if Zonelist.get_main_window(connected_player.index) then
      Zonelist.gui_update_zone_in_list(connected_player.index, zone)
      Zonelist.gui_update_selected(connected_player.index)
    end
  end

  if Zone.is_biter_meteors_hazard(zone) then
    player.force.print{"space-exploration.confirm-extinction-success-biter-meteors", zone.name}
  else
    player.force.print{"space-exploration.confirm-extinction-success", zone.name}
  end
end

---Adds chunk position to `zone.inhabited_chunks` upon building an electric pole, assembling
---machine, or ammo turret, if not already present.
---@param event EntityCreationEvent
function Zone.on_entity_created(event)
  local entity = event.created_entity or event.entity
  if not entity.valid then return end
  if entity.type ~= "electric-pole" and
    entity.type ~= "assembling-machine" and
    entity.type ~= "ammo-turret" then
    return
  end

  -- Abort if entity surface is not part of a zone or belongs to a spaceship (in flight)
  local zone = Zone.from_surface(entity.surface)
  if not zone or zone.type == "spaceship" then return end

  -- Abort if this is not a player force
  if not is_player_force(entity.force.name) then return end

  zone.inhabited_chunks = zone.inhabited_chunks or {}

  -- Add each chunk to `zone.inhabited_chunks` if it doens't exist
  local chunks = Zone.get_chunks_from_bounding_box(entity.bounding_box)
  for key, chunk in pairs(chunks) do
    if not zone.inhabited_chunks[key] then zone.inhabited_chunks[key] = chunk end
  end
end
Event.addListener(defines.events.on_built_entity, Zone.on_entity_created)
Event.addListener(defines.events.on_robot_built_entity, Zone.on_entity_created)
Event.addListener(defines.events.script_raised_built, Zone.on_entity_created)
Event.addListener(defines.events.script_raised_revive, Zone.on_entity_created)

---Searches the chunk in which the electric pole, assembling machine, or ammo turret were removed
---and deletes the chunk reference from `zone.inabited_chunks` if no other entities are found.
---@param event EntityRemovalEvent
function Zone.on_entity_removed(event)
  local entity = event.entity
  if not entity.valid then return end
  if entity.type ~= "electric-pole" and
    entity.type ~= "assembling-machine" and
    entity.type ~= "ammo-turret" then
    return
  end

  -- Abort if entity surface is not part of a zone or belongs to a spaceship (in flight)
  local zone = Zone.from_surface(entity.surface)
  if not zone or zone.type == "spaceship" or not zone.inhabited_chunks then return end

  -- Abort if this is not a player force
  if not is_player_force(entity.force.name) then return end

  local chunks = Zone.get_chunks_from_bounding_box(entity.bounding_box)

  for key, chunk in pairs(chunks) do
    local count = entity.surface.count_entities_filtered{
      type={"electric-pole", "assembling-machine", "ammo-turret"},
      area={
        left_top={x=chunk.x*32, y=chunk.y*32},
        right_bottom={x=(chunk.x+1)*32, y=(chunk.y+1)*32}
      },
      limit=2
    }

    -- Removed entity still gets counted by game
    if count <= 1 then zone.inhabited_chunks[key] = nil end
  end
end
Event.addListener(defines.events.on_player_mined_entity, Zone.on_entity_removed)
Event.addListener(defines.events.on_robot_mined_entity, Zone.on_entity_removed)
Event.addListener(defines.events.on_entity_died, Zone.on_entity_removed)
Event.addListener(defines.events.script_raised_destroy, Zone.on_entity_removed)

---Deletes `inhabited_chunks` table since it's no longer accurate.
---@param event on_surface_deleted
function Zone.on_surface_deleted(event)
  local zone = Zone.from_surface_index(event.surface_index)
  if zone and zone.type ~= "spaceship" then zone.inhabited_chunks = nil end
end
Event.addListener(defines.events.on_surface_deleted, Zone.on_surface_deleted)

return Zone
