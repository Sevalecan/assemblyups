local Tech = {}

--[[
Record tech state, especially levels, so they can be restored by migrations
-- At the start of on_configuration_changed, tech_state is saved to old_tech_state, then removed after migrations
]]

function Tech.record_old_force_technologies(force)
  local forcedata = global.forces[force.name]
  if not forcedata then return end
  if not forcedata.tech_state then return end
  forcedata.old_tech_state = forcedata.tech_state
  if is_debug_mode then
    Log.debug_log("Force " .. force.name .." old tech state:")
    Log.debug_log(serpent.block(forcedata.old_tech_state))
  end
end

function Tech.record_old_forces_technologies()
  for _, force in pairs(game.forces) do
    Tech.record_old_force_technologies(force)
  end
end

function Tech.clear_old_force_technologies(force)
  local forcedata = global.forces[force.name]
  if not forcedata then return end
  forcedata.old_tech_state = nil -- don't bloat savefile
  Tech.record_force_technologies(force)
end

function Tech.clear_old_forces_technologies()
  for _, force in pairs(game.forces) do
    Tech.clear_old_force_technologies(force)
  end
end

function Tech.record_force_technologies(force)
  local forcedata = global.forces[force.name]
  if not forcedata then return end
  forcedata.tech_state = {}

  for _, technology in pairs(force.technologies) do
    forcedata.tech_state[technology.name] = {
      researched = technology.researched,
      level = technology.level
    }
  end
end

function Tech.on_research_finished(event)
  Tech.record_force_technologies(event.research.force)
end
Event.addListener(defines.events.on_research_finished, Tech.on_research_finished)

return Tech
