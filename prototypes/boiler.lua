-- Electric Boiler ***********************************************************************
data.raw.boiler.boiler.fast_replaceable_group = data.raw.boiler.boiler.fast_replaceable_group or "boiler"
kettle = util.table.deepcopy(data.raw["boiler"]["boiler"])
kettle.name = "electric-boiler"
kettle.icon = "__assemblyUPS__/graphics/icons/electric-boiler.png"
kettle.minable.result = "electric-boiler"
kettle.energy_consumption = "900kW"
kettle.energy_source =
{
  type = "electric",
  usage_priority = "secondary-input"
}
kettle.structure.north.layers[1].filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-N-idle.png"
kettle.structure.north.layers[1].hr_version.filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-N-idle.png"
kettle.structure.east.layers[1].filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-E-idle.png"
kettle.structure.east.layers[1].hr_version.filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-E-idle.png"
kettle.structure.south.layers[1].filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-S-idle.png"
kettle.structure.south.layers[1].hr_version.filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-S-idle.png"
kettle.structure.west.layers[1].filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-W-idle.png"
kettle.structure.west.layers[1].hr_version.filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-W-idle.png"
kettle.fire.north =
{
  filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-N-fire.png",
  draw_as_glow = true,
  priority = "extra-high",
  frame_count = 1,
  width = 12,
  height = 13,
  shift = util.by_pixel(0, -8.5),
  hr_version = {
    filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-N-fire.png",
    draw_as_glow = true,
    priority = "extra-high",
    frame_count = 1,
    width = 26,
    height = 26,
    shift = util.by_pixel(0, -8.5),
    scale = 0.5
  }
}
kettle.fire.east =
{
  filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-E-fire.png",
  draw_as_glow = true,
  priority = "extra-high",
  frame_count = 1,
  width = 14,
  height = 14,
  shift = util.by_pixel(-10, -22),
  hr_version = {
    filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-E-fire.png",
    draw_as_glow = true,
    priority = "extra-high",
    frame_count = 1,
    width = 28,
    height = 28,
    shift = util.by_pixel(-9.5, -22),
    scale = 0.5
  }
}
kettle.fire.south =
{
  filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-S-fire.png",
  draw_as_glow = true,
  priority = "extra-high",
  frame_count = 1,
  width = 12,
  height = 9,
  shift = util.by_pixel(-1, -26.5),
  hr_version = {
    filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-S-fire.png",
    draw_as_glow = true,
    priority = "extra-high",
    frame_count = 1,
    width = 26,
    height = 16,
    shift = util.by_pixel(-1, -26.5),
    scale = 0.5
  }
}
kettle.fire.west =
{
  filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-W-fire.png",
  draw_as_glow = true,
  priority = "extra-high",
  frame_count = 1,
  width = 14,
  height = 14,
  shift = util.by_pixel(13, -23),blend_mode = "additive",
  hr_version = {
    filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-W-fire.png",
    draw_as_glow = true,
    priority = "extra-high",
    frame_count = 1,
    width = 30,
    height = 29,
    shift = util.by_pixel(13, -23.25),
    scale = 0.5
  }
}
kettle.fire_glow.north.filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-N-light.png"
kettle.fire_glow.north.hr_version.filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-N-light.png"
kettle.fire_glow.east.filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-E-light.png"
kettle.fire_glow.east.hr_version.filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-E-light.png"
kettle.fire_glow.south.filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-S-light.png"
kettle.fire_glow.south.hr_version.filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-S-light.png"
kettle.fire_glow.west.filename = "__assemblyUPS__/graphics/entity/electric-boiler/electric-boiler-W-light.png"
kettle.fire_glow.west.hr_version.filename = "__assemblyUPS__/graphics/entity/electric-boiler/hr-electric-boiler-W-light.png"
kettle.fire_flicker_enabled = false
kettle.fire_glow_flicker_enabled = false
kettle.burning_cooldown = 10
-- kettle.fire_glow.light = {intensity = 0.9, size = 40, color = {r=1.0, g=1.0, b=1.0}}
-- kettle.fire.light = {intensity = 0.9, size = 40, color = {r=1.0, g=1.0, b=1.0}}

kettlerecipe =
{
  type = "recipe",
  name = "electric-boiler",
  ingredients = {
    {"boiler", 1},
    {"electronic-circuit", 1},
    {"iron-plate", 1}
  },
  result = "electric-boiler",
  enabled = true
}


data:extend(
{
  kettle,

  {
    type = "item",
    name = "electric-boiler",
    icon = "__assemblyUPS__/graphics/icons/electric-boiler.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "b[steam-power]-a[boiler]b",
    place_result = "electric-boiler",
    stack_size = 50
  },

  kettlerecipe
})