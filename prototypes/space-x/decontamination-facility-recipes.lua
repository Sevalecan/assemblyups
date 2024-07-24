if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe

data:extend({{
  type = "recipe",
  name = "se-space-waterx10",
  enabled = true,
  ingredients = {
    { type = "fluid", name = "water", amount = 500 },
    { type = "fluid", name = "lubricant", amount = 10 }
  },
  energy_required = 1,
  results = { { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 100} },
  allow_as_intermediate = false,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  icon_size = 64,
  crafting_machine_tint = nil, -- TODO: tint
  category = "space-decontaminationx10",
  subgroup = "space-fluid-recipes",
  always_show_made_in = true,
}})



data:extend({{
  type = "recipe",
  name = "bio-sludge-decontaminationx10",
  enabled = true,
  ingredients = {
    { type = "fluid", name = data_util.mod_prefix .."contaminated-bio-sludge", amount = 1000 },
  },
  results = {
    --{ name = data_util.mod_prefix .."contaminated-scrap", amount_min = 10, amount_max = 10, probability = 0.01 },
    { type = "fluid", name = data_util.mod_prefix .."bio-sludge", amount = 990 },
  },
  energy_required = 5,
  allow_as_intermediate = false,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  icon_size = 64,
  crafting_machine_tint = nil, -- TODO: tint
  category = "space-decontaminationx10",
  subgroup = "space-fluid-recipes",
  icon_size = 64,
  always_show_made_in = true,
}})

data:extend({{
  type = "recipe",
  name = "space-water-decontaminationx10",
  enabled = true,
  ingredients = {
    { type = "fluid", name = data_util.mod_prefix .."contaminated-space-water", amount = 1000 },
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .."space-water", amount = 990 },
    { type = "fluid", name = data_util.mod_prefix .."contaminated-bio-sludge", amount = 10 },
    { name = data_util.mod_prefix .."contaminated-scrap", amount_min = 10, amount_max = 10, probability = 0.01 },
  },
  energy_required = 5,
  allow_as_intermediate = false,
  icon_size = 64,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  crafting_machine_tint = nil, -- TODO: tint
  category = "space-decontamination",
  subgroup = "space-fluid-recipes",
  icon_size = 64,
  always_show_made_in = true,
}})

make_recipe({
  name = "data-storage-substrate-cleanedx10",
  ingredients = {
    { data_util.mod_prefix .. "data-storage-substrate", 10},
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 50 }
  },
  results = {
    { data_util.mod_prefix .. "data-storage-substrate-cleaned", 10},
    { name = data_util.mod_prefix .. "scrap", amount_min = 10, amount_max = 10, probability = 0.01 },
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 50 }
  },
  icon_size = 64,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  energy_required = 2.5,
  main_product = data_util.mod_prefix .. "data-storage-substrate-cleaned",
  category = "space-decontaminationx10",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "data-storage-substrate-cleaned-chemicalx10",
  ingredients = {
    { data_util.mod_prefix .. "data-storage-substrate", 10},
    { type = "fluid", name = data_util.mod_prefix .. "chemical-gel", amount = 10 }
  },
  results = {
    { data_util.mod_prefix .. "data-storage-substrate-cleaned", 10},
  },
  icon_size = 64,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  energy_required = 2.5,
  main_product = data_util.mod_prefix .. "data-storage-substrate-cleaned",
  category = "space-decontamination",
  enabled = true,
  always_show_made_in = true,
})

-- scrap processing
make_recipe({
  name = "scrap-decontaminationx10",
  ingredients = {
    { data_util.mod_prefix .. "contaminated-scrap", 200},
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 20},
  },
  results = {
    { name =  data_util.mod_prefix .. "scrap", amount = 200},
    { name = "uranium-ore", amount_min = 10, amount_max = 10, probability = 0.001},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 10},
  },
  energy_required = 6,
  allow_as_intermediate = false,
  category = "space-decontamination",
  subgroup = "space-components",
  icon_size = 64,
  enabled = true,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  always_show_made_in = true,
}, false, true)
end