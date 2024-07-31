if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe

--[[
make_recipe({
  name = data_util.mod_prefix .. "doppler-shift-data",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 1},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 50},
  },
  results = {
    { name = data_util.mod_prefix .. "doppler-shift-data", amount = 1},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 50},
  },
  energy_required = 2,
  main_product = data_util.mod_prefix .. "doppler-shift-data",
  category = "space-laserx10",
  enabled = true,
  always_show_made_in = true,
})]]

make_recipe({
  name = "gravity-wave-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "astrometric-data", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "gravity-wave-data", amount_min = 10, amount_max = 10, probability = 0.3},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.69},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 100},
  },
  energy_required = 2,
  main_product = data_util.mod_prefix .. "gravity-wave-data",
  category = "space-laserx10",
  enabled = true,
  always_show_made_in = true,
})


make_recipe({
  name = "negative-pressure-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "astrometric-data", amount = 10},
    { name = data_util.mod_prefix .. "aeroframe-scaffold", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "negative-pressure-data", amount_min = 10, amount_max = 10, probability = 0.9},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.09},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "negative-pressure-data",
  category = "space-laserx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "polarisation-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 100},
    { name = data_util.mod_prefix .. "space-mirror", amount = 20},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "polarisation-data", amount = 90},
    { name = data_util.mod_prefix .. "junk-data", amount = 10},
    { name = data_util.mod_prefix .. "scrap", amount = 20},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 100},
  },
  energy_required = 60,
  main_product = data_util.mod_prefix .. "polarisation-data",
  category = "space-laserx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "quantum-phenomenon-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "quantum-phenomenon-data", amount_min = 10, amount_max = 10, probability = 0.5},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.49},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "quantum-phenomenon-data",
  category = "space-laserx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "zero-point-energy-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "negative-pressure-data", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "zero-point-energy-data", amount_min = 10, amount_max = 10, probability = 0.4},
    { name = data_util.mod_prefix .. "negative-pressure-data", amount_min = 10, amount_max = 10, probability = 0.4},
    { name = data_util.mod_prefix .. "junk-data", amount_min = 10, amount_max = 10, probability = 0.19},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "zero-point-energy-data",
  category = "space-laserx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "laser-shielding-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
    { name = data_util.mod_prefix .. "material-testing-pack", amount = 10 },
    { name = data_util.mod_prefix .. "iridium-plate", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "laser-shielding-data", amount = 10},
    { name = data_util.mod_prefix .. "contaminated-scrap", amount = 50},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
    { name = data_util.mod_prefix .. "iridium-plate", amount_min = 10, amount_max = 10, probability = 0.5 },
  },
  energy_required = 5,
  main_product = data_util.mod_prefix .. "laser-shielding-data",
  category = "space-laserx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "teleportation-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 20 },
    { name = data_util.mod_prefix .. "singularity-data", amount = 10},
    { name = data_util.mod_prefix .. "timespace-anomaly-data", amount = 10},
    { name = data_util.mod_prefix .. "naquium-cube", amount = 20},
    { name = data_util.mod_prefix .. "cryonite-rod", amount = 50},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "teleportation-data", amount = 40},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 100},
  },
  energy_required = 40,
  main_product = data_util.mod_prefix .. "teleportation-data",
  category = "space-laserx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "hyperlattice-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 60 },
    { name = data_util.mod_prefix .. "nanomaterial", amount = 10},
    { name = data_util.mod_prefix .. "naquium-plate", amount = 240},
  },
  results = {
    { name = data_util.mod_prefix .. "hyperlattice-data", amount=60},
  },
  energy_required = 40,
  main_product = data_util.mod_prefix .. "hyperlattice-data",
  category = "space-laserx10",
  enabled = true,
  always_show_made_in = true,
})
end


