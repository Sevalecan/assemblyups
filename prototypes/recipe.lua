data:extend
(
{
  {
    type = "recipe-category",
    name = "crafting-a"
  },
  {
    type = "recipe-category",
    name = "crafting-b"
  },
  {
    type = "recipe-category",
    name = "crafting-c"
  },
  {
    type = "recipe-category",
    name = "crafting-d"
  },
  {
    type = "recipe-category",
    name = "crafting-e"
  },
  {
    type = "recipe",
    name = "speed-modulev2",
    category = "crafting-a",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"advanced-circuit", 5},
      {"electronic-circuit", 5}
    },
    energy_required = 1,
    results =
    {
      {
        type = "item", name = "speed-module", amount_min = 2, amount_max = 10
      },
	},
  },
  {
		type = "recipe",
		name = "productivity-modulev2",				
		energy_required = 3.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="advanced-circuit", amount=10},
			{type="item", name="electronic-circuit", amount=100},
        },		
        results =
            {
              {
                type = "item", name = "productivity-module", amount_min = 2, amount_max = 10
               },
        	},
		category = "crafting-a",
		icon = "__base__/graphics/icons/productivity-module.png",
		icon_size = 32,
	  order = "a", --group = "NPUtils", subgroup = "stuff",
  },


  {
    type = "recipe",
    name = "iron-gear-wheel",
    normal =
    {
      ingredients = {{"iron-plate", 2}},
      result = "iron-gear-wheel"
    },
  },

  {
    type = "item",
    name = "industrial-strenght-duct-tape",
    icon = "__assembly__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "industrial-strenght-duct-tape",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 25,
    category = "chemistry",
    requester_paste_multiplier = 10,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=1000, fluidbox_index = 2}
    },
    result_count = 10,
    result = "industrial-strenght-duct-tape"
  },
  {
    type = "recipe",
    name = "solid-fuel-from-light-oil",
    category = "chemistry",
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="light-oil", amount=10}
    },
    results=
    {
      {type="item", name="solid-fuel", amount=1}
    },
    icon = "__base__/graphics/icons/solid-fuel-from-light-oil.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    enabled = false,
    hide_from_player_crafting = true,
    order = "b[fluid-chemistry]-c[solid-fuel-from-light-oil]",
    crafting_machine_tint =
    {
      primary = {r = 0.710, g = 0.633, b = 0.482, a = 1.000}, -- #b5a17aff
      secondary = {r = 0.745, g = 0.672, b = 0.527, a = 1.000}, -- #beab86ff
      tertiary = {r = 0.894, g = 0.773, b = 0.596, a = 1.000}, -- #e4c598ff
      quaternary = {r = 0.812, g = 0.583, b = 0.202, a = 1.000}, -- #cf9433ff
    }
  },

  {
    type = "recipe",
    name = "solid-fuel-from-petroleum-gas",
    category = "chemistry",
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=20}
    },
    results=
    {
      {type="item", name="solid-fuel", amount=1}
    },
    icon = "__base__/graphics/icons/solid-fuel-from-petroleum-gas.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    enabled = false,
    hide_from_player_crafting = true,
    order = "b[fluid-chemistry]-d[solid-fuel-from-petroleum-gas]",
    crafting_machine_tint =
    {
      primary = {r = 0.768, g = 0.631, b = 0.768, a = 1.000}, -- #c3a0c3ff
      secondary = {r = 0.659, g = 0.592, b = 0.678, a = 1.000}, -- #a896acff
      tertiary = {r = 0.774, g = 0.631, b = 0.766, a = 1.000}, -- #c5a0c3ff
      quaternary = {r = 0.564, g = 0.364, b = 0.564, a = 1.000}, -- #8f5c8fff
    }
  },

  {
    type = "recipe",
    name = "solid-fuel-from-heavy-oil",
    category = "chemistry",
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=20}
    },
    results=
    {
      {type="item", name="solid-fuel", amount=1}
    },
    icon = "__base__/graphics/icons/solid-fuel-from-heavy-oil.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    enabled = false,
    hide_from_player_crafting = true,
    order = "b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]",
    crafting_machine_tint =
    {
      primary = {r = 0.889, g = 0.628, b = 0.566, a = 1.000}, -- #e2a090ff
      secondary = {r = 0.803, g = 0.668, b = 0.644, a = 1.000}, -- #ccaaa4ff
      tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000}, -- #d9a892ff
      quaternary = {r = 1.000, g = 0.395, b = 0.127, a = 1.000}, -- #ff6420ff
    }
  },
  {
    type = "item",
    name = "labx10",
    icon = "__base__/graphics/icons/lab.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[lab]",
    place_result = "labx10",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "labx10",
    enabled = true,
    energy_required = 2,
    ingredients =
    {
      {"lab", 10},}
    },
    result = "labx10"
  },
  {
    type = "lab",
    name = "labx10",
    icon = "__base__/graphics/icons/lab.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "labx10"},
    max_health = 1500,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    on_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-light.png",
          blend_mode = "additive",
          draw_as_light = true,
          width = 106,
          height = 100,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(-1, 1),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-light.png",
            blend_mode = "additive",
            draw_as_light = true,
            width = 216,
            height = 194,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 0),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "750kW",
    researching_speed = 10,
    inputs = lab_inputs,
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.9}
    }
  },
  {
    type = "item",
    name = "labx25",
    icon = "__base__/graphics/icons/lab.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[lab]",
    place_result = "labx25",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "labx25",
    energy_required = 5,
    ingredients =
    {
      {"labx10", 3},},
      {"industrial-strenght-duct-tape", 500},}
    },
    result = "labx25"
  },
  {
    type = "lab",
    name = "labx25",
    icon = "__base__/graphics/icons/lab.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "labx25"},
    max_health = 1500,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    on_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-light.png",
          blend_mode = "additive",
          draw_as_light = true,
          width = 106,
          height = 100,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(-1, 1),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-light.png",
            blend_mode = "additive",
            draw_as_light = true,
            width = 216,
            height = 194,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 0),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "2MW",
    --drain = "250KW",
    researching_speed = 25,
    inputs = lab_inputs,
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.9}
    }
  },
  {
    type = "item",
    name = "labx50",
    icon = "__base__/graphics/icons/lab.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[lab]",
    place_result = "labx50",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "labx50",
    energy_required = 5,
    ingredients =
    {
      {{"labx25", 5},},
      {{"industrial-strenght-duct-tape", 5000},}
    },
    result = {{"labx50", 2},},
  },
  {
    type = "lab",
    name = "labx50",
    icon = "__base__/graphics/icons/lab.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "labx50"},
    max_health = 1500,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    on_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-light.png",
          blend_mode = "additive",
          draw_as_light = true,
          width = 106,
          height = 100,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(-1, 1),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-light.png",
            blend_mode = "additive",
            draw_as_light = true,
            width = 216,
            height = 194,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 0),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "5MW",
    drain = "500KW",
    researching_speed = 50,
    inputs = lab_inputs,
    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.9}
    }
  },






  {
    type = "recipe",
    name = "processing-unit",
    enabled = false,
    hide_from_player_crafting = true,
    category ="electronics-with-fluid"
    energy_required = 10,
    ingredients =
    {
        {"electronic-circuit", 10000},
        {"advanced-circuit", 1000},
        {type = "fluid", name = "high-pressure-sulfuric-acid", amount = 25}
    },
    result = "processing-unit",
    result_count = 50,
  },
  
  



}
)
