if mods["angelsrefining"] then
 data:extend({

  {
    type = "recipe",
    name = "angelsore3-crushed-smeltingx10",
    category = "SX10",
    enabled = true,
    energy_required = 3,
    ingredients = {{ type = "item", name = "angels-ore3-crushed", amount = 27}},
    results = {{"copper-plate", 20}},
    subgroup = "raw-material",
  },
  {
    type = "recipe",
    name = "angelsore1-crushed-smeltingx10",
    category = "SX10",
    enabled = true,
    energy_required = 3,
    ingredients = {{type = "item", name = "angels-ore1-crushed", amount = 27}},
    results = {{"iron-plate", 20}},
  },
  	--100
  {
    type = "recipe",
    name = "angelsore3-crushed-smeltingx100",
    category = "Smelting-X100",
    energy_required = 2.5,
    enabled = true,
    ingredients = {{type = "item", name = "angels-ore1-crushed", amount = 295}},
    results = {{"copper-plate", 200}},
  },
  {
    type = "recipe",
    name = "angelsore3-crushed-smeltingx100",
    category = "Smelting-X100",
    energy_required = 2.5,
    enabled = true,
    ingredients = {{type = "item", name = "angels-ore1-crushed", amount = 295}},
    results = {{"iron-plate",200}},
  },
  	--500
  {
    type = "recipe",
    name = "angelsore3-crushed-smeltingx500",
    category = "SX500",
    energy_required = 2,
    enabled = true,
    ingredients = {{ type = "item", name = "angels-ore1-crushed", amount = 1475}},
    results = {{"copper-plate", 1000}},
  },
  {
    type = "recipe",
    name = "angelsore3-crushed-smeltingx500",
    category = "SX500",
    energy_required = 2,
    enabled = true,
    ingredients = {{type = "item", name = "angels-ore1-crushed", amount = 1475}},
    results = {{"iron-plate",1000}},
  },
	-1000
  {
    type = "recipe",
    name = "angelsore3-crushed-smeltingx1000",
    category = "Smelting1000",
    energy_required = 1,
    enabled = true,
    ingredients = {{ type = "item", name = "angels-ore1-crushed", amount = 2900}},
    results = {{"copper-plate", 2000}},

  },
  {
    type = "recipe",
    name = "angelsore3-crushed-smeltingx1000",
    category = "Smelting1000",
    energy_required = 1,
    enabled = true,
    ingredients = {{type = "item", name = "angels-ore1-crushed", amount = 2900}},
    results = {{"iron-plate",2000}},

  },


})
end