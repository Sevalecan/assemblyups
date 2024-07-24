if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe
local recipe_amount = 10



make_recipe({
  name = "neural-gelx10",
  ingredients = {
    { name = data_util.mod_prefix .. "specimen", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "nutrient-gel", amount = 10 * recipe_amount }
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "neural-gel", amount = 10 * recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "bio-sludge", amount = 10 * recipe_amount },
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "neural-gel",
  category = "space-growthx10",
  subgroup = "space-bioculture",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name =  "neural-gel-2x10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-specimen", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "neural-gel", amount = 100 * recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "nutrient-gel", amount = 100 * recipe_amount },
    { name = data_util.mod_prefix .. "bioelectrics-data", amount = recipe_amount },

  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "neural-gel-2", amount = 100 * recipe_amount },
    { data_util.mod_prefix .. "junk-data", recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "bio-sludge", amount = 100 * recipe_amount },
  },
  energy_required = 50,
  main_product = data_util.mod_prefix .. "neural-gel-2",
  category = "space-growthx10",
  subgroup = "space-bioculture",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "specimenx10",
  ingredients = {
    { name = data_util.mod_prefix .. "bioculture", amount = 10 * recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "nutrient-gel", amount = 100 * recipe_amount },
  },
  results = {
    { name = data_util.mod_prefix .. "specimen", amount = 10 * recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 30  * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 20 * recipe_amount},
  },
  energy_required = 80,
  main_product = data_util.mod_prefix .. "specimen",
  category = "space-growthx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "experimental-specimenx10",
  ingredients = {
    { name = data_util.mod_prefix .. "experimental-bioculture", amount = 10 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "nutrient-gel", amount = 100 * recipe_amount },
  },
  results = {
    { name = data_util.mod_prefix .. "experimental-specimen", amount_min = 5 * recipe_amount, amount_max = 10 * recipe_amount, probability = 1 },
    { name = data_util.mod_prefix .. "specimen", amount_min = 0, amount_max = 5 * recipe_amount, probability = 1 },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 30 * recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 20 * recipe_amount },
  },
  energy_required = 80,
  main_product = data_util.mod_prefix .. "experimental-specimen",
  category = "space-growthx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "specimen-fishx10",
  ingredients = {
    { name = data_util.mod_prefix .. "bioculture", amount = 10 *recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "nutrient-gel", amount = 100 * recipe_amount },
  },
  results = {
    { name = "raw-fish", amount = 10 * recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 50 * recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 50 * recipe_amount },
  },
  energy_required = 80,
  category = "space-growthx10",
  subgroup = "space-bioculture",
  icons = data_util.sub_icons(data.raw.capsule["raw-fish"].icon),
                             -- data.raw.item[data_util.mod_prefix .. "bioculture"].icon),
  hide_from_player_crafting = true,
  enabled = true,
  allow_as_intermediate = false,
  always_show_made_in = true,
})

make_recipe({
  name = "specimen-woodx10",
  ingredients = {
    { name = data_util.mod_prefix .. "bioculture", amount = 10 * recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "nutrient-gel", amount = 100 * recipe_amount },
  },
  results = {
    { name = "wood", amount = 100 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 125 * recipe_amount },
  },
  energy_required = 80,
  category = "space-growthx10",
  subgroup = "space-bioculture",
  icons = data_util.sub_icons(data.raw.item["wood"].icon),
                              --data.raw.item[data_util.mod_prefix .. "bioculture"].icon),
  hide_from_player_crafting = true,
  enabled = true,
  allow_as_intermediate = false,
  always_show_made_in = true,
})


end