if mods["space-exploration"] then
local data_util = require("data_util")
local make_recipe = data_util.make_recipe

-- plasma
make_recipe({
  name = data_util.mod_prefix .. "plasma-canister",
  ingredients = {
    { data_util.mod_prefix .. "magnetic-canister", 1},
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount=1000},
  },
  results = {
    { data_util.mod_prefix .. "plasma-canister", 1},
  },
  energy_required = 30,
  category = "space-plasma",
  subgroup = "space-fluid-recipes",
  enabled = false,
  always_show_made_in = true,
})

make_recipe({
  name = "plasma-streamx10",
  ingredients = {
    { name = "stone", amount = 10},
    { type = "fluid", name = data_util.mod_prefix .. "chemical-gel", amount = 100},
  },
  results = {
    { type = "fluid", name = data_util.mod_prefix .. "plasma-stream", amount = 1000},
  },
  energy_required = 30,
  category = "space-plasmax10",
  subgroup = "space-fluid-recipes",
  enabled = true,
  always_show_made_in = true,
})
end