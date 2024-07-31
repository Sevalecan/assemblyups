data:extend
(
{
    
  {
    type = "recipe",
    name = "oil-refinery-X100",
    energy_required = 8,
    ingredients =
    {
      {"steel-plate", 1500},
      {"iron-gear-wheel", 100},
      {"stone-brick", 100},
      {"electronic-circuit", 1000},
      {"pipe", 100},
      {"oil-refinery", 100},
      {"industrial-strenght-duct-tape", 2500},
    },
    result = "oil-refinery-X100",
    enabled = false
  },
  {
    type = "item",
    name = "oil-refinery-X100",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "d[refinery]",
    place_result = "oil-refinery-X100",
    stack_size = 10
  },
  --entity
  {
    type = "assembling-machine",
    name = "oil-refinery-X100",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.2, result = "oil-refinery-X100"},
    max_health = 350,
    corpse = "oil-refinery-remnants",
    dying_explosion = "oil-refinery-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    --damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 3
    },
    scale_entity_info_icon = true,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"Fluids-X100"},
    crafting_speed = 5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 6
    },
    energy_usage = "100MW",

    animation = make_4way_animation_from_spritesheet(
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
          width = 337,
          height = 255,
          frame_count = 1,
          shift = {2.515625, 0.484375},
          hr_version =
          {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
            width = 386,
            height = 430,
            frame_count = 1,
            shift = util.by_pixel(0, -7.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
          width = 337,
          height = 213,
          frame_count = 1,
          shift = util.by_pixel(82.5, 26.5),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
            width = 674,
            height = 426,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            force_hr_shadow = true,
            scale = 0.5
          }
        }
      }
    }),

    working_visualisations =
    {
      {
        north_position = util.by_pixel(34, -65),
        east_position = util.by_pixel(-52, -61),
        south_position = util.by_pixel(-59, -82),
        west_position = util.by_pixel(57, -58),
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.5,
            shift = util.by_pixel(0, -14.25)
          }
        },
        light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },

    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/oil-refinery.ogg"
      },
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 48,
        shift = util.by_pixel(5, 95),
        variation_count = 4,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = true
    }
  },

}
)