data:extend(
{
  {
    type = "item",
    name = "nuclear-assembling-machine",
    icon = "__yakattack__/graphics/icons/assembling-machine-6.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "c[assembling-machine-4]",
    place_result = "nuclear-assembling-machine",
    stack_size = 50
  },

  {
    type = "assembling-machine",
    name = "nuclear-assembling-machine",
    icon = "__yakattack__/graphics/icons/assembling-machine-6.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "nuclear-assembling-machine"},
    max_health = 600,
    corpse = "big-remnants",
    dying_explosion = "uranium-cannon-shell-explosion",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t3-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__yakattack__/graphics/entity/assembling-machine/assembling-machine-3.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__yakattack__/graphics/entity/assembling-machine/hr-assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5
          }
        },
        {
          filename = "__yakattack__/graphics/entity/assembling-machine/assembling-machine-mask.png",
          priority = "high",
          width = 142,
          height = 113,
          repeat_count = 32,
          shift = {0.84, -0.09},
          tint = {r = 0.1, g = 0.7, b = 0.1},
        },
        {
          filename = "__yakattack__/graphics/entity/assembling-machine/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          hr_version =
          {
            filename = "__yakattack__/graphics/entity/assembling-machine/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5
          }
        }
      }
    },
    crafting_categories = {"crafting", "advanced-crafting", "crafting-a", "crafting-with-fluid"},
    crafting_speed = 1,
    energy_usage = "50000kW",
    energy_source = 
    {
      type = "burner",
      fuel_category = "nuclear",
      effectivity = 0.20,
	  emissions_per_minute = 300,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1
    },
    module_specification =
    {
      module_slots = 10,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },

  {
    type = "recipe",
    name = "nuclear-assembling-machine",
    enabled = false,
    ingredients =
    {
      {"assembling-machine-3", 1},
      {"processing-unit", 3},
      {"steel-plate", 5},
      {"iron-plate", 5},
      {"iron-gear-wheel", 5},
      {"uranium-238", 1000},
      {"uranium-235", 500},
    },
    result = "nuclear-assembling-machine"
  },

  {
    type = "technology",
    name = "nuclear-assembling-machine",
    icon = "__base__/graphics/technology/automation.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-assembling-machine"
      }
    },
    prerequisites =
    {
      "automation-3",
      "utility-science-pack",
      "nuclear-power",
    },
    unit =
    {
      count = 275,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 25
    },
    order = "a-b-f"
  },
}
)