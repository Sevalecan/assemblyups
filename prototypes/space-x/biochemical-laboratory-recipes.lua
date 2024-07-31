if mods["space-exploration"] then
local data_util = require("data_util")
--local RecipeTints = require("prototypes/recipe-tints")
local make_recipe = data_util.make_recipe
local recipe_amount = 10 




make_recipe({
  name = data_util.mod_prefix .. "bio-sludge-from-vitamelange",
  ingredients = {
    { name = data_util.mod_prefix .. "vitalic-acid", amount = recipe_amount},
    { name = data_util.mod_prefix .. "vitamelange-nugget", amount = 40},
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 10 * recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "bio-sludge", amount = recipe_amount },
  },
  
  --crafting_machine_tint = RecipeTints.bio_sludge_tint,
  energy_required = 4,
  localised_name = {"recipe-name."..data_util.mod_prefix .. "bio-sludge-from-vitamelange"},
  category = "space-biochemical",
  enabled = false,
  subgroup = "space-bioculture",
  order = "a-e",
  always_show_made_in = true,
})

make_recipe({
  name = "bio-sludgex10",
  ingredients = {
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 10 * recipe_amount},
    { name = data_util.mod_prefix .. "specimen", amount = recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "bio-sludge", amount = 30 * recipe_amount},
    --{ name = data_util.mod_prefix .. "contaminated-scrap", amount = 1 },
  },
  
  --crafting_machine_tint = RecipeTints.bio_sludge_tint,
  energy_required = 4,
  main_product = data_util.mod_prefix .. "bio-sludge",
  localised_name = {"recipe-name."..data_util.mod_prefix .. "bio-sludge"},
  category = "space-biochemicalx10",
  enabled = true,
  subgroup = "space-bioculture",
  order = "a-a",
  allow_as_intermediate = false,
  always_show_made_in = true,
})

make_recipe({
  name = data_util.mod_prefix .. "bio-sludge-crude-oil",
  ingredients = {
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = recipe_amount },
    { name = data_util.mod_prefix .. "experimental-specimen", amount = recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "bio-sludge", amount = 20 * recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = recipe_amount },
    { type = "fluid", name = "crude-oil", amount = 100 },
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 1 },
  },
  
  ---crafting_machine_tint = RecipeTints.bio_sludge_tint,
  energy_required = 10,
  category = "space-biochemical",
  enabled = false,
  subgroup = "space-bioculture",
  order = "a-b",
  allow_as_intermediate = false,
  always_show_made_in = true,
})

make_recipe({
  name = "biochemical-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "specimen", amount = recipe_amount},
    { name = data_util.mod_prefix .. "vitamelange-spice", amount = recipe_amount},
    { type="fluid", name = data_util.mod_prefix .. "chemical-gel", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "biochemical-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 10 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 10 * recipe_amount},
  },
  --crafting_machine_tint = RecipeTints.bio_sludge_tint,
  energy_required = 10,
  main_product = data_util.mod_prefix .. "biochemical-data",
  category = "space-biochemicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "cryogenics-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-specimen", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "cryogenics-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.9},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.09},
    { type="fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 10 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 10 * recipe_amount},
  },
  --crafting_machine_tint = RecipeTints.bio_sludge_tint,
  energy_required = 10,
  main_product = data_util.mod_prefix .. "cryogenics-data",
  category = "space-biochemicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "biochemical-resistance-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "experimental-specimen", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "vitalic-acid", amount = recipe_amount},
    { type="fluid", name = data_util.mod_prefix .. "chemical-gel", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "biochemical-resistance-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.9},
    { name = data_util.mod_prefix .. "experimental-specimen", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.09},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = recipe_amount },
  },
  --crafting_machine_tint = RecipeTints.bio_sludge_tint,
  energy_required = 10,
  main_product = data_util.mod_prefix .. "biochemical-resistance-data",
  category = "space-biochemicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "nutrient-gelx10",
  ingredients = {
    { name = "coal", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "chemical-gel", amount = 4 *recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "bio-sludge", amount = 20 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 25 * recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "nutrient-gel", amount = 50 * recipe_amount},
  },
  --icons = data_util.sub_icons(data.raw.fluid[data_util.mod_prefix .. "nutrient-gel"].icon),
                              --data.raw.item["coal"].icon),
  --crafting_machine_tint = RecipeTints.nutrient_tint,
  energy_required = 5,
  category = "space-biochemicalx10",
  subgroup = "space-bioculture",
  order = "b-a",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "nutrient-gel-methanex10",
  ingredients = {
    { type = "fluid", name = data_util.mod_prefix .. "methane-gas", amount = 50 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "chemical-gel", amount = 5 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "bio-sludge", amount = 10 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 20 * recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "nutrient-gel", amount = 50 * recipe_amount},
  },
  --icons = data_util.sub_icons(data.raw.fluid[data_util.mod_prefix .. "nutrient-gel"].icon),
                              --data.raw.fluid[data_util.mod_prefix .. "methane-gas"].icon),
  --crafting_machine_tint = RecipeTints.nutrient_tint,
  energy_required = 10,
  category = "space-biochemicalx10",
  subgroup = "space-bioculture",
  order = "b-b",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "nutrient-vatx10",
  ingredients = {
    { name = "iron-plate", amount = recipe_amount},
    { name = "glass", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "nutrient-gel", amount = 50 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "nutrient-vat", amount = 5 * recipe_amount},
  },
  --crafting_machine_tint = RecipeTints.nutrient_tint,
  energy_required = 10,
  category = "space-biochemicalx10",
  order = "c-a",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})




make_recipe({
  name = "melting-water-icex10",
  ingredients = {
    { name = data_util.mod_prefix .. "water-ice", amount = recipe_amount},
  },
  results = {
    { type = "fluid", name = "water", amount = 100 * recipe_amount},
  },
  --crafting_machine_tint = RecipeTints.cryonite_tint,
  energy_required = 0.25,
  subgroup = "space-fluid-recipes",
  category = "chemistry-10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "melting-methane-icex10",
  ingredients = {
    { name = data_util.mod_prefix .. "methane-ice", amount = recipe_amount},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "methane-gas", amount = 10 * recipe_amount},
  },
  --crafting_machine_tint = RecipeTints.methane_tint,
  energy_required = 0.25,
  subgroup = "space-fluid-recipes",
  category = "chemistry-10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "corrosion-resistance-datax10",
  ingredients = {
    { name = "glass", amount = 2 * recipe_amount},
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 2 * recipe_amount},
    { name = data_util.mod_prefix .. "iridium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { type = "fluid", name =  data_util.mod_prefix .. "chemical-gel", amount = 5 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "corrosion-resistance-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.5},
    { name = data_util.mod_prefix .. "scrap", amount = 6},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 5 * recipe_amount},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "corrosion-resistance-data",
  category = "space-mechanicalx10",
  hide_from_player_crafting = true,
  enabled = true,
  always_show_made_in = true,
})
end