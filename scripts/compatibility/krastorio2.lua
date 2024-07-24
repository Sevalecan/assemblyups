local Krastorio2 = {}

function Krastorio2.notify_spaceship_slowdown(entity)
  local count = entity.surface.count_tiles_filtered{area = entity.bounding_box, name = "se-spaceship-floor", limit=1}

  if count > 0 then
    entity.surface.create_entity{
      type = "flying-text",
      name = "flying-text",
      position = entity.position,
      text = {"message.se-entity-spaceship-slowdown", entity.localised_name},
      color = {r = 1},
    }
  end
end

function Krastorio2.notify_spaceship_victory_tech_on_game_start()
  for _, force_data in pairs(game.forces) do
    if    force_data.technologies["se-spaceship-victory"].enabled
      and force_data.get_entity_count("kr-activated-intergalactic-transceiver") == 0
    then
      game.print("A mod has enabled the Space Exploration Spaceship Victory tech that is usually prototype locked to disabled when Krastorio 2 is enabled.")
    end
  end
end

-- Runs when the SE migration code runs Migrate.v0_5_095
function Krastorio2.disable_spaceship_victory_tech_on_migrate()
  if script.active_mods["Krastorio2"] then
    -- Check each force to see if we need to disable the technology.
    for _, force_data in pairs(game.forces) do
      -- Only need to disable if the focre does not have an Activated Transceiver.
      -- In this case we cannot know if the force had a previously Activated Transceiver that was destroyed.
      if force_data.get_entity_count("kr-activated-intergalactic-transceiver") == 0 then
        force_data.technologies["se-spaceship-victory"].enabled = false
      end
    end
  end
end

function Krastorio2.disable_spaceship_victory_tech_on_config_change()
  for _, force_data in pairs(game.forces) do
    if force_data.get_entity_count("kr-activated-intergalactic-transceiver") == 0 then
      force_data.technologies["se-spaceship-victory"].enabled = false
    end
  end
end

function Krastorio2.enable_spaceship_victory_tech_on_config_change()
  for _, force_data in pairs(game.forces) do
    force_data.technologies["se-spaceship-victory"].enabled = true
  end
end

function Krastorio2.on_resource_setting_load()
  if not script.active_mods["Krastorio2"] then return end
  local mineral_water_control = {
    allowed_for_zone = {["homeworld"] = true},
    resource = "mineral-water",
    tags_required_for_presence = {"water_low","water_med","water_high","water_max"},
    tags_required_for_primary = {"water_high","water_max"},
    yeild_affected_by = {water = 1}
  }
  Universe.add_resource_setting_override(mineral_water_control)
end
Event.addListener("on_resource_setting_load", Krastorio2.on_resource_setting_load, true)

function Krastorio2.disable_transceiver_win()
  if remote.interfaces["kr-intergalactic-transceiver"] and remote.interfaces["kr-intergalactic-transceiver"]["set_no_victory"] then
    remote.call("kr-intergalactic-transceiver", "set_no_victory", true)
  end
end

function Krastorio2.on_configuration_changed(event)
  if event.mod_changes then
    local oldK2Version
    local newK2Version

    if event.mod_changes["Krastorio2"] then
      oldK2Version = event.mod_changes["Krastorio2"].old_version
      newK2Version = event.mod_changes["Krastorio2"].new_version
    end

    if oldK2Version or newK2Version then
      -- Adding K2 to SE
      if oldK2Version == nil then
        Krastorio2.disable_spaceship_victory_tech_on_config_change()
        Krastorio2.disable_transceiver_win()
      end
      -- Removing K2 from SE
      if newK2Version == nil then
        Krastorio2.enable_spaceship_victory_tech_on_config_change()
      end
    end
  end
end
Event.addListener("on_configuration_changed",Krastorio2.on_configuration_changed, true)

function Krastorio2.on_init()
  -- Creating a new game / On adding SE to an existing game
  if script.active_mods["Krastorio2"] then
    Krastorio2.notify_spaceship_victory_tech_on_game_start()
    Krastorio2.disable_transceiver_win()
  end
end
Event.addListener("on_init",Krastorio2.on_init, true)

function Krastorio2.on_entity_created(event)
  local entity = event.entity or event.created_entity
  if not entity.valid then return end

  if entity.name == "kr-activated-intergalactic-transceiver" then
    if not entity.force.technologies["se-spaceship-victory"].enabled then
      entity.force.technologies["se-spaceship-victory"].enabled = true
    end
  elseif entity.name == "kr-antimatter-reactor" then
    Krastorio2.notify_spaceship_slowdown(entity)
  end
end
Event.addListener(defines.events.on_built_entity, Krastorio2.on_entity_created)
Event.addListener(defines.events.on_robot_built_entity, Krastorio2.on_entity_created)
Event.addListener(defines.events.script_raised_built, Krastorio2.on_entity_created)
Event.addListener(defines.events.script_raised_revive, Krastorio2.on_entity_created)
return Krastorio2
