if mods["angelsrefining"] then
data:extend({
     {
      type = "item",
      name = "burner-ore-crusherx10",
      icons = {
        {
          icon = "__angelsrefining__/graphics/icons/ore-crusher-burner.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          --tint = angelsmods.refining.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      subgroup = "ore-crusher",
      order = "a[burner-ore-crusher]",
      place_result = "burner-ore-crusherx10",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "burner-ore-crusherx10",
      icons = {
        {
          icon = "__angelsrefining__/graphics/icons/ore-crusher-burner.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          --tint = angelsmods.refining.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 0.5, result = "burner-ore-crusherx10"},
      fast_replaceable_group = "ore-crusher",
      next_upgrade = "ore-crusherx10",
      max_health = 500,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      crafting_categories = {"ore-sorting-t1x10"},
      crafting_speed = 1.1,
      source_inventory_size = 1,
      energy_source = {
        type = "burner",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = 0.07 * 60,
        smoke = {
          {
            name = "smoke",
            deviation = {0.1, 0.1},
            frequency = 5,
            position = {0.0, -0.8},
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
          }
        }
      },
      energy_usage = "1100kW",
      ingredient_count = 2,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/ore-crusher/1ore-crusher.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 16,
            line_length = 4,
            shift = {0.45, -0.25},
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-crusher/2ore-crusher-overlay.png",
            tint = {r = 0.2, g = 0.2, b = 0.2},
            priority = "high",
            width = 128,
            height = 128,
            frame_count = 16,
            line_length = 4,
            shift = {0.45, -0.25}
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-crusher.ogg", volume = 0.8},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2
      }
    },
    {
      type = "item",
      name = "ore-crusherx10",
      icons = {
        {
          icon = "__angelsrefining__/graphics/icons/ore-crusher.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          --tint = angelsmods.refining.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      subgroup = "ore-crusher",
      order = "b[ore-crusher]",
      place_result = "ore-crusherx10",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-crusherx10",
      icons = {
        {
          icon = "__angelsrefining__/graphics/icons/ore-crusher.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          --tint = angelsmods.refining.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-crusher"},
      fast_replaceable_group = "ore-crusher",
      next_upgrade = "ore-crusher-2x10",
      max_health = 500,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-sorting-t1x10"},
      crafting_speed = 1.75,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "1250kW",
      ingredient_count = 3,
      animation = {
        filename = "__angelsrefining__/graphics/entity/ore-crusher/1ore-crusher.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 16,
        line_length = 4,
        shift = {0.45, -0.25},
        animation_speed = 0.5
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-crusher.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2
      }
    },
    {
      type = "item",
      name = "ore-crusher-2x10",
      icons = {
        {
          icon = "__angelsrefining__/graphics/icons/ore-crusher-2.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          --tint = angelsmods.refining.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      subgroup = "ore-crusher",
      order = "c[ore-crusher-2]",
      place_result = "ore-crusher-2x10",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-crusher-2x10",
      icons = {
        {
          icon = "__angelsrefining__/graphics/icons/ore-crusher-2.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          --tint = angelsmods.refining.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-crusher-2"},
      fast_replaceable_group = "ore-crusher",
      next_upgrade = "ore-crusher-3x10",
      max_health = 500,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-sorting-t1x10"},
      crafting_speed = 2.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "1500kW",
      ingredient_count = 3,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/ore-crusher/1ore-crusher.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 16,
            line_length = 4,
            shift = {0.45, -0.25},
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-crusher/2ore-crusher-overlay.png",
            tint = {r = 0.2, g = 0.3, b = 0.45},
            priority = "high",
            width = 128,
            height = 128,
            frame_count = 16,
            line_length = 4,
            shift = {0.45, -0.25}
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-crusher.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2
      }
    },
    {
      type = "item",
      name = "ore-crusher-3x10",
      icons = {
        {
          icon = "__angelsrefining__/graphics/icons/ore-crusher-3.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_4.png",
          --tint = angelsmods.refining.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      subgroup = "ore-crusher",
      order = "d[ore-crusher-3]",
      place_result = "ore-crusher-3x10",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-crusher-3x10",
      icons = {
        {
          icon = "__angelsrefining__/graphics/icons/ore-crusher-3.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_4.png",
          --tint = angelsmods.refining.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-crusher-3"},
      fast_replaceable_group = "ore-crusher",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-sorting-t1x10"},
      crafting_speed = 3.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "1750kW",
      ingredient_count = 3,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/ore-crusher/1ore-crusher.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 16,
            line_length = 4,
            shift = {0.45, -0.25},
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-crusher/2ore-crusher-overlay.png",
            tint = {r = 0.50, g = 0.1, b = 0.05},
            priority = "high",
            width = 128,
            height = 128,
            frame_count = 16,
            line_length = 4,
            shift = {0.45, -0.25}
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-crusher.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2
      }
    }


})
end