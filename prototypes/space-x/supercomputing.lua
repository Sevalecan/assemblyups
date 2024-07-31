if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe
local recipe_amount = 10


-- formating (junk)
make_recipe({
  name = data_util.mod_prefix .. "formatting-1",
  ingredients = {
    { name = data_util.mod_prefix .. "junk-data", amount = 1 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 1},
  },
  results = {
    { name = data_util.mod_prefix .. "empty-data", amount_min = 1, amount_max = 1, probability = 0.7 },
    { name = data_util.mod_prefix .. "broken-data", amount_min = 1, amount_max = 1, probability = 0.29 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 1},
  },
  icons = data_util.sub_icons("__space-exploration-graphics__/graphics/icons/data/junk.png"),
                              --data.raw.item[data_util.mod_prefix .. "space-supercomputer-1"].icon),
  energy_required = 1.5,
  hide_from_player_crafting = true,
  subgroup = "data-generic",
  category = "space-supercomputing-1",
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "formatting-2",
  ingredients = {
    { name = data_util.mod_prefix .. "junk-data", amount = 1 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 1},
  },
  results = {
    { name = data_util.mod_prefix .. "empty-data", amount_min = 1, amount_max = 1, probability = 0.8 },
    { name = data_util.mod_prefix .. "broken-data", amount_min = 1, amount_max = 1, probability = 0.19 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 1},
  },
  icons = data_util.sub_icons("__space-exploration-graphics__/graphics/icons/data/junk.png"),
                              --data.raw.item[data_util.mod_prefix .. "space-supercomputer-2"].icon),
  energy_required = 4,
  subgroup = "data-generic",
  category = "space-supercomputing-2",
  always_show_made_in = true,
})
make_recipe({
  name = "formatting-3x10",
  ingredients = {
    { name = data_util.mod_prefix .. "junk-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "empty-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.9 },
    --{ name = data_util.mod_prefix .. "broken-data", amount_min = 1, amount_max = 1, probability = 0.09 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = recipe_amount},
  },
  icons = data_util.sub_icons("__space-exploration-graphics__/graphics/icons/data/junk.png"),
                              --data.raw.item[data_util.mod_prefix .. "space-supercomputer-3"].icon),
  energy_required = 10,
  subgroup = "data-generic",
  category = "space-supercomputing-3",
  always_show_made_in = true,
})
make_recipe({
  name = "formatting-4x10",
  ingredients = {
    { name = data_util.mod_prefix .. "junk-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = recipe_amount},
    { name = data_util.mod_prefix .. "cryonite-rod", amount = recipe_amount},
  },
  results = {
    { name = data_util.mod_prefix .. "empty-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.95 },
    --{ name = data_util.mod_prefix .. "broken-data", amount_min = 1, amount_max = 1, probability = 0.05 },
    { name = data_util.mod_prefix .. "cryonite-rod", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.9},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = recipe_amount},
  },
  icons = data_util.sub_icons("__space-exploration-graphics__/graphics/icons/data/junk.png"),
                             -- data.raw.item[data_util.mod_prefix .. "space-supercomputer-4"].icon),
  energy_required = 16,
  subgroup = "data-generic",
  category = "space-supercomputing-4",
  always_show_made_in = true,
})

