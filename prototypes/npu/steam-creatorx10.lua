
if mods["NPUtils"] then
data:extend(
{
  --Item
  {
    type = "item",
    name = "steam-creatorx10",
    icon = "__NPUtils__/graphics/icon/steam-creator-icon.png",
	icon_size = 32,
    --flags = {"goes-to-quickbar"},
    subgroup = "n-boiler",
    order = "e",
    place_result = "steam-creatorx10",
    stack_size = 50
  },
  --Recipe
    {
    type = "recipe",
    name = "steam-creatorx10",
	energy_required = 1,
    enabled = "true",
    ingredients = 
    {
      {"n-ri-plate", 18},
	  {"steam-creator", 10},
    },
    result = "steam-creatorx10"
  },
  --Technology

  --Entity
    {
    type = "assembling-machine",
		name = "steam-creatorx10",
		icon = "__NPUtils__/graphics/icon/steam-creator-icon.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "steam-creator"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = steamcreatorpipepictures(),
                pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2} }},
				secondary_draw_orders = { north = -1 },
			},
			{
				production_type = "input",
				pipe_picture = steamcreatorpipepictures(),
                pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }},
				secondary_draw_orders = { north = -1 },
			},
			{
				production_type = "output",
				pipe_picture = steamcreatorpipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }},
				secondary_draw_orders = { north = -1 },
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		crafting_categories = {"oil-burnerx10"},
		energy_usage = "2.5MW",
        ingredient_count = 4,
        crafting_speed = 2.75,
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.05, },
		fast_replaceable_group = "assembling-machine",
		module_specification =
		{
			module_slots = 2
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
        idle_sound = { filename = "__base__/sound/boiler.ogg", volume = 0.6 },
        apparent_volume = 1.5,
        },
		animation =
		{ 
		    filename = "__NPUtils__/graphics/entity/steam-creator.png",
			width = 256,
			height = 256,
			shift = {0.21875, 0.09375},
			frame_count = 16,
			line_length = 8,
			scale = 0.5,
			animation_speed=1,
		},
		--[[{
			south = { filename = "__NPUtils__/graphics/entity/steam-creator.png", width = 128, height = 128, shift = {0.21875, 0.09375}, frame_count = 16, line_length = 16, animation_speed=1, }	,							
			west  = { filename = "__NPUtils__/graphics/entity/steam-creator.png", width = 128, height = 128, shift = {0.21875, 0.09375}, frame_count = 16, line_length = 16, animation_speed=1, }	,					
			north = { filename = "__NPUtils__/graphics/entity/steam-creator.png", width = 128, height = 128, shift = {0.21875, 0.09375}, frame_count = 16, line_length = 16, animation_speed=1, }	,							
			east  = { filename = "__NPUtils__/graphics/entity/steam-creator.png", width = 128, height = 128, shift = {0.21875, 0.09375}, frame_count = 16, line_length = 16, animation_speed=1, }	,							
		},]]

	},
        
 }
)
end

