if mods["angelsrefining"] then
data:extend(
  {
    {
      type = "item",
      name = "blast-furnacex10",
      icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5,
      subgroup = "angels-blast-furnace",
      order = "a[blast-furnace]",
      place_result = "blast-furnacex10",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "blast-furnacex10",
      icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "blast-furnacex10"},
      fast_replaceable_group = "blast-furnace",
      next_upgrade = "blast-furnace-2x10",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 0
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"blast-smelting", "blast-smeltingx10"},
      crafting_speed = 1.1,
      energy_source = {
        type = "burner",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = 0.03 * 60,
        smoke = {
          {
            name = "smoke",
            deviation = {0.1, 0.1},
            frequency = 10,
            position = {-2.0, -1.8},
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
          }
        },
        light_flicker = {
          color = {0, 0, 0},
          minimum_light_size = 0,
          light_intensity_to_size_coefficient = 0,
        }
      },
      energy_usage = "1.500MW",
      ingredient_count = 4,
      animation = 
      {
        layers = 
        {
          {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-base.png",
            priority = "high",
            width = 164,
            height = 189,
            shift = util.by_pixel(0, -14),
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-base.png",
              priority = "high",
              width = 328,
              height = 376,
              shift = util.by_pixel(0, -13.5),
              scale = 0.5,
          },
          {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-shadow.png",
            priority = "high",
            width = 224,
            height = 124,
            shift = util.by_pixel(30, 20),
            draw_as_shadow = true,
            filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-shadow.png",
            priority = "high",
            width = 445,
            height = 245,
            shift = util.by_pixel(29, 19.5),
            draw_as_shadow = true,
            scale = 0.5,
          }
        }
      },
      working_visualisations = {
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-fire.png",
            priority = "high",
            width = 12,
            height = 25,
            line_length = 8,
            frame_count = 48,
            animation_speed = 0.5,
            shift = util.by_pixel(4, 29),
            draw_as_glow = true,
            hr_version = {
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-fire.png",
              priority = "high",
              width = 23,
              height = 50,
              line_length = 8,
              frame_count = 48,
              animation_speed = 0.5,
              shift = util.by_pixel(3, 29),
              draw_as_glow = true,
              scale = 0.5,
            }
          }
        },
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          effect = "flicker",
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-glow.png",
            priority = "high",
            width = 60,
            height = 43,
            blend_mode = "additive",
            shift = util.by_pixel(5, 39),
            draw_as_glow = true,
            scale = 0.75,
          }
        },
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          effect = "flicker",
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-working-light.png",
            priority = "high",
            width = 164,
            height = 189,
            blend_mode = "additive",
            shift = util.by_pixel(0, -14),
            draw_as_glow = true,
            hr_version = {
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-working-light.png",
              priority = "high",
              width = 328,
              height = 376,
              blend_mode = "additive",
              shift = util.by_pixel(0, -13.5),
              draw_as_glow = true,
              scale = 0.5,
            }
          }
        }
      },
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        off_when_no_fluid_recipe = true,
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        }
      }
    },
    {
      type = "item",
      name = "blast-furnace-2x10",
      icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5,
      subgroup = "angels-blast-furnace",
      order = "b[blast-furnace-2]",
      place_result = "blast-furnace-2x10",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "blast-furnace-2x10",
      icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "blast-furnace-2x10"},
      fast_replaceable_group = "blast-furnace",
      next_upgrade = "blast-furnace-3x10",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"blast-smelting", "blast-smelting-2","blast-smeltingx10", "blast-smelting-2x10"},
      crafting_speed = 1.7,
      energy_source = {
        type = "burner",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = 0.04 * 60,
        smoke = {
          {
            name = "smoke",
            deviation = {0.1, 0.1},
            frequency = 10,
            position = {-2.0, -1.8},
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
          }
        },
        light_flicker = {
          color = {0, 0, 0},
          minimum_light_size = 0,
          light_intensity_to_size_coefficient = 0,
        }
      },
      energy_usage = "2.25MW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-base.png",
            priority = "high",
            width = 164,
            height = 189,
            shift = util.by_pixel(0, -14),
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-base.png",
              priority = "high",
              width = 328,
              height = 376,
              shift = util.by_pixel(0, -13.5),
              scale = 0.5,
          },
          {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-shadow.png",
            priority = "high",
            width = 224,
            height = 124,
            shift = util.by_pixel(30, 20),
            draw_as_shadow = true,
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-shadow.png",
              priority = "high",
              width = 445,
              height = 245,
              shift = util.by_pixel(29, 19.5),
              draw_as_shadow = true,
              scale = 0.5,
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-fire.png",
            priority = "high",
            width = 12,
            height = 25,
            line_length = 8,
            frame_count = 48,
            animation_speed = 0.5,
            shift = util.by_pixel(4, 29),
            draw_as_glow = true,
            hr_version = {
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-fire.png",
              priority = "high",
              width = 23,
              height = 50,
              line_length = 8,
              frame_count = 48,
              animation_speed = 0.5,
              shift = util.by_pixel(3, 29),
              draw_as_glow = true,
              scale = 0.5,
            }
          }
        },
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          effect = "flicker",
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-glow.png",
            priority = "high",
            width = 60,
            height = 43,
            blend_mode = "additive",
            shift = util.by_pixel(5, 39),
            draw_as_glow = true,
            scale = 0.75,
          }
        },
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          effect = "flicker",
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-working-light.png",
            priority = "high",
            width = 164,
            height = 189,
            blend_mode = "additive",
            shift = util.by_pixel(0, -14),
            draw_as_glow = true,
            hr_version = {
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-working-light.png",
              priority = "high",
              width = 328,
              height = 376,
              blend_mode = "additive",
              shift = util.by_pixel(0, -13.5),
              draw_as_glow = true,
              scale = 0.5,
            }
          }
        }
      },
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        off_when_no_fluid_recipe = true,
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        }
      }
    },
    {
      type = "item",
      name = "blast-furnace-3x10",
      icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5,
      subgroup = "angels-blast-furnace",
      order = "c[blast-furnace-3]",
      place_result = "blast-furnace-3x10",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "blast-furnace-3x10",
      icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "blast-furnace-3x10"},
      fast_replaceable_group = "blast-furnace",
      next_upgrade = "blast-furnace-4x10",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"blast-smelting", "blast-smelting-2", "blast-smelting-3","blast-smeltingx10", "blast-smelting-2x10", "blast-smelting-3x10"},
      crafting_speed = 2.25,
      energy_source = {
        type = "burner",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = 0.05 * 60,
        smoke = {
          {
            name = "smoke",
            deviation = {0.1, 0.1},
            frequency = 10,
            position = {-2.0, -1.8},
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
          }
        },
        light_flicker = {
          color = {0, 0, 0},
          minimum_light_size = 0,
          light_intensity_to_size_coefficient = 0,
        }
      },
      energy_usage = "2.70MW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-base.png",
            priority = "high",
            width = 164,
            height = 189,
            shift = util.by_pixel(0, -14),
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-base.png",
              priority = "high",
              width = 328,
              height = 376,
              shift = util.by_pixel(0, -13.5),
              scale = 0.5,
          },
          {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-shadow.png",
            priority = "high",
            width = 224,
            height = 124,
            shift = util.by_pixel(30, 20),
            draw_as_shadow = true,
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-shadow.png",
              priority = "high",
              width = 445,
              height = 245,
              shift = util.by_pixel(29, 19.5),
              draw_as_shadow = true,
              scale = 0.5,
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-fire.png",
            priority = "high",
            width = 12,
            height = 25,
            line_length = 8,
            frame_count = 48,
            animation_speed = 0.5,
            shift = util.by_pixel(4, 29),
            draw_as_glow = true,
            hr_version = {
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-fire.png",
              priority = "high",
              width = 23,
              height = 50,
              line_length = 8,
              frame_count = 48,
              animation_speed = 0.5,
              shift = util.by_pixel(3, 29),
              draw_as_glow = true,
              scale = 0.5,
            }
          }
        },
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          effect = "flicker",
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-glow.png",
            priority = "high",
            width = 60,
            height = 43,
            blend_mode = "additive",
            shift = util.by_pixel(5, 39),
            draw_as_glow = true,
            scale = 0.75,
          }
        },
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          effect = "flicker",
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-working-light.png",
            priority = "high",
            width = 164,
            height = 189,
            blend_mode = "additive",
            shift = util.by_pixel(0, -14),
            draw_as_glow = true,
            hr_version = {
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-working-light.png",
              priority = "high",
              width = 328,
              height = 376,
              blend_mode = "additive",
              shift = util.by_pixel(0, -13.5),
              draw_as_glow = true,
              scale = 0.5,
            }
          }
        }
      },
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        off_when_no_fluid_recipe = true,
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        }
      }
    },
    {
      type = "item",
      name = "blast-furnace-4x10",
      icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5,
      subgroup = "angels-blast-furnace",
      order = "d[blast-furnace-4]",
      place_result = "blast-furnace-4x10",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "blast-furnace-4x10",
      icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "blast-furnace-4x10"},
      fast_replaceable_group = "blast-furnace",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"blast-smelting", "blast-smelting-2", "blast-smelting-3", "blast-smelting-4","blast-smeltingx10", "blast-smelting-2x10", "blast-smelting-3x10", "blast-smelting-4x10"},
      crafting_speed = 3.25,
      energy_source = {
        type = "burner",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = 0.06 * 60,
        smoke = {
          {
            name = "smoke",
            deviation = {0.1, 0.1},
            frequency = 10,
            position = {-2.0, -1.8},
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
          }
        },
        light_flicker = {
          color = {0, 0, 0},
          minimum_light_size = 0,
          light_intensity_to_size_coefficient = 0,
        }
      },
      energy_usage = "3.250MW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-base.png",
            priority = "high",
            width = 164,
            height = 189,
            shift = util.by_pixel(0, -14),
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-base.png",
              priority = "high",
              width = 328,
              height = 376,
              shift = util.by_pixel(0, -13.5),
              scale = 0.5,
          },
          {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-shadow.png",
            priority = "high",
            width = 224,
            height = 124,
            shift = util.by_pixel(30, 20),
            draw_as_shadow = true,
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-shadow.png",
              priority = "high",
              width = 445,
              height = 245,
              shift = util.by_pixel(29, 19.5),
              draw_as_shadow = true,
              scale = 0.5,
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-fire.png",
            priority = "high",
            width = 12,
            height = 25,
            line_length = 8,
            frame_count = 48,
            animation_speed = 0.5,
            shift = util.by_pixel(4, 29),
            draw_as_glow = true,
            hr_version = {
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-fire.png",
              priority = "high",
              width = 23,
              height = 50,
              line_length = 8,
              frame_count = 48,
              animation_speed = 0.5,
              shift = util.by_pixel(3, 29),
              draw_as_glow = true,
              scale = 0.5,
            }
          }
        },
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          effect = "flicker",
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-glow.png",
            priority = "high",
            width = 60,
            height = 43,
            blend_mode = "additive",
            shift = util.by_pixel(5, 39),
            draw_as_glow = true,
            scale = 0.75,
          }
        },
        {
          fadeout = true,
          north_position = {0, 0},
          east_position = {0, 0},
          south_position = {0, 0},
          west_position = {0, 0},
          effect = "flicker",
          animation = {
            filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-working-light.png",
            priority = "high",
            width = 164,
            height = 189,
            blend_mode = "additive",
            shift = util.by_pixel(0, -14),
            draw_as_glow = true,
            hr_version = {
              filename = "__angelssmelting__/graphics/entity/blast-furnace/hr-blast-furnace-working-light.png",
              priority = "high",
              width = 328,
              height = 376,
              blend_mode = "additive",
              shift = util.by_pixel(0, -13.5),
              draw_as_glow = true,
              scale = 0.5,
            }
          }
        }
      },
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        off_when_no_fluid_recipe = true,
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        }
      }
    }
  }
)
end