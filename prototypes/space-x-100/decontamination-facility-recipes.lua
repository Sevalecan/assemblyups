if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe

data:extend({{
  type = "recipe",
  name = "se-space-waterx100",
  enabled = true,
  ingredients = {
    { type = "fluid", name = "water", amount = 750 },
    { type = "fluid", name = "lubricant", amount = 100 }
  },
  energy_required = 1,
  results = { { type = "fluid", name = "high-pressure-se-space-water", amount = 10} },
  allow_as_intermediate = false,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  icon_size = 64,
  crafting_machine_tint = nil, -- TODO: tint
  category = "space-decontaminationx100",
  subgroup = "space-fluid-recipes",
  always_show_made_in = true,
}})



data:extend({{
  type = "recipe",
  name = "bio-sludge-decontaminationx100",
  enabled = true,
  ingredients = {
    { type = "fluid", name = "high-pressure-se-contaminated-bio-sludge", amount = 100 },
  },
  results = {
    --{ name = data_util.mod_prefix .."contaminated-scrap", amount_min = 10, amount_max = 10, probability = 0.01 },
    { type = "fluid", name = "high-pressure-se-bio-sludge", amount = 99 },
  },
  energy_required = 5,
  allow_as_intermediate = false,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  icon_size = 64,
  crafting_machine_tint = nil, -- TODO: tint
  category = "space-decontaminationx100",
  subgroup = "space-fluid-recipes",
  icon_size = 64,
  always_show_made_in = true,
}})

data:extend({{
  type = "recipe",
  name = "space-water-decontaminationx100",
  enabled = true,
  ingredients = {
    { type = "fluid", name = "high-pressure-se-contaminated-space-water", amount = 100 },
  },
  results = {
    { type = "fluid", name = "high-pressure-se-space-water", amount = 99 },
    { type = "fluid", name = "high-pressure-se-contaminated-bio-sludge", amount = 1 },
    { name = data_util.mod_prefix .."contaminated-scrap", amount_min = 100, amount_max = 100, probability = 0.01 },
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
  name = "data-storage-substrate-cleanedx100",
  ingredients = {
    { data_util.mod_prefix .. "data-storage-substrate", 100},
    { type = "fluid", name = "high-pressure-se-space-water", amount = 5 }
  },
  results = {
    { data_util.mod_prefix .. "data-storage-substrate-cleaned", 100},
    { name = data_util.mod_prefix .. "scrap", amount_min = 100, amount_max = 100, probability = 0.01 },
    { type = "fluid", name = "high-pressure-se-contaminated-space-water", amount = 5 }
  },
  icon_size = 64,
  icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
  energy_required = 2.5,
  main_product = data_util.mod_prefix .. "data-storage-substrate-cleaned",
  category = "space-decontaminationx100",
  enabled = true,
  always_show_made_in = true,
})

make_recipe({
  name = "data-storage-substrate-cleaned-chemicalx100",
  ingredients = {
    { data_util.mod_prefix .. "data-storage-substrate", 100},
    { type = "fluid", name = data_util.mod_prefix .. "chemical-gel", amount = 100 }
  },
  results = {
    { data_util.mod_prefix .. "data-storage-substrate-cleaned", 100},
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
  name = "scrap-decontaminationx100",
  ingredients = {
    { data_util.mod_prefix .. "contaminated-scrap", 2000},
    { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 200},
  },
  results = {
    { name =  data_util.mod_prefix .. "scrap", amount = 2000},
    { name = "uranium-ore", amount_min = 100, amount_max = 100, probability = 0.001},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-space-water", amount = 100},
    { type = "fluid", name = data_util.mod_prefix .. "contaminated-bio-sludge", amount = 100},
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