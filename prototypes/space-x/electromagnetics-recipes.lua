if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe

make_recipe({
  name = data_util.mod_prefix .. "magnetic-canister",
  ingredients = {
    { data_util.mod_prefix .. "canister", 1},
    { "battery", 1},
    { data_util.mod_prefix .. "superconductive-cable", 1},
  },
  results = {
    { data_util.mod_prefix .. "magnetic-canister", 1},
  },
  energy_required = 10,
  category = "space-electrox10",
  enabled = false,
  always_show_made_in = true,
})

make_recipe({
  name = "bioelectrics-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "significant-specimen", amount = 10},
    { name = data_util.mod_prefix .. "empty-data", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount = 50},
  },
  results = {
    { name = data_util.mod_prefix .. "bioelectrics-data", amount_min = 10, amount_max = 10, probability = 0.9},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.09},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "bioelectrics-data",
  category = "space-electrox10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "conductivity-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10},
    { name = "copper-plate", amount = 40},
    { name = data_util.mod_prefix .. "holmium-plate", amount = 10},
    { name = "electronic-circuit", amount = 20},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "conductivity-data", amount = 10},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "conductivity-data",
  category = "space-electrox10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "superconductivity-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "holmium-cable", amount = 20},
    { name = data_util.mod_prefix .. "cryonite-rod", amount = 10},
    { name = data_util.mod_prefix .. "empty-data", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "superconductivity-data", amount_min = 10, amount_max = 10, probability = 0.7},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.29},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "superconductivity-data",
  category = "space-electrox10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "superconductive-cablex10",
  ingredients = {
    { name = data_util.mod_prefix .. "holmium-cable", amount = 20},
    { name = data_util.mod_prefix .. "cryonite-rod", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "superconductive-cable", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 100},
  },
  energy_required = 30,
  main_product = data_util.mod_prefix .. "superconductive-cable",
  category = "space-electrox10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "forcefield-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "polarisation-data", amount = 10},
    { name = data_util.mod_prefix .. "electromagnetic-field-data", amount = 10},
    { name = data_util.mod_prefix .. "holmium-cable", amount = 40},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "forcefield-data", amount_min = 10, amount_max = 10, probability = 0.5},
    { name = data_util.mod_prefix .. "empty-data", amount_min = 10, amount_max = 10, probability = 1},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.49},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "forcefield-data",
  category = "space-electrox10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "neural-anomaly-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10},
    { name = "processing-unit", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "neural-gel-2", amount = 200},
  },
  results = {
    { name = data_util.mod_prefix .. "neural-anomaly-data", amount_min = 10, amount_max = 10, probability = 0.5},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.49},
    { name = "processing-unit", amount_min = 10, amount_max = 10, probability = 0.75},
    { type = "fluid", name = data_util.mod_prefix .. "neural-gel-2", amount = 100},
    { type = "fluid", name = data_util.mod_prefix .. "bio-sludge", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "neural-anomaly-data",
  category = "space-electrox10",
  enabled = true,
  always_show_made_in = true,
})
if mods["krastorio2"] then
      make_recipe({
        name = "electromagnetic-field-datax10",
        ingredients = {
            { name = data_util.mod_prefix .. "empty-data", amount = 10},
            { name = "rare-metals", amount = 10},
            { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount = 500},
            { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
        },
        results = {
            { name = data_util.mod_prefix .. "electromagnetic-field-data", amount_min = 10, amount_max = 10, probability = 0.95},
            { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.04},
            { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
        },
        energy_required = 10,
        main_product = data_util.mod_prefix .. "electromagnetic-field-data",
        category = "space-electrox10",
        enabled = true,
        always_show_made_in = true,
      })
else 
    make_recipe({
    name = "electromagnetic-field-datax10",
    ingredients = {
        { name = data_util.mod_prefix .. "empty-data", amount = 10},
        --{ name = "rare-metals", amount = 10},
        { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount = 500},
        { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
    },
    results = {
        { name = data_util.mod_prefix .. "electromagnetic-field-data", amount_min = 10, amount_max = 10, probability = 0.95},
        { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.04},
        { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
    },
    energy_required = 10,
    main_product = data_util.mod_prefix .. "electromagnetic-field-data",
    category = "space-electrox10",
    enabled = true,
    always_show_made_in = true,
    })
end


make_recipe({
  name = "electrical-shielding-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount = 100},
    { name = "plastic-bar", amount = 10},
    { name = data_util.mod_prefix .. "iridium-plate", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "electrical-shielding-data", amount = 10},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 50},
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = 10, amount_max = 10, probability = 0.75 },
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "electrical-shielding-data",
  category = "space-electrox10",
  enabled = true,
  always_show_made_in = true,
})


make_recipe({
  name = "naquium-energy-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "naquium-ingot", amount = 10},
    { name = data_util.mod_prefix .. "ion-canister", amount = 10},
    { name = data_util.mod_prefix .. "empty-data", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "naquium-energy-data", amount = 10},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 250},
  },
  energy_required = 8,
  main_product = data_util.mod_prefix .. "naquium-energy-data",
  category = "space-electrox10",
  enabled = true,
  always_show_made_in = true,
})


data_util.make_recipe({
  name =  data_util.mod_prefix .. "railgun",
  ingredients = {
    { "plastic-bar", 10},
    { data_util.mod_prefix .. "heavy-girder", 10},
    { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount = 10},
    { "copper-cable", 1000},
  },
  results = {
    {  data_util.mod_prefix .. "railgun", 1},
  },
  energy_required = 30,
  category = "space-electrox10",
  enabled = false,
  always_show_made_in = true,
})

data_util.make_recipe({
  name =  data_util.mod_prefix .. "railgun-ammo",
  ingredients = {
    { data_util.mod_prefix .. "heavy-girder", 1},
    { "battery", 10},
  },
  results = {
    {  data_util.mod_prefix .. "railgun-ammo", 1},
  },
  energy_required = 10,
  category = "space-electrox10",
  enabled = false,
  always_show_made_in = true,
})

data_util.make_recipe({
  name = data_util.mod_prefix .. "tesla-gun",
  ingredients = {
    { "plastic-bar", 10},
    { data_util.mod_prefix .. "holmium-plate", 10},
    { data_util.mod_prefix .. "holmium-cable", 10},
    { type = "fluid", name = data_util.mod_prefix .. "ion-stream", amount = 10},
  },
  results = {
    { data_util.mod_prefix .. "tesla-gun", 1},
  },
  energy_required = 60,
  category = "space-electrox10",
  enabled = false,
})
data_util.make_recipe({
  name = data_util.mod_prefix .. "tesla-ammo",
  ingredients = {
    { "battery", 10},
    { data_util.mod_prefix .. "holmium-plate", 1},
  },
  results = {
    { data_util.mod_prefix .. "tesla-ammo", 1},
  },
  energy_required = 10,
  category = "space-electrox10",
  enabled = false,
  always_show_made_in = true,
})
end


