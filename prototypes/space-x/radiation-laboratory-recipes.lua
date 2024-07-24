if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe

make_recipe({
  name = "radiation-shielding-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10 },
    { name = "uranium-235", amount = 10 },
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 40 },
    { name = data_util.mod_prefix .. "iridium-plate", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "radiation-shielding-data", amount = 10},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 80},
    { name = "uranium-235", amount_min = 10, amount_max = 10, probability = 0.5 },
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = 10, amount_max = 10, probability = 0.75 },
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "radiation-shielding-data",
  category = "space-radiationx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "radiation-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10 },
    { name = "uranium-235", amount = 10 },
  },
  results = {
    { name = data_util.mod_prefix .. "radiation-data", amount = 10},
    { name = "uranium-235", amount_min = 10, amount_max = 10, probability = 0.5 },
  },
  energy_required = 8,
  main_product = data_util.mod_prefix .. "radiation-data",
  category = "space-radiationx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "radiation-exposure-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10 },
    { name = data_util.mod_prefix .. "specimen", amount = 10 },
    { name = "uranium-235", amount = 10 },
  },
  results = {
    { name = data_util.mod_prefix .. "radiation-exposure-data", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 100},
    { name = "uranium-235", amount_min = 10, amount_max = 10, probability = 0.5 },
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "radiation-exposure-data",
  category = "space-radiationx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "radiation-exposure-resistance-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10 },
    { name = data_util.mod_prefix .. "significant-specimen", amount = 10 },
    { name = "uranium-235", amount = 10 },
  },
  results = {
    { name = data_util.mod_prefix .. "radiation-exposure-resistance-data", amount = 10},
    { name = data_util.mod_prefix .. "significant-specimen", amount_min = 10, amount_max = 10, probability = 0.5 },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount_min = 10, amount_max = 100, probability = 1 },
    { name = "uranium-235", amount_min = 10, amount_max = 10, probability = 0.5 },
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "radiation-exposure-resistance-data",
  category = "space-radiationx10",
  enabled = true,
  always_show_made_in = true,
})
end