if mods["Krastorio2"] then
	data:extend ({
		{
            type = "recipe",
            name = "automation-science-pack-X100",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 5,
            category = "X100",
            requester_paste_multiplier = 10,
            ingredients =
            {
                    {"automation-core", 10},
                    {"blank-tech-card", 50}
            },
            result_count = 50,
            result = "automation-science-pack"
        },
        {
            type = "recipe",
            name = "chemical-science-pack-X100",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 20,
            category = "X100",
            requester_paste_multiplier = 10,
            ingredients =
            {
                    {"glass", 1500},
                    {type = "fluid", name = "high-pressure-sulfuric-acid", amount = 50},
                    {"advanced-circuit", 500},
                    {"blank-tech-card", 500}
            },
            result_count = 500,
            result = "chemical-science-pack"
        },
        {
            type = "recipe",
            name = "logistic-science-pack-X100",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 6,
            category = "X100",
            ingredients =
            {
                {"iron-gear-wheel", 500},
                {"electronic-circuit", 500},
                {"blank-tech-card", 500}
            },
            result_count = 500,
            result = "logistic-science-pack"
        },
        {
    type = "recipe",
    name = "military-science-pack-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 10,
    category = "X100",
    ingredients =
    {
      
      {"electronic-components", 500},
      {"biters-research-data", 500},
      {"blank-tech-card", 500}
    },
    result_count = 500,
    result = "military-science-pack"
  },
  {
    type = "recipe",
    name = "production-science-pack-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category = "X100",
    ingredients =
    {
     {"uranium-238", 500},
     {"productivity-module", 500},
     {"fast-transport-belt", 1000},
     {"blank-tech-card", 500}
    },
    result_count = 500,
    result = "production-science-pack"
  },
  {
    type = "recipe",
    name = "utility-science-pack-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category = "X100",
    ingredients =
    {
      {"low-density-structure", 500},
      {"processing-unit", 500},
      {"rocket-fuel", 500},
      {"blank-tech-card", 500}
    },
    result_count = 500,
    result = "utility-science-pack"
  },
	})
