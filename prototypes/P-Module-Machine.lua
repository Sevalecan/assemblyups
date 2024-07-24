data:extend(
{
  {
    type = "item",
    name = "P-Module-machine",
    icon = "__assemblyUPS__/graphics/icons/assembling-machine-4.png",
    icon_size = 64,
    subgroup = "machine_c",
    order = "c",
    place_result = "P-Module-machine",
    stack_size = 50
  },

  {
    type = "assembling-machine",
    name = "P-Module-machine",
    icon = "__assemblyUPS__/graphics/icons/assembling-machine-4.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "P-Module-machine"},
    max_health = 750,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 95
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3.5, -.5} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {3.5, .5} }}
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    --fast_replaceable_group = "assembling-machine",
    --next_upgrade = "automation-assembling-machine-mk2",
    animation =
    {
      filename = "__assemblyUPS__/graphics/entity/am4.png",
      priority = "high",
      width = 113,
      height = 99,
      frame_count = 32,
      line_length = 8,
      shift = {0.9, -0.30},
      scale = 2.13
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"P-module"},
    crafting_speed = 2.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 100,
      drain = "25MW"
    },
    energy_usage = "50MW",
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution"}
  },


  {
    type = "recipe",
    name = "P-Module-machine",
    enabled = false,
    ingredients =
    {
      {"assembling-machine-3", 10},
      {"advanced-circuit", 250},
      {"steel-plate", 50},
      {"industrial-strenght-duct-tape", 250},
    },
    result = "P-Module-machine"
  },

  
}
)





