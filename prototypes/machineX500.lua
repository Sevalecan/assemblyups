data:extend(
{
--item
  {
    type = "item",
    name = "machineX500",
    icon = "__assemblyUPS__/graphics/icons/production-machine-image.png",
    icon_size = 512,
    subgroup = "machine_c",
    order = "c",
    place_result = "machineX500",
    stack_size = 50
  },
  --entity
  {
    type = "assembling-machine",
    name = "machineX500",
    icon = "__assemblyUPS__/graphics/icons/production-machine-image.png",
    icon_size = 512,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "machineX500"},
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
        pipe_connections = {{ type="input", position = {-8.2, -0} }}
      },
      
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-7.5, -7.5}, {7.5, 7.5}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    drawing_box = {{-7.5, -7.5}, {7.5, 7.5}},
    animation =
    {
      --filename = "__DeepMineALT__/graphics/entity/deep-miner-mk4.png",
      filename = "__assemblyUPS__/graphics/entity/production-machine.png",
      priority = "high",
      width = 512,
      height = 512,
      frame_count = 1,
      line_length = 1,
      shift = {0.05, 0}
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
    crafting_categories = {"X500"},
    crafting_speed = 6,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 250,
      drain = "25MW"
    },
    energy_usage = "275MW",
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"}
  },
  --recipe

  {
    type = "recipe",
    name = "machineX500",
    enabled = false,
    ingredients =
    {
      {"automation-assembly-machine-MK2", 5},
      {"advanced-circuit", 50},
      {"steel-plate", 5000},
      {"industrial-strenght-duct-tape", 2500},
    },
    result = "machineX500"
  },

  
}
)