else
    data:extend({
        {
    type = "recipe",
    name = "automation-science-pack-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 5,
    category = "X100",
    requester_paste_multiplier = 10,
    ingredients =
    {
      {"copper-plate", 100},
      {"iron-gear-wheel", 100}
    },
    result_count = 100,
    result = "automation-science-pack"
  },
  {
    type = "recipe",
    name = "logistic-science-pack-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 6,
    category ="X100",
    ingredients =
    {
      {"inserter", 100},
      {"transport-belt", 100}
    },
    result_count = 100,
    result = "logistic-science-pack"
  },
  {
    type = "recipe",
    name = "chemical-science-pack-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category ="X100",
    ingredients =
    {
      {"engine-unit", 200},
      {"advanced-circuit", 300},
      {"sulfur", 200}
    },
    result_count = 200,
    result = "chemical-science-pack"
  },
  {
    type = "recipe",
    name = "military-science-pack-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 10,
    category ="X100",
    ingredients =
    {
      {"piercing-rounds-magazine", 100},
      {"grenade", 100},
      {"stone-wall", 200}
    },
    result_count = 200,
    result = "military-science-pack"
  },
  {
    type = "recipe",
    name = "production-science-pack-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 21,
    category ="X100",
    ingredients =
    {
     {"electric-furnace", 100},
     {"productivity-module", 100},
     {"rail", 3000}
    },
    result_count = 300,
    result = "production-science-pack"
  },
  {
    type = "recipe",
    name = "utility-science-pack-X100",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 21,
    category ="X100",
    ingredients =
    {
      {"low-density-structure", 300},
      {"processing-unit", 200},
      {"flying-robot-frame", 100}
    },
    result_count = 300,
    result = "utility-science-pack"
  },
    
})
end
data:extend({
  
  
  

  --items for science
  {
    type = "recipe",
    name = "assembling-machine-1-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category = "X100",
    ingredients = {{"iron-plate", 900},{"iron-gear-wheel", 500},{"electronic-circuit", 300}},
    result = "assembling-machine-1",
    result_count = 100
  },
  {
    type = "recipe",
    name = "assembling-machine-2-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category = "X100",
    ingredients = {{"steel-plate", 200},{"iron-gear-wheel", 500},{"electronic-circuit", 300},{"assembling-machine-1", 100}},
    result = "assembling-machine-2",
    result_count = 100
  },
  {
    type = "recipe",
    name = "iron-stick-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients = {{"iron-plate", 100}},
    result = "iron-stick",
    result_count = 200
  },
  {
    type = "recipe",
    name = "iron-gear-wheel-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category = "X100",
    ingredients = {{"iron-plate", 200}},
    result = "iron-gear-wheel",
    result_count = 100
  },
  {
    type = "recipe",
    name = "electronic-circuit-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
        {"iron-plate", 100},
        {"copper-cable", 300}
    },
    result = "electronic-circuit",
    result_count = 100
  },
  {
    type = "recipe",
    name = "inserter-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"electronic-circuit", 100},
      {"iron-gear-wheel", 100},
      {"iron-plate", 100}
    },
    result = "inserter",
    result_count = 100
  },
  {
    type = "recipe",
    name = "transport-belt-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"iron-plate", 100},
      {"iron-gear-wheel", 100}
    },
    result = "transport-belt",
    result_count = 200
  },
  {
    type = "recipe",
    name = "fast-inserter-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"electronic-circuit", 200},
      {"iron-plate", 200},
      {"inserter", 100}
    },
    result = "fast-inserter",
    result_count = 100
  },
  {
    type = "recipe",
    name = "pipe-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients = {{"iron-plate", 100}},
    result = "pipe",
    result_count = 100
  },
  {
    type = "recipe",
    name = "copper-cable-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients = {{"copper-plate", 100}},
    result = "copper-cable",
    result_count = 200
  },
  {
    type = "recipe",
    name = "stone-wall-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients = {{"stone-brick", 500}},
    result = "stone-wall",
    result_count = 100
  },
  {
    type = "recipe",
    name = "engine-unit-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 100},
      {"iron-gear-wheel", 100},
      {"pipe", 200}
    },
    result = "engine-unit",
    result_count = 100
  },
  {
    type = "recipe",
    name = "piercing-rounds-magazine-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    energy_required = 3,
    ingredients =
    {
      {"firearm-magazine", 100},
      {"steel-plate", 100},
      {"copper-plate", 500},
    },
    result = "piercing-rounds-magazine",
    result_count = 100
  },
  {
    type = "recipe",
    name = "grenade-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    energy_required = 8,
    ingredients =
    {
      {"iron-plate", 500},
      {"coal", 1000}
    },
    result = "grenade",
    result_count = 100
  },
  {
    type = "recipe",
    name = "concrete-X100",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"stone-brick", 500},
      {"iron-ore", 100},
      {type="fluid", name="water", amount=500}
    },
    result= "concrete",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "hazard-concrete-X100",
    energy_required = 0.25,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"concrete", 1000}
    },
    result= "hazard-concrete",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "refined-concrete-X100",
    energy_required = 15,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"concrete", 2000},
      {"iron-stick", 800},
      {"steel-plate", 100},
      {type="fluid", name="water", amount=500}
    },
    result= "refined-concrete",
    result_count = 200
  },
  {
    type = "recipe",
    name = "refined-hazard-concrete-X100",
    energy_required = 0.25,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"refined-concrete", 1000}
    },
    result= "refined-hazard-concrete",
    result_count = 1000
  },
  {
    type = "recipe",
    name = "landfill-X100",
    energy_required = 0.5,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"stone", 2000}
    },
    result= "landfill",
    result_count = 100
  },
  {
    type = "recipe",
    name = "fast-transport-belt-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"iron-gear-wheel", 500},
      {"transport-belt", 100}
    },
    result = "fast-transport-belt",
    result_count = 100
  },
  {
    type = "recipe",
    name = "express-transport-belt-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      
      {type="fluid", name="high-pressure-lubricant", amount=20},
      {"iron-gear-wheel", 750},
      {"fast-transport-belt", 100}
    },
    result = "express-transport-belt",
    result_count = 100
  },
  {
    type = "recipe",
    name = "solar-panel-X100",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"steel-plate", 500},
      {"electronic-circuit", 1500},
      {"copper-plate", 500}
    },
    result = "solar-panel",
    result_count = 100
  },
  {
    type = "recipe",
    name = "rail-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"stone", 100},
      {"iron-stick", 100},
      {"steel-plate", 100}
    },
    result = "rail",
    result_count = 200
  },
  {
    type = "recipe",
    name = "advanced-circuit-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    energy_required = 6,
    ingredients =
    {
        {"electronic-circuit", 200},
        {"plastic-bar", 200},
        {"copper-cable", 400}
    },
    result = "advanced-circuit",
    result_count = 100,
  },
  {
    type = "recipe",
    name = "processing-unit-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    energy_required = 10,
    ingredients =
    {
        {"electronic-circuit", 2000},
        {"advanced-circuit", 200},
        {type = "fluid", name = "sulfuric-acid", amount = 500}
    },
    result = "processing-unit",
    result_count = 100,
  },
  {
    type = "recipe",
    name = "logistic-robotv2",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"flying-robot-frame", 100},
      {"advanced-circuit", 200}
    },
    result = "logistic-robot",
    result_count = 100
  },
  {
    type = "recipe",
    name = "construction-robot-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"flying-robot-frame", 100},
      {"electronic-circuit", 200}
    },
    result = "construction-robot",
    result_count = 100
  },
  {
    type = "recipe",
    name = "accumulator-X100",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"iron-plate", 200},
      {"battery", 500}
    },
    result = "accumulator",
    result_count = 100
  },
  {
    type = "recipe",
    name = "electric-furnace-X100",
    ingredients = {{"steel-plate", 1000}, {"advanced-circuit", 500}, {"stone-brick", 1000}},
    result = "electric-furnace",
    result_count = 100,
    energy_required = 5,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
  },
  {
    type = "recipe",
    name = "electric-engine-unit-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    energy_required = 10,
    ingredients =
    {
      {"engine-unit", 100},
      {type="fluid", name= "lubricant", amount = 1500},
      {"electronic-circuit", 200}
    },
    result = "electric-engine-unit",
    result_count = 100
  },
  {
    type = "recipe",
    name = "flying-robot-frame-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    energy_required = 19,
    ingredients =
    {
      {"electric-engine-unit", 100},
      {"battery", 200},
      {"steel-plate", 100},
      {"electronic-circuit", 300}
    },
    result = "flying-robot-frame",
    result_count = 100
  },
  {
    type = "recipe",
    name = "explosives-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category = ("chemistry-100"),
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
        {type="item", name="sulfur", amount=100},
        {type="item", name="coal", amount=100},
        {type="fluid", name="water", amount=250},
    },
    result= "explosives",
    result_count = 200,
  },
  {
    type = "recipe",
    name = "battery-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category = "chemistry-100",
    energy_required = 4,
    ingredients =
    {
        {type="fluid", name="sulfuric-acid", amount=2000},
        {"iron-plate", 100},
        {"copper-plate", 100}
    },
    result = "battery",
    result_count = 100,
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
    name = "low-density-structure-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    energy_required = 20,
    ingredients =
    {
        {"steel-plate", 200},
        {"copper-plate", 2000},
        {"plastic-bar", 500}
    },
    result= "low-density-structure",
    result_count = 100,
  },
  {
    type = "recipe",
    name = "rocket-fuel-X100",
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    energy_required = 30,
    ingredients =
    {
      {"solid-fuel", 1000},
      {type="fluid", name="light-oil", amount=1000}
    },
    result= "rocket-fuel",
    result_count = 100
  },
  {
    type = "recipe",
    name = "rocket-control-unit-X100",
    energy_required = 30,
    enabled = true,
    hide_from_player_crafting = true,
    category ="X100",
    ingredients =
    {
      {"processing-unit", 100},
      {"speed-module", 100}
    },
    result= "rocket-control-unit",
    result_count = 100
  },











})

