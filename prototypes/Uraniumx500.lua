data:extend
(
{
  {
    type = "recipe",
    name = "uranium-processing-X500",
    energy_required = 15,
    enabled = true,
    hide_from_player_crafting = true,
    category = "centrifugingX500",
    ingredients = {{"uranium-ore", 5000}},
    icon = "__base__/graphics/icons/uranium-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "machine_c",
    order = "c",
    results =
    {
      {
        name = "uranium-235",
        probability = 0.007,
        amount = 500
      },
      {
        name = "uranium-238",
        probability = 0.993,
        amount = 500
      }
    }
  },
  {
    type = "recipe",
    name = "kovarex-enrichment-process-X500",
    energy_required = 90,
    enabled = true,
    hidden = true,
    category = "centrifugingX500",
    ingredients = {{"uranium-235", 20000}, {"uranium-238", 12500}},
    icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-c[kovarex-enrichment-process]",
    main_product = "",
    results = {{"uranium-235", 20550}, {"uranium-238", 1025}},
    allow_decomposition = false
  },
  {
    type = "recipe",
    name = "nuclear-fuel-reprocessing-X500",
    energy_required = 90,
    enabled = true,
    hide_from_player_crafting = true,
    category = "centrifugingX500",
    ingredients = {{"used-up-uranium-fuel-cell", 500}},
    icon = "__base__/graphics/icons/nuclear-fuel-reprocessing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-b[nuclear-fuel-reprocessing]",
    main_product = "",
    results = {{"uranium-238", 300}},
    allow_decomposition = false
  },
  {
    type = "recipe",
    name = "uranium-fuel-cell-X500",
    energy_required = 20,
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"iron-plate", 4750},
      {"uranium-235", 495},
      {"uranium-238", 9475}
    },
    result = "uranium-fuel-cell",
    result_count = 500
  },
  --Centrifuge
  {
    type = "item",
    name = "centrifugeX500",
    icon = "__base__/graphics/icons/centrifuge.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[centrifuge]",
    place_result = "centrifugeX500",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "centrifugeX500",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"concrete", 1000},
      {"steel-plate", 2500},
      {"advanced-circuit", 500},
      {"centrifugeX100", 5}
    },
    result = "centrifugeX500",
    requester_paste_multiplier= 10
  },

  {
    type = "assembling-machine",
    name = "centrifugeX500",
    icon = "__base__/graphics/icons/centrifuge.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "centrifugeX500"},
    max_health = 350,
    corpse = "centrifuge-remnants",
    dying_explosion = "centrifuge-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 99.9
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    --damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1.5, -2.2}, {1.5, 1.5}},

    always_draw_idle_animation = true,
    idle_animation =
    {
      layers =
      {
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C.png",
          priority = "high",
          line_length = 8,
          width = 119,
          height = 107,
          frame_count = 64,
          shift = util.by_pixel(-0.5, -26.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 237,
            height = 214,
            frame_count = 64,
            shift = util.by_pixel(-0.25, -26.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 132,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(20, -10),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 279,
            height = 152,
            frame_count = 64,
            shift = util.by_pixel(16.75, -10)
          }
        },
        -- Centrifuge B
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B.png",
          priority = "high",
          line_length = 8,
          width = 78,
          height = 117,
          frame_count = 64,
          shift = util.by_pixel(23, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 156,
            height = 234,
            frame_count = 64,
            shift = util.by_pixel(23, 6.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 124,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(63, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 251,
            height = 149,
            frame_count = 64,
            shift = util.by_pixel(63.25, 15.25)
          }
        },
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A.png",
          priority = "high",
          line_length = 8,
          width = 70,
          height = 123,
          frame_count = 64,
          shift = util.by_pixel(-26, 3.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 139,
            height = 246,
            frame_count = 64,
            shift = util.by_pixel(-26.25, 3.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
          priority = "high",
          draw_as_shadow = true,
          line_length = 8,
          width = 108,
          height = 54,
          frame_count = 64,
          shift = util.by_pixel(6, 27),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-shadow.png",
            priority = "high",
            draw_as_shadow = true,
            scale = 0.5,
            line_length = 8,
            width = 230,
            height = 124,
            frame_count = 64,
            shift = util.by_pixel(8.5, 23.5)
          }
        }
      }
    },

    working_visualisations =
    {
      {
        effect = "uranium-glow",
        fadeout = true,
        light = {intensity = 0.2, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}}
      },
      {
        effect = "uranium-glow",
        fadeout = true,
        draw_as_light = true,
        animation =
        {
          layers =
          {
            -- Centrifuge C
            {
              filename = "__base__/graphics/entity/centrifuge/centrifuge-C-light.png",
              priority = "high",
              blend_mode = "additive", -- centrifuge
              line_length = 8,
              width = 96,
              height = 104,
              frame_count = 64,
              shift = util.by_pixel(0, -27),

              hr_version =
              {
                filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-light.png",
                priority = "high",
                scale = 0.5,
                blend_mode = "additive", -- centrifuge
                line_length = 8,
                width = 190,
                height = 207,
                frame_count = 64,
                shift = util.by_pixel(0, -27.25)
              }
            },
            -- Centrifuge B
            {
              filename = "__base__/graphics/entity/centrifuge/centrifuge-B-light.png",
              priority = "high",
              blend_mode = "additive", -- centrifuge
              line_length = 8,
              width = 65,
              height = 103,
              frame_count = 64,
              shift = util.by_pixel(16.5, 0.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-light.png",
                priority = "high",
                scale = 0.5,
                blend_mode = "additive", -- centrifuge
                line_length = 8,
                width = 131,
                height = 206,
                frame_count = 64,
                shift = util.by_pixel(16.75, 0.5)
              }
            },
            -- Centrifuge A
            {
              filename = "__base__/graphics/entity/centrifuge/centrifuge-A-light.png",
              priority = "high",
              blend_mode = "additive", -- centrifuge
              line_length = 8,
              width = 55,
              height = 98,
              frame_count = 64,
              shift = util.by_pixel(-23.5, -2),
              hr_version =
              {
                filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-light.png",
                priority = "high",
                scale = 0.5,
                blend_mode = "additive", -- centrifuge
                line_length = 8,
                width = 108,
                height = 197,
                frame_count = 64,
                shift = util.by_pixel(-23.5, -1.75)
              }
            }
          }
        }
      }
    },
   -- open_sound = sounds.machine_open,
    --close_sound = sounds.machine_close,
    --vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/centrifuge-1.ogg",
          volume = 0.3
        },
        {
          filename = "__base__/sound/centrifuge-2.ogg",
          volume = 0.3
        },
        {
          filename = "__base__/sound/centrifuge-6.ogg",
          volume = 0.3
        }
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      --max_sounds_per_type = 3,
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 }
    },
    crafting_speed = 4,
    crafting_categories = {"centrifugingX500"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4,
      drain = "100MW"
    },
    energy_usage = "500MW",
    module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/centrifuge/centrifuge-reflection.png",
        priority = "extra-high",
        width = 28,
        height = 32,
        shift = util.by_pixel(0, 65),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  },

}
)