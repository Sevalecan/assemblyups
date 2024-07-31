if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe

make_recipe({
  name = data_util.mod_prefix .. "space-coolant",
  ingredients = {
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 1},
    { type = "fluid", name = "heavy-oil", amount = 20},
    { name = "copper-plate", amount = 2},
    { name = "iron-plate", amount = 1},
    { name = "sulfur", amount = 1},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  energy_required = 5,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  icon_size = 64,
  subgroup = "space-cooling",
  category = "space-manufacturing",
  localised_name = {"fluid-name." .. data_util.mod_prefix .. "space-coolant"},
  always_show_made_in = true,
  order = "a-a",
})



make_recipe({
  name = "space-coolant-coldx100",
  ingredients = {
    { type = "fluid", name = "high-pressure-se-space-coolant-warm", amount = 1000},
  },
  results = {
    { type = "fluid", name = "high-pressure-se-space-coolant-cold", amount = 500},
    { type = "fluid", name = "high-pressure-se-space-coolant-hot", amount = 500},
  },
  energy_required = 1,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  icon_size = 64,
  subgroup = "space-cooling",
  category = "space-hypercoolingx100",
  localised_name = {"recipe-name." .. data_util.mod_prefix .. "space-coolant-cold"},
  enabled = true,
  always_show_made_in = true,
  order = "c-a",
})


make_recipe({
  name = data_util.mod_prefix .. "space-coolant-supercooled",
  ingredients = {
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 10},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 5},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 5},
  },
  energy_required = 2,
  subgroup = "space-cooling",
  category = "space-hypercooling",
  localised_name = {"recipe-name." .. data_util.mod_prefix .. "space-coolant-supercooled"},
  enabled = false,
  always_show_made_in = true,
  order = "d-a",
})

make_recipe({
  name = "space-coolant-cold-cryonitex100",
  ingredients = {
    { type = "fluid", name = "high-pressure-se-space-coolant-warm", amount = 20},
    { type = "fluid", name = data_util.mod_prefix .. "cryonite-slush", amount = 100},
  },
  results = {
    { type = "fluid", name = "high-pressure-se-space-coolant-cold", amount = 15},
    { type = "fluid", name = "high-pressure-se-space-coolant-hot", amount = 5},
  },
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  icon_size = 64,
  energy_required = 1,
  subgroup = "space-cooling",
  category = "space-hypercoolingx100",
  localised_name = {"recipe-name." .. data_util.mod_prefix .. "space-coolant-cold-cryonite"},
  enabled = true,
  always_show_made_in = true,
  order = "c-a",
})


make_recipe({
  name = "space-coolant-supercooled-cryonitex100",
  ingredients = {
    { type = "fluid", name = "high-pressure-se-space-coolant-cold", amount = 15},
    { type = "fluid", name = data_util.mod_prefix .. "cryonite-slush", amount = 100},
  },
  results = {
    { type = "fluid", name = "high-pressure-se-space-coolant-supercooled", amount = 10},
    { type = "fluid", name = "high-pressure-se-space-coolant-hot", amount = 5},
  },
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  icon_size = 64,
  energy_required = 1,
  subgroup = "space-cooling",
  category = "space-hypercoolingx100",
  localised_name = {"recipe-name." .. data_util.mod_prefix .. "space-coolant-supercooled-cryonite"},
  enabled = true,
  always_show_made_in = true,
  order = "d-a",
})
end