make_recipe({
  name = "machine-learning-datax10",
  ingredients = {
    { name = data_util.mod_prefix .. "empty-data", amount = 10 },
    { name = "electronic-circuit", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 50},
  },
  results = {
    { name = data_util.mod_prefix .. "machine-learning-data", amount = 10 },
    { name = data_util.mod_prefix .. "scrap", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 50},
  },
  main_product = data_util.mod_prefix .. "machine-learning-data",
  energy_required = 10,
  subgroup = "data-generic",
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

-- simulation
make_recipe({
  name = "simulation-ax10",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 360 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 40 },
    { name = data_util.mod_prefix .. "empty-data", amount = 320 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
  },
  energy_required = 30,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  order = "sim1-a",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "simulation-sx10",
  ingredients = {
    { name = data_util.mod_prefix .. "energy-insight", amount = 360 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 40},
    { name = data_util.mod_prefix .. "empty-data", amount = 320 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "energy-insight"].icon, scale = 0.118, shift = {0, -7}, icon_size = 64 },
  },
  energy_required = 30,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1",
  order = "sim1-b",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "simulation-bx10",
  ingredients = {
    { name = data_util.mod_prefix .. "biological-insight", amount = 360 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 40 },
    { name = data_util.mod_prefix .. "empty-data", amount = 320 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-insight"].icon, scale = 0.118, shift = {0, -7}, icon_size = 64 },
  },
  energy_required = 30,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  order = "sim1-c",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-m",
  ingredients = {
    { name = data_util.mod_prefix .. "material-insight", amount = 36 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 4 },
    { name = data_util.mod_prefix .. "empty-data", amount = 32 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
   -- { icon = data.raw.item[data_util.mod_prefix .. "material-insight"].icon, scale = 0.118, shift = {0, -7}, icon_size = 64 },
  },
  energy_required = 30,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1",
  order = "sim1-d",
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-as",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 18 },
    { name = data_util.mod_prefix .. "energy-insight", amount = 18 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 6 },
    { name = data_util.mod_prefix .. "empty-data", amount = 30 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-insight"].icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
   -- { icon = data.raw.item[data_util.mod_prefix .. "energy-insight"].icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 60,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  hide_from_player_crafting = true,
  category = "space-supercomputing-1",
  order = "sim2-a",
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-ab",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 18 },
    { name = data_util.mod_prefix .. "biological-insight", amount = 18 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 6 },
    { name = data_util.mod_prefix .. "empty-data", amount = 30 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-insight"].icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-insight"].icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 60,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1",
  order = "sim2-b",
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-am",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 18 },
    { name = data_util.mod_prefix .. "material-insight", amount = 18 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 6 },
    { name = data_util.mod_prefix .. "empty-data", amount = 30 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-insight"].icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "material-insight"].icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 60,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1",
  order = "sim2-c",
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-sb",
  ingredients = {
    { name = data_util.mod_prefix .. "energy-insight", amount = 18 },
    { name = data_util.mod_prefix .. "biological-insight", amount = 18 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 6 },
    { name = data_util.mod_prefix .. "empty-data", amount = 30 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "energy-insight"].icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-insight"].icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 60,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1",
  order = "sim2-d",
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-sm",
  ingredients = {
    { name = data_util.mod_prefix .. "energy-insight", amount = 18 },
    { name = data_util.mod_prefix .. "material-insight", amount = 18 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 6 },
    { name = data_util.mod_prefix .. "empty-data", amount = 30 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "energy-insight"].icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "material-insight"].icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 60,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1",
  order = "sim2-e",
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-bm",
  ingredients = {
    { name = data_util.mod_prefix .. "biological-insight", amount = 18 },
    { name = data_util.mod_prefix .. "material-insight", amount = 18 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 6 },
    { name = data_util.mod_prefix .. "empty-data", amount = 30 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
   -- { icon = data.raw.item[data_util.mod_prefix .. "biological-insight"].icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
   -- { icon = data.raw.item[data_util.mod_prefix .. "material-insight"].icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 60,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1",
  order = "sim2-f",
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "simulation-asbx10",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 120 },
    { name = data_util.mod_prefix .. "energy-insight", amount = 120 },
    { name = data_util.mod_prefix .. "biological-insight", amount = 120 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 80 },
    { name = data_util.mod_prefix .. "empty-data", amount = 280 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-insight"].icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "energy-insight"].icon, scale = 0.118, shift = {0, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-insight"].icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 120,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  order = "sim3-a",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "simulation-asmx10",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 120 },
    { name = data_util.mod_prefix .. "energy-insight", amount = 120 },
    { name = data_util.mod_prefix .. "material-insight", amount = 120 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 80 },
    { name = data_util.mod_prefix .. "empty-data", amount = 280 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = astronomic-insight.icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
    --{ icon = energy-insight.icon, scale = 0.118, shift = {0, -7}, icon_size = 64 },
    --{ icon = material-insight.icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 120,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  order = "sim3-b",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-abm",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 12 },
    { name = data_util.mod_prefix .. "biological-insight", amount = 12 },
    { name = data_util.mod_prefix .. "material-insight", amount = 12 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 8 },
    { name = data_util.mod_prefix .. "empty-data", amount = 28 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-insight"].icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-insight"].icon, scale = 0.118, shift = {0, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "material-insight"].icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 120,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1",
  order = "sim3-c",
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-sbm",
  ingredients = {
    { name = data_util.mod_prefix .. "energy-insight", amount = 12 },
    { name = data_util.mod_prefix .. "biological-insight", amount = 12 },
    { name = data_util.mod_prefix .. "material-insight", amount = 12 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 8 },
    { name = data_util.mod_prefix .. "empty-data", amount = 28 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "energy-insight"].icon, scale = 0.118, shift = {-5.9, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-insight"].icon, scale = 0.118, shift = {0, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "material-insight"].icon, scale = 0.118, shift = {5.9, -7}, icon_size = 64 },
  },
  energy_required = 120,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-1",
  order = "sim3-d",
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = data_util.mod_prefix .. "simulation-asbm",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 9 },
    { name = data_util.mod_prefix .. "energy-insight", amount = 9 },
    { name = data_util.mod_prefix .. "biological-insight", amount = 9 },
    { name = data_util.mod_prefix .. "material-insight", amount = 9 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10},
  },
  results = {
    { name = data_util.mod_prefix .. "significant-data", amount = 10 },
    { name = data_util.mod_prefix .. "empty-data", amount = 26 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10},
  },
  icons = {
    { icon = "__space-exploration-graphics__/graphics/icons/data/significant.png", scale = 0.5, shift = {-1, 2}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-insight"].icon, scale = 0.118, shift = {-8.7, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "energy-insight"].icon, scale = 0.118, shift = {-2.9, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-insight"].icon, scale = 0.118, shift = {2.9, -7}, icon_size = 64 },
    --{ icon = data.raw.item[data_util.mod_prefix .. "material-insight"].icon, scale = 0.118, shift = {8.7, -7}, icon_size = 64 },
  },
  energy_required = 240,
  subgroup = "data-significant",
  allow_as_intermediate = false,
  category = "space-supercomputing-2",
  order = "sim4-a",
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

make_recipe({
  name = "astronomic-insight-1x10",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-catalogue-1", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 20 },
    { name = data_util.mod_prefix .. "empty-data", amount = 20 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-catalogue-1"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/astronomic-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/1.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 10,
  subgroup = "data-catalogue-astronomic",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "energy-insight-1x10",
  ingredients = {
    { name = data_util.mod_prefix .. "energy-catalogue-1", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "energy-insight", amount = 20 },
    { name = data_util.mod_prefix .. "empty-data", amount = 20 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "energy-catalogue-1"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/energy-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/1.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 10,
  subgroup = "data-catalogue-energy",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "biological-insight-10",
  ingredients = {
    { name = data_util.mod_prefix .. "biological-catalogue-1", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "biological-insight", amount = 20 },
    { name = data_util.mod_prefix .. "empty-data", amount = 20 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-catalogue-1"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/biological-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/1.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 10,
  subgroup = "data-catalogue-biological",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "material-insight-10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-catalogue-1", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "material-insight", amount = 20 },
    { name = data_util.mod_prefix .. "empty-data", amount = 20 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
   -- { icon = data.raw.item[data_util.mod_prefix .. "material-catalogue-1"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/material-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/1.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 10,
  subgroup = "data-catalogue-material",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "astronomic-insight-2x10",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "astronomic-catalogue-2", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 60 },
    { name = data_util.mod_prefix .. "empty-data", amount = 20 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-catalogue-2"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/astronomic-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/2.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 20,
  subgroup = "data-catalogue-astronomic",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "energy-insight-2x10",
  ingredients = {
    { name = data_util.mod_prefix .. "energy-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "energy-catalogue-2", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "energy-insight", amount = 60 },
    { name = data_util.mod_prefix .. "empty-data", amount = 20 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "energy-catalogue-2"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/energy-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/2.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 20,
  subgroup = "data-catalogue-energy",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "biological-insight-2x10",
  ingredients = {
    { name = data_util.mod_prefix .. "biological-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "biological-catalogue-2", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "biological-insight", amount = 60 },
    { name = data_util.mod_prefix .. "empty-data", amount = 20 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-catalogue-2"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/biological-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/2.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 20,
  subgroup = "data-catalogue-biological",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "material-insight-2x10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "material-catalogue-2", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "material-insight", amount = 60 },
    { name = data_util.mod_prefix .. "empty-data", amount = 20 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "material-catalogue-2"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/material-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/2.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 20,
  subgroup = "data-catalogue-material",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "astronomic-insight-3x10",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "astronomic-catalogue-2", amount = 10 },
    { name = data_util.mod_prefix .. "astronomic-catalogue-3", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 120 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-catalogue-3"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/astronomic-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/3.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 30,
  subgroup = "data-catalogue-astronomic",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "energy-insight-3x10",
  ingredients = {
    { name = data_util.mod_prefix .. "energy-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "energy-catalogue-2", amount = 10 },
    { name = data_util.mod_prefix .. "energy-catalogue-3", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "energy-insight", amount = 120 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "energy-catalogue-3"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/energy-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/3.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 30,
  subgroup = "data-catalogue-energy",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "biological-insight-3x10",
  ingredients = {
    { name = data_util.mod_prefix .. "biological-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "biological-catalogue-2", amount = 10 },
    { name = data_util.mod_prefix .. "biological-catalogue-3", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "biological-insight", amount = 120 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "biological-catalogue-3"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/biological-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/3.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 30,
  subgroup = "data-catalogue-biological",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "material-insight-3x10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "material-catalogue-2", amount = 10 },
    { name = data_util.mod_prefix .. "material-catalogue-3", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "material-insight", amount = 120 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "material-catalogue-3"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/material-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/3.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 30,
  subgroup = "data-catalogue-material",
  allow_as_intermediate = false,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "astronomic-insight-4x10",
  ingredients = {
    { name = data_util.mod_prefix .. "astronomic-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "astronomic-catalogue-2", amount = 10 },
    { name = data_util.mod_prefix .. "astronomic-catalogue-3", amount = 10 },
    { name = data_util.mod_prefix .. "astronomic-catalogue-4", amount = 10 },
    { name = data_util.mod_prefix .. "empty-data", amount = 60 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "astronomic-insight", amount = 220 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "astronomic-catalogue-4"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/astronomic-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/4.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 40,
  subgroup = "data-catalogue-astronomic",
  allow_as_intermediate = false,
  category = "space-supercomputing-2x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "energy-insight-4x10",
  ingredients = {
    { name = data_util.mod_prefix .. "energy-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "energy-catalogue-2", amount = 10 },
    { name = data_util.mod_prefix .. "energy-catalogue-3", amount = 10 },
    { name = data_util.mod_prefix .. "energy-catalogue-4", amount = 10 },
    { name = data_util.mod_prefix .. "empty-data", amount = 60 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "energy-insight", amount = 220 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
   -- { icon = data.raw.item[data_util.mod_prefix .. "energy-catalogue-4"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/energy-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/4.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 40,
  subgroup = "data-catalogue-energy",
  allow_as_intermediate = false,
  category = "space-supercomputing-2x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "biological-insight-4x10",
  ingredients = {
    { name = data_util.mod_prefix .. "biological-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "biological-catalogue-2", amount = 10 },
    { name = data_util.mod_prefix .. "biological-catalogue-3", amount = 10 },
    { name = data_util.mod_prefix .. "biological-catalogue-4", amount = 10 },
    { name = data_util.mod_prefix .. "empty-data", amount = 60 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "biological-insight", amount = 220 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon =  data.raw.item[data_util.mod_prefix .. "biological-catalogue-4"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/biological-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/4.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 40,
  subgroup = "data-catalogue-biological",
  allow_as_intermediate = false,
  category = "space-supercomputing-2x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "material-insight-4x10",
  ingredients = {
    { name = data_util.mod_prefix .. "material-catalogue-1", amount = 10 },
    { name = data_util.mod_prefix .. "material-catalogue-2", amount = 10 },
    { name = data_util.mod_prefix .. "material-catalogue-3", amount = 10 },
    { name = data_util.mod_prefix .. "material-catalogue-4", amount = 10 },
    { name = data_util.mod_prefix .. "empty-data", amount = 60 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "material-insight", amount = 220 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  icons = {
    --{ icon = data.raw.item[data_util.mod_prefix .. "material-catalogue-4"].icon, scale = 0.5, shift = {4, 0}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/catalogue/material-insight.png", scale = 0.35, shift = {-8, 4}, icon_size = 64 },
    { icon = "__space-exploration-graphics__/graphics/icons/number/4.png", scale = 0.5, shift = {-10, -10}, icon_size = 20 },
  },
  energy_required = 40,
  subgroup = "data-catalogue-material",
  allow_as_intermediate = false,
  category = "space-supercomputing-2x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})


make_recipe({
  name = "astronomic-catalogue-1x10",
  ingredients = {
    { name = data_util.mod_prefix .. "astrometric-data", amount = 10 },
    { name = data_util.mod_prefix .. "visible-observation-data", amount = 10 },
    { name = data_util.mod_prefix .. "infrared-observation-data", amount = 10 },
    { name = data_util.mod_prefix .. "uv-observation-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "astronomic-catalogue-1", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "astronomic-catalogue-1",
  subgroup = "data-catalogue-astronomic",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/astronomic-catalogue-1.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "astronomic-catalogue-2x10",
  ingredients = {
    { name = data_util.mod_prefix .. "microwave-observation-data", amount = 10 },
    { name = data_util.mod_prefix .. "xray-observation-data", amount = 10 },
    { name = data_util.mod_prefix .. "gravitational-lensing-data", amount = 10 },
    { name = data_util.mod_prefix .. "gravity-wave-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "astronomic-catalogue-2", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "astronomic-catalogue-2",
  subgroup = "data-catalogue-astronomic",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/astronomic-catalogue-2.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "astronomic-catalogue-3x10",
  ingredients = {
    { name = data_util.mod_prefix .. "radio-observation-data", amount = 10 },
    { name = data_util.mod_prefix .. "gammaray-observation-data", amount = 10 },
    { name = data_util.mod_prefix .. "darkmatter-data", amount = 10 },
    { name = data_util.mod_prefix .. "negative-pressure-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "astronomic-catalogue-3", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 30,
  main_product = data_util.mod_prefix .. "astronomic-catalogue-3",
  subgroup = "data-catalogue-astronomic",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/astronomic-catalogue-3.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "astronomic-catalogue-4x10",
  ingredients = {
    { name = data_util.mod_prefix .. "dark-energy-data", amount = 10 },
    { name = data_util.mod_prefix .. "micro-black-hole-data", amount = 10 },
    { name = data_util.mod_prefix .. "zero-point-energy-data", amount = 10 },
    { name = data_util.mod_prefix .. "belt-probe-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "astronomic-catalogue-4", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 40,
  main_product = data_util.mod_prefix .. "astronomic-catalogue-4",
  subgroup = "data-catalogue-astronomic",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/astronomic-catalogue-4.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

make_recipe({
  name = "energy-catalogue-1x10",
  ingredients = {
    { name = data_util.mod_prefix .. "polarisation-data", amount = 10 },
    { name = data_util.mod_prefix .. "conductivity-data", amount = 10 },
    { name = data_util.mod_prefix .. "radiation-data", amount = 10 },
    { name = data_util.mod_prefix .. "electromagnetic-field-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "energy-catalogue-1", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "energy-catalogue-1",
  subgroup = "data-catalogue-energy",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/energy-catalogue-1.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "energy-catalogue-2x10",
  ingredients = {
    { name = data_util.mod_prefix .. "atomic-data", amount = 10 },
    { name = data_util.mod_prefix .. "subatomic-data", amount = 10 },
    { name = data_util.mod_prefix .. "quantum-phenomenon-data", amount = 10 },
    { name = data_util.mod_prefix .. "forcefield-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "energy-catalogue-2", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "energy-catalogue-2",
  subgroup = "data-catalogue-energy",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/energy-catalogue-2.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "energy-catalogue-3x10",
  ingredients = {
    { name = data_util.mod_prefix .. "entanglement-data", amount = 10 },
    { name = data_util.mod_prefix .. "superconductivity-data", amount = 10 },
    { name = data_util.mod_prefix .. "quark-data", amount = 10 },
    { name = data_util.mod_prefix .. "lepton-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "energy-catalogue-3", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 30,
  main_product = data_util.mod_prefix .. "energy-catalogue-3",
  subgroup = "data-catalogue-energy",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/energy-catalogue-3.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "energy-catalogue-4x10",
  ingredients = {
    { name = data_util.mod_prefix .. "boson-data", amount = 10 },
    { name = data_util.mod_prefix .. "fusion-test-data", amount = 10 },
    { name = data_util.mod_prefix .. "magnetic-monopole-data", amount = 10 },
    { name = data_util.mod_prefix .. "star-probe-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "energy-catalogue-4", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 40,
  main_product = data_util.mod_prefix .. "energy-catalogue-4",
  subgroup = "data-catalogue-energy",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/energy-catalogue-4.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

make_recipe({
  name = "biological-catalogue-1x10",
  ingredients = {
    { name = data_util.mod_prefix .. "bio-combustion-data", amount = 10 },
    --{ name = data_util.mod_prefix .. "bio-spectral-data", amount = 10 },
    { name = data_util.mod_prefix .. "biomechanical-data", amount = 10 },
    { name = data_util.mod_prefix .. "biochemical-data", amount = 10 },
    { name = data_util.mod_prefix .. "genetic-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "biological-catalogue-1", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "biological-catalogue-1",
  subgroup = "data-catalogue-biological",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/biological-catalogue-1.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "biological-catalogue-2x10",
  ingredients = {
    { name = data_util.mod_prefix .. "bio-combustion-resistance-data", amount = 10 },
    { name = data_util.mod_prefix .. "experimental-genetic-data", amount = 10 },
    { name = data_util.mod_prefix .. "biochemical-resistance-data", amount = 10 },
    { name = data_util.mod_prefix .. "biomechanical-resistance-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "biological-catalogue-2", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "biological-catalogue-2",
  subgroup = "data-catalogue-biological",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/biological-catalogue-2.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "biological-catalogue-3x10",
  ingredients = {
    { name = data_util.mod_prefix .. "bioelectrics-data", amount = 10 },
    { name = data_util.mod_prefix .. "cryogenics-data", amount = 10 },
    { name = data_util.mod_prefix .. "decompression-data", amount = 10 },
    { name = data_util.mod_prefix .. "radiation-exposure-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "biological-catalogue-3", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 30,
  main_product = data_util.mod_prefix .. "biological-catalogue-3",
  subgroup = "data-catalogue-biological",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/biological-catalogue-3.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "biological-catalogue-4x10",
  ingredients = {
    { name = data_util.mod_prefix .. "comparative-genetic-data", amount = 10 },
    { name = data_util.mod_prefix .. "decompression-resistance-data", amount = 10 },
    { name = data_util.mod_prefix .. "neural-anomaly-data", amount = 10 },
    { name = data_util.mod_prefix .. "radiation-exposure-resistance-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "biological-catalogue-4", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 40,
  main_product = data_util.mod_prefix .. "biological-catalogue-4",
  subgroup = "data-catalogue-biological",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/biological-catalogue-4.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

make_recipe({
  name = "material-catalogue-1x10",
  ingredients = {
    { name = data_util.mod_prefix .. "cold-thermodynamics-data", amount = 10 },
    { name = data_util.mod_prefix .. "hot-thermodynamics-data", amount = 10 },
    { name = data_util.mod_prefix .. "tensile-strength-data", amount = 10 },
    { name = data_util.mod_prefix .. "compressive-strength-data", amount = 10 },
    --{ name = data_util.mod_prefix .. "shear-strength-data", amount = 1 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "material-catalogue-1", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 10,
  main_product = data_util.mod_prefix .. "material-catalogue-1",
  subgroup = "data-catalogue-material",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/material-catalogue-1.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "material-catalogue-2x10",
  ingredients = {
    { name = data_util.mod_prefix .. "rigidity-data", amount = 10 },
    { name = data_util.mod_prefix .. "pressure-containment-data", amount = 10 },
    { name = data_util.mod_prefix .. "corrosion-resistance-data", amount = 10 },
    { name = data_util.mod_prefix .. "impact-shielding-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "material-catalogue-2", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 20,
  main_product = data_util.mod_prefix .. "material-catalogue-2",
  subgroup = "data-catalogue-material",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/material-catalogue-2.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "material-catalogue-3x10",
  ingredients = {
    { name = data_util.mod_prefix .. "friction-data", amount = 10 },
    { name = data_util.mod_prefix .. "radiation-shielding-data", amount = 10 },
    { name = data_util.mod_prefix .. "explosion-shielding-data", amount = 10 },
    { name = data_util.mod_prefix .. "ballistic-shielding-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "material-catalogue-3", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 30,
  main_product = data_util.mod_prefix .. "material-catalogue-3",
  subgroup = "data-catalogue-material",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/material-catalogue-3.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})
make_recipe({
  name = "material-catalogue-4x10",
  ingredients = {
    { name = data_util.mod_prefix .. "laser-shielding-data", amount = 10 },
    { name = data_util.mod_prefix .. "particle-beam-shielding-data", amount = 10 },
    { name = data_util.mod_prefix .. "electrical-shielding-data", amount = 10 },
    { name = data_util.mod_prefix .. "experimental-alloys-data", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "material-catalogue-4", amount = 10 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 40,
  main_product = data_util.mod_prefix .. "material-catalogue-4",
  subgroup = "data-catalogue-material",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/material-catalogue-4.png",
  icon_size = 64,
  category = "space-supercomputing-1x10",
  enabled = true,
  hide_from_player_crafting = true,
  always_show_made_in = true,
})

--[[
make_recipe({
  name = data_util.mod_prefix .. "universal-catalogue",
  ingredients = {
    { data_util.mod_prefix .. "astronomic-catalogue-4", 1 },
    { data_util.mod_prefix .. "energy-catalogue-4", 1 },
    { data_util.mod_prefix .. "biological-catalogue-4", 1 },
    { data_util.mod_prefix .. "material-catalogue-4", 1 },
    { data_util.mod_prefix .. "deep-catalogue-4", 1 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
  },
  results = {
    { name = data_util.mod_prefix .. "universal-catalogue", amount = 5 },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
  },
  energy_required = 50,
  main_product = data_util.mod_prefix .. "universal-catalogue",
  icon = "__space-exploration-graphics__/graphics/icons/catalogue/universal-catalogue.png",
  icon_size = 64,
  category = "space-supercomputing-4",
  always_show_made_in = true,
})
]]

data:extend({

  {
    type = "recipe",
    name = "deep-catalogue-1x10",
    main_product = data_util.mod_prefix .. "deep-catalogue-1",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 60,
    ingredients = {
      { data_util.mod_prefix .. "void-probe-data", 10 },
      { data_util.mod_prefix .. "nano-engineering-data", 10 },
      { data_util.mod_prefix .. "naquium-structural-data", 10 },
      { data_util.mod_prefix .. "naquium-energy-data", 10 },
      { data_util.mod_prefix .. "cryonite-rod", 10 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 100},
    },
    results = {
      { data_util.mod_prefix .. "deep-catalogue-1", 10 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 100},
    },
    requester_paste_multiplier = 1,
    always_show_made_in = true,
    category = "space-supercomputing-3x10",
    
  },

  {
    type = "recipe",
    name = "deep-catalogue-2x10",
    main_product = data_util.mod_prefix .. "deep-catalogue-2",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 70,
    ingredients = {
      { data_util.mod_prefix .. "timespace-anomaly-data", 10 },
      { data_util.mod_prefix .. "singularity-data", 10 },
      { data_util.mod_prefix .. "hyperlattice-data", 10 },
      { data_util.mod_prefix .. "annihilation-data", 10 },
      { data_util.mod_prefix .. "cryonite-rod", 20 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 200},
    },
    results = {
      { data_util.mod_prefix .. "deep-catalogue-2", 10 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 200},
    },
    requester_paste_multiplier = 1,
    always_show_made_in = true,
    category = "space-supercomputing-3x10",
  },
  {
    type = "recipe",
    name = "deep-catalogue-3x10",
    main_product = data_util.mod_prefix .. "deep-catalogue-3",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 80,
    ingredients = {
      { data_util.mod_prefix .. "space-fold-data", 10 },
      { data_util.mod_prefix .. "space-warp-data", 10 },
      { data_util.mod_prefix .. "space-dilation-data", 10 },
      { data_util.mod_prefix .. "space-injection-data", 10 },
      { data_util.mod_prefix .. "cryonite-rod", 30 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 300},
    },
    results = {
      { data_util.mod_prefix .. "deep-catalogue-3", 10 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 300},
    },
    requester_paste_multiplier = 1,
    always_show_made_in = true,
    category = "space-supercomputing-3x10",
  },
  {
    type = "recipe",
    name = "deep-catalogue-4x10",
    main_product = data_util.mod_prefix .. "deep-catalogue-4",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 90,
    ingredients = {
      { data_util.mod_prefix .. "interstellar-data", 10 },
      { data_util.mod_prefix .. "teleportation-data", 10 },
      { data_util.mod_prefix .. "wormhole-data", 10 },
      { data_util.mod_prefix .. "rhga-data", 10 },
      { data_util.mod_prefix .. "cryonite-rod", 40 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 400},
    },
    results = {
      { data_util.mod_prefix .. "deep-catalogue-4", 10 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 400},
    },
    requester_paste_multiplier = 1,
    always_show_made_in = true,
    category = "space-supercomputing-4x10",
  },

  {
    type = "recipe",
    name = "rhga-datax10",
    main_product = data_util.mod_prefix .. "rhga-data",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 1000,
    ingredients = {
      { data_util.mod_prefix .. "empty-data", 500 },
      { data_util.mod_prefix .. "naquium-processor", 10 },
      { data_util.mod_prefix .. "cryonite-rod", 1000 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-supercooled", amount = 10000},
    },
    results = {
      { data_util.mod_prefix .. "rhga-data", 500 },
      { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10000},
    },
    requester_paste_multiplier = 1,
    always_show_made_in = true,
    category = "space-supercomputing-4x10",
  },
})
end


