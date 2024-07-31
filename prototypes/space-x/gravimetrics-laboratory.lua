if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe
local recipe_amount = 10


make_recipe({
  name = "darkmatter-datax10",
  ingredients = {
    { data_util.mod_prefix .. "gravitational-lensing-data", recipe_amount},
    { data_util.mod_prefix .. "negative-pressure-data", recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "darkmatter-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.7 },
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.20},
    --{ name = data_util.mod_prefix .. "broken-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.39 },
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "darkmatter-data",
  icon = "__space-exploration-graphics__/graphics/icons/data/darkmatter.png",
  icon_size = 64,
  category = "space-gravimetricsx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "gravitational-lensing-datax10",
  ingredients = {
    { data_util.mod_prefix .. "astrometric-data", recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "gravitational-lensing-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.95 },
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.04},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "gravitational-lensing-data",
  icon = "__space-exploration-graphics__/graphics/icons/data/gravitational-lensing.png",
  icon_size = 64,
  category = "space-gravimetricsx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "timespace-anomaly-datax10",
  ingredients = {
    { data_util.mod_prefix .. "gravitational-lensing-data", recipe_amount},
    { data_util.mod_prefix .. "micro-black-hole-data", recipe_amount},
    { data_util.mod_prefix .. "negative-pressure-data", recipe_amount},
    { data_util.mod_prefix .. "zero-point-energy-data", recipe_amount},
    { data_util.mod_prefix .. "naquium-cube", recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "timespace-anomaly-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.6 },
    { name = data_util.mod_prefix .. "gravitational-lensing-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.6 },
    { name = data_util.mod_prefix .. "micro-black-hole-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.6 },
    { name = data_util.mod_prefix .. "negative-pressure-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.6 },
    { name = data_util.mod_prefix .. "zero-point-energy-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.6 },
    { name = data_util.mod_prefix .. "empty-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.6 },
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.6 },
    --{ name = data_util.mod_prefix .. "broken-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.6 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 30,
  --main_product = "timespace-anomaly-data",
  icon = "__space-exploration-graphics__/graphics/icons/data/timespace-anomaly.png",
  icon_size = 64,
  subgroup = 'machine_c',
  category = "space-gravimetricsx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name =  "dark-energy-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "negative-pressure-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "astrometric-data", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "dark-energy-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.75},
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.24},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 30,
  main_product = data_util.mod_prefix .. "dark-energy-data",
  category = "space-gravimetricsx10",
  enabled = true,
  always_show_made_in = true,
})



make_recipe({
  name =  "space-fold-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "naquium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-a", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-b", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "space-fold-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-c", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-d", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-e", amount = 0},
    { name = data_util.mod_prefix .. "arcosphere-f", amount = 0},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "space-fold-data",
  category = "arcospherex10",
  enabled = true,
  always_show_made_in = true,
  localised_description = {"space-exploration.arcosphere-random"}
})
make_recipe({
  name = "space-fold-data-altx10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "naquium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-a", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-b", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "space-fold-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-c", amount = 0},
    { name = data_util.mod_prefix .. "arcosphere-d", amount = 0},
    { name = data_util.mod_prefix .. "arcosphere-e", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-f", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "space-fold-data",
  category = "arcospherex10",
  enabled = true,
  always_show_made_in = true,
  localised_description = {"space-exploration.arcosphere-random"}
})

make_recipe({
  name = "space-warp-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "naquium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-e", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-f", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "space-warp-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-c", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-d", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-h", amount = 0},
    { name = data_util.mod_prefix .. "arcosphere-g", amount = 0},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "space-warp-data",
  category = "arcospherex10",
  enabled = true,
  always_show_made_in = true,
  localised_description = {"space-exploration.arcosphere-random"}
})
make_recipe({
  name = "space-warp-data-altx10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "naquium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-e", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-f", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "space-warp-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-c", amount = 0},
    { name = data_util.mod_prefix .. "arcosphere-d", amount = 0},
    { name = data_util.mod_prefix .. "arcosphere-h", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-g", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "space-warp-data",
  category = "arcospherex10",
  enabled = true,
  always_show_made_in = true,
  localised_description = {"space-exploration.arcosphere-random"}
})

make_recipe({
  name = "space-dilation-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "naquium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-c", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-h", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "space-dilation-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-a", amount = 2 * recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-f", amount = 0},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "space-dilation-data",
  category = "arcospherex10",
  enabled = true,
  always_show_made_in = true,
  localised_description = {"space-exploration.arcosphere-random"}
})
make_recipe({
  name = "space-dilation-data-altx10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "naquium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-c", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-h", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "space-dilation-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-a", amount = 0},
    { name = data_util.mod_prefix .. "arcosphere-f", amount = 2 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "space-dilation-data",
  category = "arcospherex10",
  enabled = true,
  always_show_made_in = true,
  localised_description = {"space-exploration.arcosphere-random"}
})

make_recipe({
  name = "space-injection-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "naquium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-d", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-g", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "space-injection-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-e", amount = 2 * recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-c", amount = 0},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10 * recipe_amount},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "space-injection-data",
  category = "arcospherex10",
  enabled = true,
  always_show_made_in = true,
  localised_description = {"space-exploration.arcosphere-random"}
})
make_recipe({
  name = "space-injection-data-altx10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "naquium-plate", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-d", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-g", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10  * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "space-injection-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-e", amount = 0},
    { name = data_util.mod_prefix .. "arcosphere-c", amount = 2 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10  * recipe_amount},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "space-injection-data",
  category = "arcospherex10",
  enabled = true,
  always_show_made_in = true,
  localised_description = {"space-exploration.arcosphere-random"}
})


make_recipe({
  name = "wormhole-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-a", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-c", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-e", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-g", amount = recipe_amount},
    { name = data_util.mod_prefix .. "naquium-cube", amount = recipe_amount},
    { name = data_util.mod_prefix .. "cryonite-rod", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10 * recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "wormhole-data", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-b", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-d", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-f", amount = recipe_amount},
    { name = data_util.mod_prefix .. "arcosphere-h", amount = recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 10 * recipe_amount},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "wormhole-data",
  category = "arcospherex10",
  enabled = true,
  always_show_made_in = true,
})

end
