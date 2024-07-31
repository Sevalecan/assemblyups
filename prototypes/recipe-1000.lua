if mods["Krastorio2"] then
	data:extend ({
		{
            type = "recipe",
            name = "automation-science-pack-X1000",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 5,
            category = "Crafting-X1000",
            requester_paste_multiplier = 10,
            ingredients =
            {
                    {"automation-core", 2000},
                    {"blank-tech-card", 5000}
            },
            result_count = 5000,
            result = "automation-science-pack"
        },
        {
            type = "recipe",
            name = "chemical-science-pack-X1000",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 10,
            category = "Crafting-X1000",
            requester_paste_multiplier = 10,
            ingredients =
            {
                    {"glass", 15000},
                    {type = "fluid", name = "high-pressure-sulfuric-acid", amount = 500},
                    {"advanced-circuit", 5000},
                    {"blank-tech-card", 5000}
            },
            result_count = 5000,
            result = "chemical-science-pack"
        },
        {
            type = "recipe",
            name = "logistic-science-pack-X1000",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 5,
            category = "Crafting-X1000",
            ingredients =
            {
                {"iron-gear-wheel", 5000},
                {"electronic-circuit", 5000},
                {"blank-tech-card", 5000}
            },
            result_count = 5000,
            result = "logistic-science-pack"
        },
        {
    type = "recipe",
    name = "military-science-pack-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 10,
    category = "Crafting-X1000",
    ingredients =
    {
      
      {"electronic-components", 5000},
      {"biters-research-data", 5000},
      {"blank-tech-card", 5000}
    },
    result_count = 5000,
    result = "military-science-pack"
  },
  {
    type = "recipe",
    name = "production-science-pack-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category = "Crafting-X1000",
    ingredients =
    {
     {"uranium-238", 5000},
     {"productivity-module", 5000},
     {"fast-transport-belt", 10000},
     {"blank-tech-card", 5000}
    },
    result_count = 5000,
    result = "production-science-pack"
  },
  {
    type = "recipe",
    name = "utility-science-pack-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category = "Crafting-X1000",
    ingredients =
    {
      {"low-density-structure", 5000},
      {"processing-unit", 5000},
      {"rocket-fuel", 5000},
      {"blank-tech-card", 10000}
    },
    result_count = 5000,
    result = "utility-science-pack"
  },
	})
