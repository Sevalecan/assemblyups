if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe

make_recipe({
  name = "radiating-space-coolant-slowx100",
  ingredients = {
    { type = "fluid", name = "high-pressure-se-space-coolant-hot", amount = 500}, -- 2.5/s
  },
  results = {
    { type = "fluid", name = "high-pressure-se-space-coolant-warm", amount = 499}, -- -0.2%
  },
  -- icons = data_util.sub_icons(data.raw.fluid[data_util.mod_prefix .. "space-coolant-warm"].icon,
  --                             "__space-exploration-graphics__/graphics/icons/modules/effectivity-1.png"),
  energy_required = 200,
  subgroup = "space-cooling",
  category = "space-radiatorx100",
  localised_name = {"recipe-name." .. data_util.mod_prefix .. "radiating-space-coolant-slow"},
  enabled = true,
  always_show_made_in = true,
  order = "b-a",
})

make_recipe({
  name = "radiating-space-coolant-normalx100",
  ingredients = {
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 500}, -- 5/s
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 490}, -- -2%
  },
  energy_required = 10,
  subgroup = "space-cooling",
  category = "space-radiatorx100",
  localised_name = {"recipe-name." .. data_util.mod_prefix .. "radiating-space-coolant-normal"},
  enabled = false,
  always_show_made_in = true,
  order = "b-b",
})



make_recipe({
  name = data_util.mod_prefix .. "radiating-space-coolant-fast",
  ingredients = {
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-hot", amount = 10}, -- 10/s
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "space-coolant-warm", amount = 9}, -- -10%
  },
  -- icons = data_util.sub_icons(data.raw.fluid[data_util.mod_prefix .. "space-coolant-warm"].icon,
  --                             "__space-exploration-graphics__/graphics/icons/modules/speed-1.png"),
  energy_required = 1,
  subgroup = "space-cooling",
  category = "space-radiator",
  localised_name = {"recipe-name." .. data_util.mod_prefix .. "radiating-space-coolant-fast"},
  enabled = false,
  always_show_made_in = true,
  order = "b-c",
})
end