if mods["NPUtils"] then

data:extend(
{
  --Item
  {
    type = "item",
    name = "heat-forge-chamber-X100",
    icon = "__NPUtils__/graphics/icon/heat-forge-chamber-icon.png",
	icon_size = 32,
    --flags = {"goes-to-quickbar"},
    subgroup = "n-orepro",
    order = "e",
    place_result = "heat-forge-chamber-X100",
    stack_size = 50
  },
  --Recipe
    {
    type = "recipe",
    name = "heat-forge-chamber-X100",
	energy_required = 1,
    enabled = "true",
    ingredients = 
    {
	  {"heat-forge-chamber-X10", 10},
	  {"n-adv-electric-component", 20}
    },
    result = "heat-forge-chamber-X100"
  },
  --Technology
  
  --Entity
    {
    type = "assembling-machine",
		name = "heat-forge-chamber-X100",
		icon = "__NPUtils__/graphics/icon/heat-forge-chamber-icon.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "heat-forge-chamber-X100"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes =
		{
			--[[{
				production_type = "input",
                pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},]]
			{
				production_type = "output",
				pipe_picture = forgepipepictures(),
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
		crafting_categories = {"heating-chamber-X100","heating-chamber-X10",},
		energy_usage = "80MW",
        ingredient_count = 4,
        crafting_speed = 4.5,
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.023, },
		fast_replaceable_group = "assembling-machine",
		module_specification =
		{
			module_slots = 5
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
			south = { filename = "__NPUtils__/graphics/entity/heat-forge-chamber.png", width = 128, height = 128, shift = {0.25, 0.125}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
			west  = { filename = "__NPUtils__/graphics/entity/heat-forge-chamber.png", width = 128, height = 128, shift = {0.25, 0.125}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,					
			north = { filename = "__NPUtils__/graphics/entity/heat-forge-chamber.png", width = 128, height = 128, shift = {0.25, 0.125}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
			east  = { filename = "__NPUtils__/graphics/entity/heat-forge-chamber.png", width = 128, height = 128, shift = {0.25, 0.125}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
		},]]
		{
			south = { filename = "__NPUtils__/graphics/entity/heat-forge-chamber.png", width = 256, height = 256, shift = {0.25, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,							
			west  = { filename = "__NPUtils__/graphics/entity/heat-forge-chamber.png", width = 256, height = 256, shift = {0.25, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,					
			north = { filename = "__NPUtils__/graphics/entity/heat-forge-chamber.png", width = 256, height = 256, shift = {0.25, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,							
			east  = { filename = "__NPUtils__/graphics/entity/heat-forge-chamber.png", width = 256, height = 256, shift = {0.25, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,						
		},

	},
        
 }
)
end

