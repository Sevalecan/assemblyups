if mods["NPUtils"] then


data:extend(
{
  --Item
  {
    type = "item",
    name = "washer-chamber-X10",
    icon = "__NPUtils__/graphics/icon/washer-chamber-icon.png",
	icon_size = 64,
    --flags = {"goes-to-quickbar"},
    subgroup = "n-orepro",
    order = "c",
    place_result = "washer-chamber-X10",
    stack_size = 50
  },
  --Recipe
    {
    type = "recipe",
    name = "washer-chamber-X10",
	energy_required = .75,
    enabled = "true",
    ingredients = 
    {
	  {"np-pipe", 50},
	  {"washer-chamber", 10},
    },
    result = "washer-chamber-X10"
  },
  --Technology

  --Entity
    {
    type = "assembling-machine",
		name = "washer-chamber-X10",
		icon = "__NPUtils__/graphics/icon/washer-chamber-icon.png",
		icon_size = 64,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "washer-chamber-X10"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = washerpipepictures(),
                pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }},
				--secondary_draw_orders = { north = -1 }
			},
			--[[{
				production_type = "output",
                pipe_covers = npipecovers(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},]]
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		crafting_categories = {"washing-chamber-X10",},
		energy_usage = "10MW",
        ingredient_count = 4,
        crafting_speed = 5.25,
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.0021, },
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
        filename = "__base__/sound/chemical-plant.ogg",
        volume = 0.8
        },       
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
        },
		animation =
		--[[{
			south = { filename = "__NPUtils__/graphics/entity/washer-chamber.png", width = 128, height = 128, shift = {0.3, -0}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
			west  = { filename = "__NPUtils__/graphics/entity/washer-chamber.png", width = 128, height = 128, shift = {0.3, -0}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,					
			north = { filename = "__NPUtils__/graphics/entity/washer-chamber.png", width = 128, height = 128, shift = {0.3, -0}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
			east  = { filename = "__NPUtils__/graphics/entity/washer-chamber.png", width = 128, height = 128, shift = {0.3, -0}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
		},]]
		{
			south = { filename = "__NPUtils__/graphics/entity/washer-chamber.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,							
			west  = { filename = "__NPUtils__/graphics/entity/washer-chamber.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,				
			north = { filename = "__NPUtils__/graphics/entity/washer-chamber.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,							
			east  = { filename = "__NPUtils__/graphics/entity/washer-chamber.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,						
		},

	},
        
 }
)
end

