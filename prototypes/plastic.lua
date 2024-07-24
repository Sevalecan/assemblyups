data:extend
(
{
  {
    type = "recipe",
    name = "plastic-barx10",
    category = "chemistry-10",
    energy_required = 1,
    enabled = true,
    hidden = true,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=200},
      {type="item", name="coal", amount=10}
    },
    results=
    {
      {type="item", name="plastic-bar", amount=20}
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
      secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
      tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000}, -- #c3a9c2ff
      quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
    }
  },
  {
    type = "recipe",
    name = "plastic-barx100",
    category = "chemistry-100",
    energy_required = 1,
    enabled = true,
    hidden = true,
    ingredients =
    {
      {type="fluid", name="high-pressure-petroleum-gas", amount=20},
      {type="item", name="coal", amount=100}
    },
    results=
    {
      {type="item", name="plastic-bar", amount=200}
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
      secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
      tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000}, -- #c3a9c2ff
      quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
    }
  },
  {
    type = "recipe",
    name = "plastic-barx500",
    category = "chemistry-500",
    energy_required = 1,
    enabled = true,
    hidden = true,
    ingredients =
    {
      {type="fluid", name="high-pressure-petroleum-gas", amount=100},
      {type="item", name="coal", amount=500}
    },
    results=
    {
      {type="item", name="plastic-bar", amount=1000}
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
      secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
      tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000}, -- #c3a9c2ff
      quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
    }
  },

}
)