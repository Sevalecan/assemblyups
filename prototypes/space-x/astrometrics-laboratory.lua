if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe
local obs_types = data_util.obs_types
local recipe_amount = 10

make_recipe({
  name = "astrometric-analysis-multispectral-1x10",
  ingredients = 
  {
    {name = data_util.mod_prefix .. "visible-observation-data", amount = recipe_amount },
    {name = data_util.mod_prefix .. "uv-observation-data", amount = recipe_amount },
    {name = data_util.mod_prefix .. "infrared-observation-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 10 * recipe_amount},
  },
  results = 
  {
    { data_util.mod_prefix .. "astrometric-data", 3 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10* recipe_amount},
  },
  energy_required = 3,
  icons = data_util.sub_icons("__space-exploration-graphics__/graphics/icons/data/astrometric.png",
                              { icon = "__space-exploration-graphics__/graphics/icons/number/1.png", scale = 0.5, icon_size = 20 }),
  icon_size = 64,
  category = "space-astrometricsx10",
  subgroup = "data-astronomic",
  enabled = true,
  always_show_made_in = true,
})
make_recipe({
  name = "astrometric-analysis-multispectral-2x10",
  ingredients = {
    {name =  data_util.mod_prefix .. "empty-data", amount = 5 * recipe_amount},
    {name =  data_util.mod_prefix .. "visible-observation-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "uv-observation-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "infrared-observation-data", amount = recipe_amount },
    {name =  data_util.mod_prefix .. "microwave-observation-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "xray-observation-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 10* recipe_amount},
  },
  results = {
    { data_util.mod_prefix .. "astrometric-data", 10 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10* recipe_amount},
  },
  icons = data_util.sub_icons("__space-exploration-graphics__/graphics/icons/data/astrometric.png",
                              { icon = "__space-exploration-graphics__/graphics/icons/number/2.png", scale = 0.5, icon_size = 20 }),
  energy_required = 10,
  icon_size = 64,
  category = "space-astrometricsx10",
  subgroup = "data-astronomic",
  enabled = true,
  always_show_made_in = true,
})
make_recipe({
  name = "astrometric-analysis-multispectral-3x10",
  ingredients = {
    {name =  data_util.mod_prefix .. "empty-data",amount = 13 * recipe_amount},
    { name = data_util.mod_prefix .. "visible-observation-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "infrared-observation-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "uv-observation-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "microwave-observation-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "xray-observation-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "radio-observation-data", amount = recipe_amount },
    { name = data_util.mod_prefix .. "gammaray-observation-data", amount = recipe_amount },
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-cold", amount = 10* recipe_amount},
  },
  results = {
    { data_util.mod_prefix .. "astrometric-data", 20 * recipe_amount},
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10* recipe_amount},
  },
  icons = data_util.sub_icons("__space-exploration-graphics__/graphics/icons/data/astrometric.png",
                              { icon = "__space-exploration-graphics__/graphics/icons/number/3.png", scale = 0.5, icon_size = 20 }),
  energy_required = 20,
  icon_size = 64,
  category = "space-astrometricsx10",
  subgroup = "data-astronomic",
  enabled = true,
  always_show_made_in = true,
})

local i = 0
for _, type in pairs(obs_types) do
  i = i + 1
  make_recipe({
    name = data_util.mod_prefix .. type[1] .. "-observation-datax10",
    ingredients = 
    {
      { name = data_util.mod_prefix .. "observation-frame-" .. type[1], amount = recipe_amount},
      { name = data_util.mod_prefix .. "observation-frame-" .. type[2], amount = recipe_amount},
      { name = data_util.mod_prefix .. "empty-data", amount = recipe_amount },
    },
    results = {
      { name = data_util.mod_prefix .. type[1] .. "-observation-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = type[3] },
      --{ name = data_util.mod_prefix .. "junk-data", amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.99 - type[3] },
      --{ name = data_util.mod_prefix .. "scrap",  amount_min = recipe_amount, amount_max = recipe_amount, probability = 0.01 * type[2] },
    },
    energy_required = math.floor(60 * type[3]) / 10,
    main_product = data_util.mod_prefix .. type[1] .. "-observation-data",
    icon = "__space-exploration-graphics__/graphics/icons/data/"..type[1].."-observation.png",
    icon_size = 64, icon_mipmaps = recipe_amount,
    category = "space-astrometricsx10",
    order = "od-a"..i,
    enabled = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
  })
end
end
