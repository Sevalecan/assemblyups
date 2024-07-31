
if mods["NPUtils"] then
data:extend(
{
  --Item
  {
    type = "item",
    name = "purification-chamber-X10",
    icon = "__NPUtils__/graphics/icon/purification-chamber-icon.png",
	icon_size = 64,
    --flags = {"goes-to-quickbar"},
    subgroup = "n-orepro",
    order = "a",
    place_result = "purification-chamber-X10",
    stack_size = 20
  },
  --Recipe
    {
    type = "recipe",
    name = "purification-chamber-X10",
	energy_required = 2.0,
    enabled = "true",
    ingredients = 
    {
      {"purification-chamber", 10},
	  {"electronic-circuit", 50}
    },
    result = "purification-chamber-X10"
  },
  --Technology

  --Entity
    {
    type = "assembling-machine",
    name = "purification-chamber-X10",
    icon = "__NPUtils__/graphics/icon/purification-chamber-icon.png",
	icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "purification-chamber-X10"},
    max_health = 200,
    corpse = "medium-remnants",
	resistances = {{type = "fire",percent = 80}},
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"purrification-chamber-X10",},
    energy_usage = "4MW",
    ingredient_count = 4,
    crafting_speed = 4,
    energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.003, },
	fast_replaceable_group = "assembling-machine",
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	module_specification =
		{
			module_slots = 4
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    working_sound =
    {
    sound = {
    {
    filename = "__base__/sound/assembling-machine-t1-1.ogg",
    volume = 0.8
    },
    {
    filename = "__base__/sound/assembling-machine-t1-2.ogg",
    volume = 0.8
    },
    },
    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    apparent_volume = 1.5,
    },
    animation =
		--[[{
			south = { filename = "__NPUtils__/graphics/entity/purification-chamber.png", width = 128, height = 128, shift = {0.25, 0.25}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
			west  = { filename = "__NPUtils__/graphics/entity/purification-chamber.png", width = 128, height = 128, shift = {0.25, 0.25}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,					
			north = { filename = "__NPUtils__/graphics/entity/purification-chamber.png", width = 128, height = 128, shift = {0.25, 0.25}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
			east  = { filename = "__NPUtils__/graphics/entity/purification-chamber.png", width = 128, height = 128, shift = {0.25, 0.25}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
		},]]	
		{
			south = { filename = "__NPUtils__/graphics/entity/purification-chamber.png", width = 256, height = 256, shift = {0.28125, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },							
			west  = { filename = "__NPUtils__/graphics/entity/purification-chamber.png", width = 256, height = 256, shift = {0.28425, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },					
			north = { filename = "__NPUtils__/graphics/entity/purification-chamber.png", width = 256, height = 256, shift = {0.28125, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },								
			east  = { filename = "__NPUtils__/graphics/entity/purification-chamber.png", width = 256, height = 256, shift = {0.28125, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },								
		},	
    },
 }
)

end
