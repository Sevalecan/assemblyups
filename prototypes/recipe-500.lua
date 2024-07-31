if mods["Krastorio2"] then
	data:extend ({
		{
            type = "recipe",
            name = "automation-science-pack-X500",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 5,
            category = "X500",
            requester_paste_multiplier = 10,
            ingredients =
            {
                    {"automation-core", 1000},
                    {"blank-tech-card", 2500}
            },
            result_count = 2500,
            result = "automation-science-pack"
        },
        {
            type = "recipe",
            name = "chemical-science-pack-X500",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 10,
            category = "X500",
            requester_paste_multiplier = 10,
            ingredients =
            {
                    {"glass", 7500},
                    {type = "fluid", name = "high-pressure-sulfuric-acid", amount = 250},
                    {"advanced-circuit", 2500},
                    {"blank-tech-card", 2500}
            },
            result_count = 2500,
            result = "chemical-science-pack"
        },
        {
            type = "recipe",
            name = "logistic-science-pack-X500",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 5,
            category = "X500",
            ingredients =
            {
                {"iron-gear-wheel", 2500},
                {"electronic-circuit", 2500},
                {"blank-tech-card", 2500}
            },
            result_count = 2500,
            result = "logistic-science-pack"
        },
        {
    type = "recipe",
    name = "military-science-pack-X500",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 10,
    category = "X500",
    ingredients =
    {
      
      {"electronic-components", 2500},
      {"biters-research-data", 2500},
      {"blank-tech-card", 2500}
    },
    result_count = 2500,
    result = "military-science-pack"
  },
  {
    type = "recipe",
    name = "production-science-pack-X500",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category = "X500",
    ingredients =
    {
     {"uranium-238", 2500},
     {"productivity-module", 2500},
     {"fast-transport-belt", 5000},
     {"blank-tech-card", 2500}
    },
    result_count = 2500,
    result = "production-science-pack"
  },
  {
    type = "recipe",
    name = "utility-science-pack-X500",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category = "X500",
    ingredients =
    {
      {"low-density-structure", 2500},
      {"processing-unit", 2500},
      {"rocket-fuel", 2500},
      {"blank-tech-card", 2500}
    },
    result_count = 2500,
    result = "utility-science-pack"
  },
	})
