if mods["248k"] then
--local functions
local function config(name)
  return settings.startup['el_grower_'..name].value
end

local function sprite(name)
  return '__248k__/ressources/electronic/el_grower/el_grower_'..name
end

--item
data:extend({
  {
      name = 'el_grower_itemx10',
      type = 'item',
      icon = sprite('icon.png'),
      icon_size = 64,
      place_result = 'el_grower_entityx10',
      stack_size = 20,
      subgroup = "machine_c",
      order = "c",
  },
  {
        name = 'el_grower_recipex10',
        type = 'recipe',
        enabled = true,
        category = 'crafting',
        ingredients = {
            {'el_grower_item',10},
        },
        result = 'el_grower_itemx10',
        result_count = 1,
        energy_required = 4,
    },

})

--entity
data:extend({
--prototype
{
    name = 'el_grower_entityx10',
    type = 'assembling-machine',
    icon = sprite('icon.png'),
    icon_size = 64,
    flags = {"player-creation","placeable-neutral"},
    max_health = 300,
    corpse = 'big-remnants',
    collision_box = {{-2.4,-2.4},{2.4,2.4}},
    selection_box = {{-2.5,-2.5},{2.5,2.5}},
    map_color = {r=0, g=0, b=1, a=1},
    minable = {
        mining_time = 1,
        result = 'el_grower_itemx10',
    },
    crafting_categories = {'el_grower_categoryx10'},
    crafting_speed = 1,
    ingredient_count = 3,
    --fixed_recipe = 'el_water_pressure_recipe',
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input',
    },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
        module_specification = {
            module_info_icon_shift = {
              0,
              0.8
            },
            module_slots = 4
        }, 
    energy_usage = '2.4MW',
    fluid_boxes = {
        {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_covers = pipecoverspictures(),
          pipe_picture = south_basic_pipe_picture,
          pipe_connections =
          {
            {type = "input", position = {0, -3}},
          },
          production_type = "input"
        },
        { 
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_covers = pipecoverspictures(),
          pipe_picture = south_basic_pipe_picture,
          pipe_connections =
          {
            {type = "input", position = {-3, 0}}
          },
          production_type = "input"
        },
        { 
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_covers = pipecoverspictures(),
          pipe_picture = south_basic_pipe_picture,
          pipe_connections =
          {
            {type = "input", position = {3, 0}},
            --{type = "output", position = {2, -2.5}}
          },
          production_type = "input"
        },
        {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_covers = pipecoverspictures(),
          pipe_picture = south_basic_pipe_picture,
          pipe_connections =
          {
            {type = "input", position = {0, 3}},
          },
          production_type = "input"
        },
    },
    --animation
    animation = {
        north = {
            filename = sprite('entity_animation.png'),
            size = {512,512},
            scale = 0.32,
            line_length = 3,
            frame_count = 3,
            animation_speed = 0.2,
            shift = {0, -0.2}
        },
        east = {
            filename = sprite('entity_animation.png'),
            size = {512,512},
            scale = 0.32,
            line_length = 3,
            frame_count = 3,
            animation_speed = 0.2,
            shift = {0, -0.2}
        },
        south = {
            filename = sprite('entity_animation.png'),
            size = {512,512},
            scale = 0.32,
            line_length = 3,
            frame_count = 3,
            animation_speed = 0.2,
            shift = {0, -0.2}
        },
        west = {
            filename = sprite('entity_animation.png'),
            size = {512,512},
            scale = 0.32,
            line_length = 3,
            frame_count = 3,
            animation_speed = 0.2,
            shift = {0, -0.2}
        },
    },
    working_sound =
    {
      sound = {filename = "__base__/sound/chemical-plant-3.ogg" },
      apparent_volume = 0.1,
    },
},
})
end