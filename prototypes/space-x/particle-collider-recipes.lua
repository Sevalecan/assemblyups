if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe
local recipe_amount = 10



-- collider
make_recipe({
  name = data_util.mod_prefix .. "ion-canister",
  ingredients = {
    { data_util.mod_prefix .. "magnetic-canister", 1},
    { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount=1000},
  },
  results = {
    { data_util.mod_prefix .. "ion-canister", 1},
  },
  energy_required = 4,
  category = "space-collider",
  enabled = false,
  always_show_made_in = true,
})

make_recipe({
  name = data_util.mod_prefix .. "antimatter-canister",
  ingredients = {
    { data_util.mod_prefix .. "magnetic-canister", 1},
    { type = "fluid", name = data_util.mod_prefix .. "antimatter-stream", amount=1000},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "antimatter-canister", amount = 1},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 4,
  main_product = data_util.mod_prefix .. "antimatter-canister",
  category = "space-collider",
  enabled = false,
  always_show_made_in = true,
})


make_recipe({
  name = "atomic-datax10",
  ingredients = {
    { data_util.mod_prefix .. "material-testing-pack", recipe_amount},
    { data_util.mod_prefix .. "empty-data", recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount= 100 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "atomic-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 8 * recipe_amount},
  },
  energy_required = 2,
  main_product = data_util.mod_prefix .. "atomic-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "boson-datax10",
  ingredients = {
    { data_util.mod_prefix .. "empty-data", 1 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "particle-stream", amount = 15 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "boson-data", amount_min = 1, amount_max = 1, probability = 0.2},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 1, amount_max = 1, probability = 0.79},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "boson-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name =  "entanglement-datax10",
  ingredients = {
    { data_util.mod_prefix .. "empty-data", recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount = 20 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "entanglement-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.2},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.79},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 4,
  main_product = data_util.mod_prefix .. "entanglement-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "singularity-datax10",
  ingredients = {
    { data_util.mod_prefix .. "naquium-cube", recipe_amount},
    { data_util.mod_prefix .. "entanglement-data", recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "particle-stream", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
  { name = data_util.mod_prefix .. "singularity-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "naquium-cube", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.49},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "singularity-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "lepton-datax10",
  ingredients = {
    { data_util.mod_prefix .. "empty-data", recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "particle-stream", amount = 20 *recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "lepton-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.4},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.59},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "lepton-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "magnetic-monopole-datax10",
  ingredients = {
    { data_util.mod_prefix .. "electromagnetic-field-data", recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "proton-stream", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "magnetic-monopole-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.3},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.69},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "magnetic-monopole-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "micro-black-hole-datax10",
  ingredients = {
    { data_util.mod_prefix .. "empty-data", recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "particle-stream", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "micro-black-hole-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.2},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.79},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "micro-black-hole-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "quark-datax10",
  ingredients = {
    { data_util.mod_prefix .. "empty-data", recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "proton-stream", amount = 20 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "quark-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.49},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "quark-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "subatomic-datax10",
  ingredients = {
    { data_util.mod_prefix .. "empty-data", recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "proton-stream", amount = 20 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "subatomic-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.6},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.39},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "subatomic-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "fusion-test-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "forcefield-data", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "proton-stream", amount = 50 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "fusion-test-data", amount = recipe_amount},
  },
  energy_required = 5,
  hide_from_player_crafting = true,
  enabled = true,
  category = "space-colliderx10",
  always_show_made_in = true,
})

make_recipe({
  name = "particle-beam-shielding-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "particle-stream", amount = 10 * recipe_amount},
    { name = data_util.mod_prefix .. "space-platform-plating", amount = recipe_amount },
    { name = data_util.mod_prefix .. "iridium-plate", amount = recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "particle-beam-shielding-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 15 * recipe_amount},
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.2 },
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "particle-beam-shielding-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "annihilation-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "particle-stream", amount = 5 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "antimatter-stream", amount = 5 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "annihilation-data", amount = recipe_amount },
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "annihilation-data",
  category = "space-colliderx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})
end
