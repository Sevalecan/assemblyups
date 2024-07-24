if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe
local recipe_amount = 10



-- accelerator
make_recipe({
  name = "ion-streamx10",
  ingredients = {
    { name = "copper-plate", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount = 100 * recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount = 100 * recipe_amount},
  },
  energy_required = 10,
  category = "space-acceleratorx10",
  subgroup = "space-fluid-recipes",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "proton-streamx10",
  ingredients = {
    { name = "iron-plate", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount = 100 * recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "proton-stream", amount = 100 * recipe_amount},
  },
  energy_required = 20,
  category = "space-acceleratorx10",
  subgroup = "space-fluid-recipes",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "particle-streamx10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-testing-pack", amount = recipe_amount},
    { name = "sand", amount = 5 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount = 100 * recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "particle-stream", amount = 200 * recipe_amount},
  },
  energy_required = 30,
  category = "space-acceleratorx10",
  subgroup = "space-fluid-recipes",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
  main_product = data_util.mod_prefix .. "particle-stream"
})

-- collider
make_recipe({
  name = "empty-antimatter-canisterx10",
  ingredients = {
    { name = data_util.mod_prefix .. "antimatter-canister", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100 * recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "antimatter-stream", amount=1000 * recipe_amount},
    { data_util.mod_prefix .. "magnetic-canister", 1 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100 * recipe_amount},
  },
  main_product = data_util.mod_prefix .. "antimatter-stream",
  energy_required = 30,
  category = "space-acceleratorx10",
  subgroup = "space-fluid-recipes",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
  localised_name = {"recipe-name." .. data_util.mod_prefix .. "empty-antimatter-canister"}
})

make_recipe({
  name = "ion-canister-emptyx10",
  ingredients = {
    { data_util.mod_prefix .. "ion-canister", recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount=1000 * recipe_amount},
    { data_util.mod_prefix .. "magnetic-canister", recipe_amount},
  },
  main_product = data_util.mod_prefix .. "ion-stream",
  energy_required = 4,
  category = "space-acceleratorx10",
  subgroup = "space-fluid-recipes",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
  localised_name = {"recipe-name." .. data_util.mod_prefix .. "ion-canister-empty"}
})

end
