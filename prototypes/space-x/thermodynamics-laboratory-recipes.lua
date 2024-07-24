if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe

local recipe_multiplier = 4
local recipe_amount = 10
local crafting_category = space_thermodynamicsx10

make_recipe({
  name = data_util.mod_prefix .. "thermodynamics-coal",
  ingredients = {
    { name = data_util.mod_prefix .. "experimental-specimen", amount = 1},
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount = 10},
  },
  results = {
    { name = "coal", amount = 1},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 20},
    --{ name = data_util.mod_prefix .. "contaminated-scrap", amount = 1},
  },
  energy_required = 5 * recipe_multiplier,
  subgroup = "space-components",
  category = "space-thermodynamics",
  allow_as_intermediate = false,
  always_show_made_in = true,
})

make_recipe({
  name = "bio-combustion-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "specimen", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "bio-combustion-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.75},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.24},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 2 * recipe_amount},
  },
  energy_required = 5 * recipe_multiplier,
  main_product = data_util.mod_prefix .. "bio-combustion-data",
  enabled = true,
  hide_from_player_crafting = true,
  category = "space-thermodynamicsx10",
  always_show_made_in = true,
})

make_recipe({
  name = "bio-combustion-resistance-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "experimental-specimen", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "bio-combustion-resistance-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "experimental-specimen", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 7 * recipe_amount},
  },
  energy_required = 10 * recipe_multiplier,
  enabled = true,
  hide_from_player_crafting = true,
  main_product = data_util.mod_prefix .. "bio-combustion-resistance-data",
  category = "space-thermodynamicsx10",
  always_show_made_in = true,
})

--[[
-- removed
make_recipe({
  name = data_util.mod_prefix .. "bio-combustion-suppression-data",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-specimen", amount = 1},
    { name = data_util.mod_prefix .. "experimental-material", amount = 1},
    { name = data_util.mod_prefix .. "empty-data", amount = 1},
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "bio-combustion-suppression-data", amount_min = 1, amount_max = 1, probability = 0.5},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 1, amount_max = 1, probability = 0.49},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 3},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 100},
  },
  category = "space-thermodynamics",
})
]]--

make_recipe({
  name = "cold-thermodynamics-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 4 * recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "cold-thermodynamics-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 8 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 8 * recipe_amount},
  },
  energy_required = 10 * recipe_multiplier,
  main_product = data_util.mod_prefix .. "cold-thermodynamics-data",
  category = "space-thermodynamicsx10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

make_recipe({
  name = "hot-thermodynamics-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 4 * recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "hot-thermodynamics-data", amount = recipe_amount},
    --{ name = data_util.mod_prefix .. "contaminated-scrap", amount = 8 * recipe_amount},
  },
  energy_required = 10 * recipe_multiplier,
  main_product = data_util.mod_prefix .. "hot-thermodynamics-data",
  category = "space-thermodynamicsx10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

make_recipe({
  name = "pressure-containment-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 3 * recipe_amount},
    { name = data_util.mod_prefix .. "heavy-girder", amount = recipe_amount},
    { name = "storage-tank", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 5000},
  },
  results = {
    { name = data_util.mod_prefix .. "pressure-containment-data", amount = 3 *recipe_amount},
    --{ name = data_util.mod_prefix .. "scrap", amount = 50 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 4990},
  },
  energy_required = 6 * recipe_multiplier,
  main_product = data_util.mod_prefix .. "pressure-containment-data",
  category = "space-thermodynamicsx10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

make_recipe({
  name = "explosion-shielding-datax10",
  ingredients = {
    { name = "explosives", amount = 20 * recipe_amount},
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 4 * recipe_amount},
    { name = data_util.mod_prefix .. "heavy-girder", amount = recipe_amount},
    { name = data_util.mod_prefix .. "iridium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "explosion-shielding-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "heavy-girder", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    --{ name = data_util.mod_prefix .. "scrap", amount = 10},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "explosion-shielding-data",
  category = "space-thermodynamicsx10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

make_recipe({
  name = "experimental-alloys-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "iridium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "beryllium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "holmium-plate", amount = recipe_amount},
    { name = "iron-plate", amount = recipe_amount},
    { name = "copper-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = 6 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "experimental-alloys-data", amount = 6 * recipe_amount},
    --{ name = data_util.mod_prefix .. "scrap", amount = 5 * recipe_amount},
  },
  energy_required = 18,
  main_product = data_util.mod_prefix .. "experimental-alloys-data",
  category = "space-thermodynamicsx10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})




end