else
data:extend({
  
  
  {
    type = "recipe",
    name = "automation-science-pack-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 5,
    category = "Crafting-X1000",
    requester_paste_multiplier = 10,
    ingredients =
    {
      {"copper-plate", 1000},
      {"iron-gear-wheel", 1000}
    },
    result_count = 1000,
    result = "automation-science-pack"
  },
  {
    type = "recipe",
    name = "logistic-science-pack-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 6,
    category = "Crafting-X1000",
    ingredients =
    {
      {"inserter", 1000},
      {"transport-belt", 1000}
    },
    result_count = 1000,
    result = "logistic-science-pack"
  },
  {
    type = "recipe",
    name = "chemical-science-pack-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 24,
    category = "Crafting-X1000",
    ingredients =
    {
      {"engine-unit", 2000},
      {"advanced-circuit", 3000},
      {"sulfur", 2000}
    },
    result_count = 2000,
    result = "chemical-science-pack"
  },
  {
    type = "recipe",
    name = "military-science-pack-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 10,
    category = "Crafting-X1000",
    ingredients =
    {
      {"piercing-rounds-magazine", 1000},
      {"grenade", 1000},
      {"stone-wall", 2000}
    },
    result_count = 2000,
    result = "military-science-pack"
  },
  {
    type = "recipe",
    name = "production-science-pack-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 21,
    category = "Crafting-X1000",
    ingredients =
    {
     {"electric-furnace", 1000},
     {"productivity-module", 1000},
     {"rail", 30000}
    },
    result_count = 3000,
    result = "production-science-pack"
  },
  {
    type = "recipe",
    name = "utility-science-pack-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 21,
    category = "Crafting-X1000",
    ingredients =
    {
      {"low-density-structure", 3000},
      {"processing-unit", 2000},
      {"flying-robot-frame", 1000}
    },
    result_count = 3000,
    result = "utility-science-pack"
  },

})
end
data:extend({

  --items for science
  {
    type = "recipe",
    name = "iron-stick-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients = {{"iron-plate", 1000}},
    result = "iron-stick",
    result_count = 2000
  },
  {
    type = "recipe",
    name = "iron-gear-wheel-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients = {{"iron-plate", 2000}},
    result = "iron-gear-wheel",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "electronic-circuit-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
      ingredients =
      {
        {"iron-plate", 1000},
        {"copper-cable", 3000}
      },
      result = "electronic-circuit",
      result_count = 1000
  },
  {
    type = "recipe",
    name = "inserter-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"electronic-circuit", 1000},
      {"iron-gear-wheel", 1000},
      {"iron-plate", 1000}
    },
    result = "inserter",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "transport-belt-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"iron-plate", 1000},
      {"iron-gear-wheel", 1000}
    },
    result = "transport-belt",
    result_count = 2000
  },
  {
    type = "recipe",
    name = "fast-inserter-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"electronic-circuit", 2000},
      {"iron-plate", 2000},
      {"inserter", 1000}
    },
    result = "fast-inserter",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "pipe-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
      ingredients = {{"iron-plate", 1000}},
      result = "pipe",
      result_count = 1000,
  },
  {
    type = "recipe",
    name = "copper-cable-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients = {{"copper-plate", 1000}},
    result = "copper-cable",
    result_count = 2000
  },
  {
    type = "recipe",
    name = "stone-wall-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients = {{"stone-brick", 5000}},
    result = "stone-wall",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "engine-unit-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 1000},
      {"iron-gear-wheel", 1000},
      {"pipe", 2000}
    },
    result = "engine-unit",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "piercing-rounds-magazine-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    energy_required = 3,
    ingredients =
    {
      {"firearm-magazine", 1000},
      {"steel-plate", 1000},
      {"copper-plate", 5000}
    },
    result = "piercing-rounds-magazine",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "grenade-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    energy_required = 8,
    ingredients =
    {
      {"iron-plate", 5000},
      {"coal", 1000}
    },
    result = "grenade",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "concrete-X1000",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"stone-brick", 5000},
      {"iron-ore", 1000},
      {type="fluid", name="water", amount=500}
    },
    result= "concrete",
    result_count = 10000,
  },
  {
    type = "recipe",
    name = "hazard-concrete-X1000",
    energy_required = 0.25,
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"concrete", 1000}
    },
    result= "hazard-concrete",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "refined-concrete-X1000",
    energy_required = 15,
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"concrete", 2000},
      {"iron-stick", 8000},
      {"steel-plate", 1000},
      {type="fluid", name="water", amount=500}
    },
    result= "refined-concrete",
    result_count = 2000
  },
  {
    type = "recipe",
    name = "refined-hazard-concrete-X1000",
    energy_required = 0.25,
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"refined-concrete", 1000}
    },
    result= "refined-hazard-concrete",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "landfill-X1000",
    energy_required = 0.5,
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"stone", 2000}
    },
    result= "landfill",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "fast-transport-belt-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"iron-gear-wheel", 5000},
      {"transport-belt", 1000}
    },
    result = "fast-transport-belt",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "express-transport-belt-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category ="Crafting-X1000",
    ingredients =
    {
      
      {type="fluid", name="high-pressure-lubricant", amount=200},
      {"iron-gear-wheel", 7500},
      {"fast-transport-belt", 1000}
    },
    result = "express-transport-belt",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "solar-panel-X1000",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"steel-plate", 5000},
      {"electronic-circuit", 15000},
      {"copper-plate", 5000}
    },
    result = "solar-panel",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "rail-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"stone", 1000},
      {"iron-stick", 1000},
      {"steel-plate", 1000}
    },
    result = "rail",
    result_count = 2000
  },
  {
    type = "recipe",
    name = "advanced-circuit-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
      energy_required = 6,
      ingredients =
      {
        {"electronic-circuit", 2000},
        {"plastic-bar", 2000},
        {"copper-cable", 4000}
      },
      result = "advanced-circuit",
      result_count = 1000,
  },
  {
    type = "recipe",
    name = "processing-unit-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
      energy_required = 10.25,
      ingredients =
      {
        {"electronic-circuit", 2000},
        {"advanced-circuit", 2000},
        {type = "fluid", name = "high-pressure-sulfuric-acid", amount = 50}
      },
      result = "processing-unit",
      result_count = 1000,
  },
  {
    type = "recipe",
    name = "logistic-robot-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"flying-robot-frame", 1000},
      {"advanced-circuit", 2000}
    },
    result = "logistic-robot",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "construction-robot-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"flying-robot-frame", 1000},
      {"electronic-circuit", 2000}
    },
    result = "construction-robot",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "accumulator-X1000",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"iron-plate", 2000},
      {"battery", 5000}
    },
    result = "accumulator",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "electric-furnace-X1000",
    ingredients = {{"steel-plate", 100}, {"advanced-circuit", 5000}, {"stone-brick", 100}},
    result = "electric-furnace",
    result_count = 10,
    energy_required = 5,
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
  },
  {
    type = "recipe",
    name = "electric-engine-unit-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    energy_required = 10,
    ingredients =
    {
      {"engine-unit", 1000},
      {type="fluid", name= "high-pressure-lubricant", amount = 15},
      {"electronic-circuit", 2000}
    },
    result = "electric-engine-unit",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "flying-robot-frame-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    energy_required = 22,
    ingredients =
    {
      {"electric-engine-unit", 1000},
      {"battery", 2000},
      {"steel-plate", 1000},
      {"electronic-circuit", 3000}
    },
    result = "flying-robot-frame",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "explosives-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = ("Chemistry-1000"),
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
        {type="item", name="sulfur", amount=1000},
        {type="item", name="coal", amount=1000},
        {type="fluid", name="water", amount=500}
      },
      result= "explosives",
      result_count = 2000,
  },
  {
    type = "recipe",
    name = "battery-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Chemistry-1000",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="high-pressure-sulfuric-acid", amount=200},
        {"iron-plate", 1000},
        {"copper-plate", 1000}
      },
      result = "battery",
      result_count = 1000,
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
    name = "low-density-structure-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
      energy_required = 25,
      ingredients =
      {
        {"steel-plate", 2000},
        {"copper-plate", 2000},
        {"plastic-bar", 5000}
      },
      result= "low-density-structure",
      result_count = 1000,
  },
  {
    type = "recipe",
    name = "rocket-fuel-X1000",
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    energy_required = 30,
    ingredients =
    {
      {"solid-fuel", 1000},
      {type="fluid", name="high-pressure-light-oil", amount=100}
    },
    result= "rocket-fuel",
    result_count = 1000,
  },
  {
    type = "recipe",
    name = "rocket-control-unit-X1000",
    energy_required = 30,
    enabled = true,
    hide_from_player_crafting = true,
    category = "Crafting-X1000",
    ingredients =
    {
      {"processing-unit", 1000},
      {"speed-module", 1000}
    },
    result= "rocket-control-unit",
    result_count = 1000,
  },











})

