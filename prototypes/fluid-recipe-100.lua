

data:extend(
{
  {
    type = "recipe",
    name = "polyethylene-v10",
    category = "chemistry-10",
    hide_from_player_crafting = true,
    enabled = true,
    energy_required = 25,
    ingredients =
    {
      {type="fluid", name="high-pressure-crude-oil", amount=20,},-- fluidbox_index = 2},
      {type="fluid", name="high-pressure-heavy-oil", amount=18,},-- fluidbox_index = 3},
      --{type="fluid", name="light-oil", amount=200,fluidbox_index = 4},
    },
    results=
    {
      {type="fluid", name="polyethylene", amount=200,}, --fluidbox_index = 4}
    },
    icon = "__assemblyUPS__/graphics/icons/polyethylene.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-a[basic-oil-processing]",
    main_product = ""
  },
  {
    type = "recipe",
    name = "basic-oil-X100",
    category = "Fluids-X100",
    hide_from_player_crafting = true,
    enabled = true,
    
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="high-pressure-crude-oil", amount=10, fluidbox_index = 2}
    },
    results=
    {
      {type="fluid", name="high-pressure-petroleum-gas", amount=5, fluidbox_index = 3}
    },
    icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-a[basic-oil-processing]",
    main_product = ""
  },

  {
    type = "recipe",
    name = "advanced-oil-processing-v100",
    category = "Fluids-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="high-pressure-water", amount=20},
      {type="fluid", name="high-pressure-crude-oil", amount=50}
    },
    results=
    {
      {type="fluid", name="high-pressure-heavy-oil", amount=25},
      {type="fluid", name="high-pressure-light-oil", amount=45},
      {type="fluid", name="high-pressure-petroleum-gas", amount=55}
    },
    icon = "__base__/graphics/icons/fluid/advanced-oil-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-b[advanced-oil-processing]"
  },

  {
    type = "recipe",
    name = "coal-liquefaction-v100",
    category = "Fluids-X100",
    hide_from_player_crafting = true,
    enabled = true,
    
    energy_required = 5,
    ingredients =
    {
      {type="item", name="coal", amount=1000},
      {type="fluid", name="high-pressure-heavy-oil", amount=25},
      {type="fluid", name="high-pressure-steam", amount=50}
    },
    results=
    {
      {type="fluid", name="high-pressure-heavy-oil", amount=90},
      {type="fluid", name="high-pressure-light-oil", amount=20},
      {type="fluid", name="high-pressure-petroleum-gas", amount=10}
    },
    icon = "__base__/graphics/icons/fluid/coal-liquefaction.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[coal-liquefaction]",
    allow_decomposition = true
  },

  {
    type = "recipe",
    name = "heavy-oil-cracking-v100",
    category = "chemistry-100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="high-pressure-water", amount=10},
      {type="fluid", name="high-pressure-heavy-oil", amount=40}
    },
    results=
    {
      {type="fluid", name="high-pressure-light-oil", amount=30}
    },
    main_product= "",
    icon = "__base__/graphics/icons/fluid/heavy-oil-cracking.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.642, b = 0.261, a = 1.000}, -- #ffa342ff
      secondary = {r = 1.000, g = 0.722, b = 0.376, a = 1.000}, -- #ffb85fff
      tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000}, -- #d9a892ff
      quaternary = {r = 1.000, g = 0.494, b = 0.271, a = 1.000}, -- #ff7e45ff
    }
  },

  {
    type = "recipe",
    name = "light-oil-cracking-v100",
    category = "chemistry-100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="high-pressure-water", amount=10},
      {type="fluid", name="high-pressure-light-oil", amount=30}
    },
    results=
    {
      {type="fluid", name="high-pressure-petroleum-gas", amount=20}
    },
    main_product= "",
    icon = "__base__/graphics/icons/fluid/light-oil-cracking.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[light-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.764, g = 0.596, b = 0.780, a = 1.000}, -- #c298c6ff
      secondary = {r = 0.762, g = 0.551, b = 0.844, a = 1.000}, -- #c28cd7ff
      tertiary = {r = 0.895, g = 0.773, b = 0.596, a = 1.000}, -- #e4c597ff
      quaternary = {r = 1.000, g = 0.734, b = 0.290, a = 1.000}, -- #ffbb49ff
    }
  },

  {
    type = "recipe",
    name = "sulfuric-acid-100",
    category = "chemistry-100",
    energy_required = 1,
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {type="item", name="sulfur", amount=500},
      {type="item", name="iron-plate", amount=1000},
      {type="fluid", name="high-pressure-water", amount=20}
    },
    results=
    {
      {type="fluid", name="high-pressure-sulfuric-acid", amount=50}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.958, b = 0.000, a = 1.000}, -- #fff400ff
      secondary = {r = 1.000, g = 0.852, b = 0.172, a = 1.000}, -- #ffd92bff
      tertiary = {r = 0.876, g = 0.869, b = 0.597, a = 1.000}, -- #dfdd98ff
      quaternary = {r = 0.969, g = 1.000, b = 0.019, a = 1.000}, -- #f7ff04ff
    }
  },

  {
    type = "recipe",
    name = "plastic-bar-v100",
    category = "chemistry-100",
    energy_required = 1,
    enabled = true,
    hide_from_player_crafting = true,
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
    name = "solid-fuel-from-light-oil-v100",
    category = "chemistry-100",
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="high-pressure-light-oil", amount=10}
    },
    results=
    {
      {type="item", name="solid-fuel", amount=100}
    },
    icon = "__base__/graphics/icons/solid-fuel-from-light-oil.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    enabled = true,
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
    name = "solid-fuel-from-petroleum-gas-v100",
    category = "chemistry-100",
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="high-pressure-petroleum-gas", amount=20}
    },
    results=
    {
      {type="item", name="solid-fuel", amount=100}
    },
    icon = "__base__/graphics/icons/solid-fuel-from-petroleum-gas.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    enabled = true,
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
    name = "solid-fuel-from-heavy-oil-v100",
    category = "chemistry-100",
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="high-pressure-heavy-oil", amount=20}
    },
    results=
    {
      {type="item", name="solid-fuel", amount=100}
    },
    icon = "__base__/graphics/icons/solid-fuel-from-heavy-oil.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    enabled = true,
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
    type = "recipe",
    name = "sulfur-v100",
    category = "chemistry-100",
    energy_required = 1,
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {type="fluid", name="high-pressure-water", amount=10},
      {type="fluid", name="high-pressure-petroleum-gas", amount=30}
    },
    results=
    {
      {type="item", name="sulfur", amount=200}
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.995, b = 0.089, a = 1.000}, -- #fffd16ff
      secondary = {r = 1.000, g = 0.974, b = 0.691, a = 1.000}, -- #fff8b0ff
      tertiary = {r = 0.723, g = 0.638, b = 0.714, a = 1.000}, -- #b8a2b6ff
      quaternary = {r = 0.954, g = 1.000, b = 0.350, a = 1.000}, -- #f3ff59ff
    }
  },

  {
    type = "recipe",
    name = "lubricant-v100",
    category = "chemistry-100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="high-pressure-heavy-oil", amount=10}
    },
    results=
    {
      {type="fluid", name="high-pressure-lubricant", amount=10}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 0.268, g = 0.723, b = 0.223, a = 1.000}, -- #44b838ff
      secondary = {r = 0.432, g = 0.793, b = 0.386, a = 1.000}, -- #6eca62ff
      tertiary = {r = 0.647, g = 0.471, b = 0.396, a = 1.000}, -- #a57865ff
      quaternary = {r = 1.000, g = 0.395, b = 0.127, a = 1.000}, -- #ff6420ff
    }
  },

  {
    type = "recipe",
    name = "empty-barrel-v100",
    category = "crafting",
    energy_required = 1,
    subgroup = "intermediate-product",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {type="item", name="steel-plate", amount=1}
    },
    results=
    {
      {type="item", name="empty-barrel", amount=1}
    }
  }
})