else
data:extend({
  
  
  {
    type = "recipe",
    name = "automation-science-pack-X500",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 5,
    category ="X500",
    requester_paste_multiplier = 10,
    ingredients =
    {
      {"copper-plate", 500},
      {"iron-gear-wheel", 500}
    },
    result_count = 500,
    result = "automation-science-pack"
  },
  {
    type = "recipe",
    name = "logistic-science-pack-X500",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 5,
    category ="X500",
    ingredients =
    {
      {"inserter", 500},
      {"transport-belt", 500}
    },
    result_count = 500,
    result = "logistic-science-pack"
  },
  {
    type = "recipe",
    name = "chemical-science-pack-X500",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category ="X500",
    ingredients =
    {
      {"engine-unit", 1000},
      {"advanced-circuit", 300},
      {"sulfur", 1000}
    },
    result_count = 1000,
    result = "chemical-science-pack"
  },
  {
    type = "recipe",
    name = "military-science-pack-X500",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 10,
    category ="X500",
    ingredients =
    {
      {"piercing-rounds-magazine", 500},
      {"grenade", 500},
      {"stone-wall", 1000}
    },
    result_count = 1000,
    result = "military-science-pack"
  },
  {
    type = "recipe",
    name = "production-science-pack-X500",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category ="X500",
    ingredients =
    {
     {"electric-furnace", 500},
     {"productivity-module", 500},
     {"rail", 15000}
    },
    result_count = 1500,
    result = "production-science-pack"
  },
  {
    type = "recipe",
    name = "utility-science-pack-X500",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category ="X500",
    ingredients =
    {
      {"low-density-structure", 1500},
      {"processing-unit", 1000},
      {"flying-robot-frame", 500}
    },
    result_count = 1500,
    result = "utility-science-pack"
  },
})
end
data:extend({

  --items for science
  {
    type = "recipe",
    name = "assembling-machine-1-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category = "X500",
    ingredients = {{"iron-plate", 4500},{"iron-gear-wheel", 2500},{"electronic-circuit", 1500}},
    result = "assembling-machine-1",
    result_count = 500
  },
  {
    type = "recipe",
    name = "assembling-machine-2-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category = "X500",
    ingredients = {{"steel-plate", 1000},{"iron-gear-wheel", 2500},{"electronic-circuit", 1500},{"assembling-machine-1", 500}},
    result = "assembling-machine-2",
    result_count = 500
  },
  {
    type = "recipe",
    name = "iron-stick-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients = {{"iron-plate", 500}},
    result = "iron-stick",
    result_count = 5000
  },
  {
    type = "recipe",
    name = "iron-gear-wheel-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients = {{"iron-plate", 1000}},
    result = "iron-gear-wheel",
    result_count = 500
  },
  {
    type = "recipe",
    name = "electronic-circuit-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
        {"iron-plate", 500},
        {"copper-cable", 1500}
    },
    result = "electronic-circuit",
    result_count = 500
  },
  {
    type = "recipe",
    name = "inserter-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"electronic-circuit", 500},
      {"iron-gear-wheel", 500},
      {"iron-plate", 500}
    },
    result = "inserter",
    result_count = 500
  },
  {
    type = "recipe",
    name = "transport-belt-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"iron-plate", 500},
      {"iron-gear-wheel", 500}
    },
    result = "transport-belt",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "fast-inserter-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"electronic-circuit", 1000},
      {"iron-plate", 1000},
      {"inserter", 500}
    },
    result = "fast-inserter",
    result_count = 500
  },
  {
    type = "recipe",
    name = "pipe-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients = {{"iron-plate", 500}},
    result = "pipe",
    result_count = 500
  },
  {
    type = "recipe",
    name = "copper-cable-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients = {{"copper-plate", 500}},
    result = "copper-cable",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "stone-wall-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients = {{"stone-brick", 500}},
    result = "stone-wall",
    result_count = 500
  },
  {
    type = "recipe",
    name = "engine-unit-1X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 500},
      {"iron-gear-wheel", 500},
      {"pipe", 1000}
    },
    result = "engine-unit",
    result_count = 500
  },
  {
    type = "recipe",
    name = "piercing-rounds-magazine-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    energy_required = 3,
    ingredients =
    {
      {"firearm-magazine", 500},
      {"steel-plate", 500},
      {"copper-plate", 500},
    },
    result = "piercing-rounds-magazine",
    result_count = 500
  },
  {
    type = "recipe",
    name = "grenade-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    energy_required = 8,
    ingredients =
    {
      {"iron-plate", 500},
      {"coal", 5000}
    },
    result = "grenade",
    result_count = 500
  },
  {
    type = "recipe",
    name = "concrete-X500",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"stone-brick", 500},
      {"iron-ore", 500},
      {type="fluid", name="water", amount=500}
    },
    result= "concrete",
    result_count = 5000
  },
  {
    type = "recipe",
    name = "hazard-concrete-X500",
    energy_required = 0.25,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"concrete", 5000}
    },
    result= "hazard-concrete",
    result_count = 5000
  },
  {
    type = "recipe",
    name = "refined-concrete-X500",
    energy_required = 15,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"concrete", 10000},
      {"iron-stick", 4000},
      {"steel-plate", 500},
      {type="fluid", name="water", amount=500}
    },
    result= "refined-concrete",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "refined-hazard-concrete-X500",
    energy_required = 0.25,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"refined-concrete", 5000}
    },
    result= "refined-hazard-concrete",
    result_count = 5000
  },
  {
    type = "recipe",
    name = "landfill-X500",
    energy_required = 0.5,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"stone", 10000}
    },
    result= "landfill",
    result_count = 500
  },
  {
    type = "recipe",
    name = "fast-transport-belt-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"iron-gear-wheel", 500},
      {"transport-belt", 500}
    },
    result = "fast-transport-belt",
    result_count = 500
  },
    {
    type = "recipe",
    name = "express-transport-belt-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      
      {type="fluid", name="high-pressure-lubricant", amount=100},
      {"iron-gear-wheel", 3750},
      {"fast-transport-belt", 500}
    },
    result = "express-transport-belt",
    result_count = 500
  },
  {
    type = "recipe",
    name = "solar-panel-X500",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"steel-plate", 500},
      {"electronic-circuit", 1500},
      {"copper-plate", 500}
    },
    result = "solar-panel",
    result_count = 500
  },
  {
    type = "recipe",
    name = "rail-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"stone", 500},
      {"iron-stick", 500},
      {"steel-plate", 500}
    },
    result = "rail",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "advanced-circuit-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    energy_required = 6,
    ingredients =
    {
        {"electronic-circuit", 1000},
        {"plastic-bar", 1000},
        {"copper-cable", 2000}
    },
    result = "advanced-circuit",
    result_count = 500,
  },
  {
    type = "recipe",
    name = "processing-unit-X500",
    enabled = false,
    hide_from_player_crafting = true,
    category ="X500",
    energy_required = 10,
    ingredients =
    {
        {"electronic-circuit", 10000},
        {"advanced-circuit", 1000},
        {type = "fluid", name = "high-pressure-sulfuric-acid", amount = 25}
    },
    result = "processing-unit",
    result_count = 50,
  },
  {
    type = "recipe",
    name = "logistic-robot-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"flying-robot-frame", 500},
      {"advanced-circuit", 1000}
    },
    result = "logistic-robot",
    result_count = 500
  },
  {
    type = "recipe",
    name = "construction-robot-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"flying-robot-frame", 500},
      {"electronic-circuit", 1000}
    },
    result = "construction-robot",
    result_count = 500
  },
  {
    type = "recipe",
    name = "accumulator-X500",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"iron-plate", 1000},
      {"battery", 2500}
    },
    result = "accumulator",
    result_count = 500
  },
  {
    type = "recipe",
    name = "electric-furnace-X500",
    ingredients = {{"steel-plate", 5000}, {"advanced-circuit", 2500}, {"stone-brick", 5000}},
    result = "electric-furnace",
    result_count = 500,
    energy_required = 5,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
  },
  {
    type = "recipe",
    name = "electric-engine-unit-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    energy_required = 10,
    ingredients =
    {
      {"engine-unit", 500},
      {type="fluid", name= "high-pressure-lubricant", amount = 75},
      {"electronic-circuit", 1000}
    },
    result = "electric-engine-unit",
    result_count = 500
  },
  {
    type = "recipe",
    name = "flying-robot-frame-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    energy_required = 21,
    ingredients =
    {
      {"electric-engine-unit", 500},
      {"battery", 1000},
      {"steel-plate", 500},
      {"electronic-circuit", 1500}
    },
    result = "flying-robot-frame",
    result_count = 500
  },
  {
    type = "recipe",
    name = "explosives-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category = ("chemistry-500"),
    crafting_machine_tint =
    {
      primary = {r = 0.968, g = 0.381, b = 0.259, a = 1.000}, -- #f66142ff
      secondary = {r = 0.892, g = 0.664, b = 0.534, a = 1.000}, -- #e3a988ff
      tertiary = {r = 1.000, g = 0.978, b = 0.513, a = 1.000}, -- #fff982ff
      quaternary = {r = 0.210, g = 0.170, b = 0.013, a = 1.000}, -- #352b03ff
    },
    energy_required = 4,
    ingredients =
      {
        {type="item", name="sulfur", amount=500},
        {type="item", name="coal", amount=500},
        {type="fluid", name="water", amount=250},
      },
    result= "explosives",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "battery-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category = "chemistry-500",
    energy_required = 4,
    ingredients =
    {
        {type="fluid", name="high-pressure-sulfuric-acid", amount=100},
        {"iron-plate", 500},
        {"copper-plate", 500}
    },
    result = "battery",
    result_count = 500,
    crafting_machine_tint =
    {
      primary = {r = 0.965, g = 0.482, b = 0.338, a = 1.000}, -- #f67a56ff
      secondary = {r = 0.831, g = 0.560, b = 0.222, a = 1.000}, -- #d38e38ff
      tertiary = {r = 0.728, g = 0.818, b = 0.443, a = 1.000}, -- #b9d070ff
      quaternary = {r = 0.939, g = 0.763, b = 0.191, a = 1.000}, -- #efc230ff
    }
  },
  {
    type = "recipe",
    name = "low-density-structure-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    energy_required = 21,
    ingredients =
    {
        {"steel-plate", 1000},
        {"copper-plate", 10000},
        {"plastic-bar", 2500}
    },
    result= "low-density-structure",
    result_count = 500,
  },
  {
    type = "recipe",
    name = "rocket-fuel-X500",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    energy_required = 30,
    ingredients =
    {
      {"solid-fuel", 5000},
      {type="fluid", name="high-pressure-light-oil", amount=50}
    },
    result= "rocket-fuel",
    result_count = 500
  },
  {
    type = "recipe",
    name = "rocket-control-unit-X500",
    energy_required = 30,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X500",
    ingredients =
    {
      {"processing-unit", 500},
      {"speed-module", 500}
    },
    result= "rocket-control-unit",
    result_count = 500
  },











})

