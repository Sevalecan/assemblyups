if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe
local recipe_amount = 10 

make_recipe({
  name = "compressive-strength-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 2 * recipe_amount},
    { name = "concrete", amount = recipe_amount},
    { name = data_util.mod_prefix .. "iridium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { type = "fluid", name = "lubricant", amount = 5 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "compressive-strength-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.25},
    --{ name = data_util.mod_prefix .. "scrap", amount = 6 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = recipe_amount},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "compressive-strength-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "tensile-strength-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 2 * recipe_amount},
    { name = "steel-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "iridium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { type = "fluid", name = "lubricant", amount = 5 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "tensile-strength-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.25},
    --{ name = data_util.mod_prefix .. "scrap", amount = 6 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = recipe_amount},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "tensile-strength-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})
--[[
make_recipe({
  name = data_util.mod_prefix .. "shear-strength-data",
  ingredients = {
    { name = data_util.mod_prefix .. "material-testing-pack", amount = recipe_amount },
    { name = "refined-concrete", amount = recipe_amount },
    { name = data_util.mod_prefix .. "iridium-plate", amount = recipe_amount },
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
    { type = "fluid", name = "lubricant", amount = 5},
  },
  results = {
    { name = data_util.mod_prefix .. "shear-strength-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "scrap", amount = 5},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = recipe_amount },
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "shear-strength-data",
  category = "space-mechanical",
  enabled = false,
  always_show_made_in = true,
})]]

make_recipe({
  name = "rigidity-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 4 * recipe_amount},
    { name = data_util.mod_prefix .. "heavy-girder", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { type = "fluid", name = "lubricant", amount = 5 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "rigidity-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "heavy-girder", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    --{ name = data_util.mod_prefix .. "scrap", amount = 8 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = recipe_amount},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "rigidity-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "impact-shielding-datax10",
  ingredients = {
    { name = "locomotive", amount = recipe_amount},
    { name = data_util.mod_prefix .. "iridium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "heavy-girder", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = 25 * recipe_amount},
    { type = "fluid", name = "lubricant", amount = 5 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "impact-shielding-data", amount = 25 * recipe_amount},
    { name = data_util.mod_prefix .. "heavy-girder", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.25},
    --{ name = data_util.mod_prefix .. "scrap", amount = 1500},
  },
  energy_required = 200,
  main_product = data_util.mod_prefix .. "impact-shielding-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})


make_recipe({
  name = "ballistic-shielding-datax10",
  ingredients = {
    { name = "firearm-magazine", amount = 10 * recipe_amount},
    { name = data_util.mod_prefix .. "material-testing-pack", amount = recipe_amount},
    { name = data_util.mod_prefix .. "heavy-girder", amount = recipe_amount },
    { name = data_util.mod_prefix .. "iridium-plate", amount = recipe_amount },
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
    { type = "fluid", name = "lubricant", amount = 5 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "ballistic-shielding-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "heavy-girder", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.75},
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.25},
    --{ name = data_util.mod_prefix .. "scrap", amount = 6 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = recipe_amount },
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "ballistic-shielding-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "friction-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 4 * recipe_amount},
    { name = data_util.mod_prefix .. "heavy-bearing", amount = recipe_amount },
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
    { type = "fluid", name = "lubricant", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "friction-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "heavy-bearing", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    --{ name = data_util.mod_prefix .. "scrap", amount = 8 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 2 * recipe_amount },
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "friction-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "biomechanical-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "specimen", amount = 2 * recipe_amount },
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
    { type = "fluid", name = "lubricant", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "biomechanical-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 20 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 10 * recipe_amount},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "biomechanical-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "biomechanical-resistance-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "experimental-specimen", amount = recipe_amount },
    { name = data_util.mod_prefix .. "biomechanical-data", amount = recipe_amount },
    { type = "fluid", name = "lubricant", amount = 5 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "biomechanical-resistance-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "experimental-specimen", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.25},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 7 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = recipe_amount },
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "biomechanical-resistance-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})


make_recipe({
  name = "decompression-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "experimental-specimen", amount = recipe_amount },
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
  },
  results = {
    { name = data_util.mod_prefix .. "decompression-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount_min = recipe_amount, amount_max = 10 * recipe_amount, probability = 1 },
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "decompression-data",
  category = "space-mechanical",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "decompression-resistance-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-specimen", amount = recipe_amount },
    { name = data_util.mod_prefix .. "vitalic-epoxy", amount = recipe_amount },
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
  },
  results = {
    { name = data_util.mod_prefix .. "decompression-resistance-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "significant-specimen", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.49},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount_min = recipe_amount, amount_max = 5, probability = 1 },
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "decompression-resistance-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "naquium-structural-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "naquium-ingot", amount = recipe_amount },
    { type = "fluid", name = "lubricant", amount = 2 * recipe_amount },
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
  },
  results = {
    { name = data_util.mod_prefix .. "naquium-structural-data", amount = recipe_amount},
  },
  energy_required = 4,
  main_product = data_util.mod_prefix .. "naquium-structural-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})
end