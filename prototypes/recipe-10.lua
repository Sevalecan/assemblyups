function productivity_module_limitation()
return
      {
        "sulfuric-acid",
        "basic-oil-processing",
        "advanced-oil-processing",
        "coal-liquefaction",
        "heavy-oil-cracking",
        "light-oil-cracking",
        "solid-fuel-from-light-oil",
        "solid-fuel-from-heavy-oil",
        "solid-fuel-from-petroleum-gas",
        "lubricant",
        "iron-plate",
        "copper-plate",
        "steel-plate",
        "stone-brick",
        "sulfur",
        "plastic-bar",
        "empty-barrel",
        "uranium-processing",
        "copper-cable",
        "iron-stick",
        "iron-gear-wheel",
        "electronic-circuit",
        "advanced-circuit",
        "processing-unit",
        "engine-unit",
        "electric-engine-unit",
        "uranium-fuel-cell",
        "explosives",
        "battery",
        "flying-robot-frame",
        "low-density-structure",
        "rocket-fuel",
        "nuclear-fuel",
        "nuclear-fuel-reprocessing",
        "rocket-control-unit",
        "rocket-part",
        "automation-science-pack",
        "logistic-science-pack",
        --"chemical-science-pack",
        "military-science-pack",
        "production-science-pack",
        "utility-science-pack",
        "kovarex-enrichment-process"
      }
end

if mods["Krastorio2"] then
	data:extend ({
		{
            type = "recipe",
            name = "automation-science-pack-V2",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 5,
            category = "science-packs-10-crafting",
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
            name = "chemical-science-pack-V2",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 22,
            category = "science-packs-10-crafting",
            requester_paste_multiplier = 10,
            ingredients =
            {
                    {"glass", 150},
                    {type = "fluid", name = "sulfuric-acid", amount = 500},
                    {"advanced-circuit", 50},
                    {"blank-tech-card", 50}
            },
            result_count = 50,
            result = "chemical-science-pack"
        },
        {
            type = "recipe",
            name = "logistic-science-pack-V2",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 6,
            category = "science-packs-10-crafting",
            ingredients =
            {
                {"iron-gear-wheel", 50},
                {"electronic-circuit", 50},
                {"blank-tech-card", 50}
            },
            result_count = 50,
            result = "logistic-science-pack"
        },
        {
    type = "recipe",
    name = "military-science-pack-V2",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 10,
    category = "science-packs-10-crafting",
    ingredients =
    {
      
      {"electronic-components", 50},
      {"biters-research-data", 50},
      {"blank-tech-card", 50}
    },
    result_count = 50,
    result = "military-science-pack"
  },
  {
    type = "recipe",
    name = "production-science-pack-V2",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 21,
    category = "science-packs-10-crafting",
    ingredients =
    {
     {"uranium-238", 50},
     {"productivity-module", 50},
     {"fast-transport-belt", 100},
     {"blank-tech-card", 50}
    },
    result_count = 50,
    result = "production-science-pack"
  },
  {
    type = "recipe",
    name = "utility-science-pack-V2",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 21,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"low-density-structure", 50},
      {"processing-unit", 50},
      {"rocket-fuel", 50},
      {"blank-tech-card", 50}
    },
    result_count = 50,
    result = "utility-science-pack"
  },
	})
else
	data:extend ({
		{
            type = "recipe",
            name = "automation-science-pack-V2",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 5,
            category = "science-packs-10-crafting",
            requester_paste_multiplier = 10,
            ingredients =
            {
                    {"copper-plate", 10},
                    {"iron-gear-wheel", 10}
            },
            result_count = 10,
            result = "automation-science-pack"
        },
        {
            type = "recipe",
            name = "logistic-science-pack-V2",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 6,
            category = "science-packs-10-crafting",
            ingredients =
            {
                {"inserter", 10},
                {"transport-belt", 10}
            },
            result_count = 10,
            result = "logistic-science-pack"
        },
        {
            type = "recipe",
            name = "chemical-science-pack-V2",
            enabled = true,
            hide_from_player_crafting = true,
            energy_required = 22,
            category = "science-packs-10-crafting",
            ingredients =
            {
                    {"engine-unit", 20},
                    {"advanced-circuit", 30},
                    {"sulfur", 10}
            },
            result_count = 20,
            result = "chemical-science-pack"
        },
        
  {
    type = "recipe",
    name = "military-science-pack-V2",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 10,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"piercing-rounds-magazine", 10},
      {"grenade", 10},
      {"stone-wall", 20}
    },
    result_count = 20,
    result = "military-science-pack"
  },
  {
    type = "recipe",
    name = "production-science-pack-V2",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category = "science-packs-10-crafting",
    ingredients =
    {
     {"electric-furnace", 10},
     {"productivity-module", 10},
     {"rail", 300}
    },
    result_count = 30,
    result = "production-science-pack"
  },
  {
    type = "recipe",
    name = "utility-science-pack-V2",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 20,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"low-density-structure", 30},
      {"processing-unit", 20},
      {"flying-robot-frame", 10}
    },
    result_count = 30,
    result = "utility-science-pack"
  },
	})
end


data:extend({
  
  
  

  --items for science
  {
    type = "recipe",
    name = "assembling-machine-1-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients = {{"iron-plate", 90},{"iron-gear-wheel", 50},{"electronic-circuit", 30}},
    result = "assembling-machine-1",
    result_count = 10
  },
  {
    type = "recipe",
    name = "assembling-machine-2-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients = {{"steel-plate", 20},{"iron-gear-wheel", 50},{"electronic-circuit", 30},{"assembling-machine-1", 10}},
    result = "assembling-machine-2",
    result_count = 10
  },
  {
    type = "recipe",
    name = "iron-stick-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients = {{"iron-plate", 10}},
    result = "iron-stick",
    result_count = 20
  },
  {
    type = "recipe",
    name = "iron-gear-wheel-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
      ingredients = {{"iron-plate", 20}},
      result = "iron-gear-wheel",
      result_count = 10,
  },
  {
    type = "recipe",
    name = "electronic-circuit-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
      ingredients =
      {
        {"iron-plate", 10},
        {"copper-cable", 30}
      },
      result = "electronic-circuit",
      result_count = 10,
  },

  {
    type = "recipe",
    name = "inserter-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"electronic-circuit", 10},
      {"iron-gear-wheel", 10},
      {"iron-plate", 10}
    },
    result = "inserter",
    result_count = 10
  },
  {
    type = "recipe",
    name = "transport-belt-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"iron-plate", 10},
      {"iron-gear-wheel", 10}
    },
    result = "transport-belt",
    result_count = 20
  },
  {
    type = "recipe",
    name = "fast-inserter-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"electronic-circuit", 20},
      {"iron-plate", 20},
      {"inserter", 10}
    },
    result = "fast-inserter",
    result_count = 10
  },
  {
    type = "recipe",
    name = "express-transport-belt-X10",
    enabled = true,
    hide_from_player_crafting = true,
    category ="science-packs-10-crafting",
    ingredients =
    {
      
      {type="fluid", name="lubricant", amount=200},
      {"iron-gear-wheel", 100},
      {"fast-transport-belt", 10}
    },
    result = "express-transport-belt",
    result_count = 10
  },
  {
    type = "recipe",
    name = "pipe-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
      ingredients = {{"iron-plate", 10}},
      result = "pipe",
      result_count = 10,
  },
  {
    type = "recipe",
    name = "copper-cable-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients = {{"copper-plate", 10}},
    result = "copper-cable",
    result_count = 20
  },
  {
    type = "recipe",
    name = "stone-wall-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients = {{"stone-brick", 50}},
    result = "stone-wall",
    result_count = 10
  },
  {
    type = "recipe",
    name = "engine-unit-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 10},
      {"iron-gear-wheel", 10},
      {"pipe", 20}
    },
    result = "engine-unit",
    result_count = 10
  },
  {
    type = "recipe",
    name = "piercing-rounds-magazine-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    energy_required = 3,
    ingredients =
    {
      {"firearm-magazine", 10},
      {"steel-plate", 10},
      {"copper-plate", 50}
    },
    result = "piercing-rounds-magazine",
    result_count = 10
  },
  {
    type = "recipe",
    name = "grenade-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    energy_required = 8,
    ingredients =
    {
      {"iron-plate", 50},
      {"coal", 100}
    },
    result = "grenade",
    result_count = 10
  },
  {
    type = "recipe",
    name = "concrete-v2",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"stone-brick", 50},
      {"iron-ore", 10},
      {type="fluid", name="water", amount=200}
    },
    result= "concrete",
    result_count = 100
  },
  {
    type = "recipe",
    name = "hazard-concrete-v2",
    energy_required = 0.25,
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"concrete", 100}
    },
    result= "hazard-concrete",
    result_count = 100
  },
  {
    type = "recipe",
    name = "refined-concrete-v2",
    energy_required = 15,
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"concrete", 200},
      {"iron-stick", 80},
      {"steel-plate", 10},
      {type="fluid", name="water", amount=200}
    },
    result= "refined-concrete",
    result_count = 20
  },
  {
    type = "recipe",
    name = "refined-hazard-concrete-v2",
    energy_required = 0.25,
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"refined-concrete", 100}
    },
    result= "refined-hazard-concrete",
    result_count = 100
  },
  {
    type = "recipe",
    name = "landfill-v2",
    energy_required = 0.5,
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"stone", 200}
    },
    result= "landfill",
    result_count = 10
  },
  {
    type = "recipe",
    name = "fast-transport-belt-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"iron-gear-wheel", 50},
      {"transport-belt", 10}
    },
    result = "fast-transport-belt",
    result_count = 10
  },
  {
    type = "recipe",
    name = "solar-panel-v2",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"steel-plate", 50},
      {"electronic-circuit", 150},
      {"copper-plate", 50}
    },
    result = "solar-panel",
    result_count = 10
  },
  {
    type = "recipe",
    name = "rail-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"stone", 10},
      {"iron-stick", 10},
      {"steel-plate", 10}
    },
    result = "rail",
    result_count = 20
  },
  {
    type = "recipe",
    name = "advanced-circuit-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
      energy_required = 6,
      ingredients =
      {
        {"electronic-circuit", 20},
        {"plastic-bar", 20},
        {"copper-cable", 40}
      },
      result = "advanced-circuit",
      result_count = 10,
  },
  {
    type = "recipe",
    name = "processing-unit-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
      energy_required = 10,
      ingredients =
      {
        {"electronic-circuit", 200},
        {"advanced-circuit", 20},
        {type = "fluid", name = "sulfuric-acid", amount = 50}
      },
      result = "processing-unit",
      result_count = 10,
  },
  {
    type = "recipe",
    name = "logistic-robot-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"flying-robot-frame", 10},
      {"advanced-circuit", 20}
    },
    result = "logistic-robot",
    result_count = 10
  },
  {
    type = "recipe",
    name = "construction-robot-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"flying-robot-frame", 10},
      {"electronic-circuit", 20}
    },
    result = "construction-robot",
    result_count = 10
  },
  {
    type = "recipe",
    name = "accumulator-v2",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"iron-plate", 20},
      {"battery", 50}
    },
    result = "accumulator",
    result_count = 10
  },
  {
    type = "recipe",
    name = "electric-furnace-v2",
    ingredients = {{"steel-plate", 100}, {"advanced-circuit", 50}, {"stone-brick", 100}},
    result = "electric-furnace",
    result_count = 10,
    energy_required = 5,
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
  },
  {
    type = "recipe",
    name = "electric-engine-unit-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    energy_required = 10,
    ingredients =
    {
      {"engine-unit", 10},
      {type="fluid", name= "lubricant", amount = 150},
      {"electronic-circuit", 20}
    },
    result = "electric-engine-unit",
    result_count = 10
  },
  {
    type = "recipe",
    name = "flying-robot-frame-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 10},
      {"battery", 20},
      {"steel-plate", 10},
      {"electronic-circuit", 30}
    },
    result = "flying-robot-frame",
    result_count = 10
  },
  {
    type = "recipe",
    name = "explosives-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = ("chemistry-10"),
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
        {type="item", name="sulfur", amount=10},
        {type="item", name="coal", amount=10},
        {type="fluid", name="water", amount=25}
      },
      result= "explosives",
      result_count = 20,
  },
  {
    type = "recipe",
    name = "battery-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "chemistry-10",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="sulfuric-acid", amount=200},
        {"iron-plate", 10},
        {"copper-plate", 10}
      },
      result = "battery",
      result_count = 10,
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
    name = "low-density-structure-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
      energy_required = 20,
      ingredients =
      {
        {"steel-plate", 20},
        {"copper-plate", 200},
        {"plastic-bar", 50}
      },
      result= "low-density-structure",
      result_count = 10,
  },
  {
    type = "recipe",
    name = "rocket-fuel-v2",
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    energy_required = 30,
    ingredients =
    {
      {"solid-fuel", 100},
      {type="fluid", name="light-oil", amount=100}
    },
    result= "rocket-fuel",
    result_count = 10
  },
  {
    type = "recipe",
    name = "rocket-control-unit-v2",
    energy_required = 30,
    enabled = true,
    hide_from_player_crafting = true,
    category = "science-packs-10-crafting",
    ingredients =
    {
      {"processing-unit", 10},
      {"speed-module", 10}
    },
    result= "rocket-control-unit",
    result_count = 10
  },
  

  








})
if mods["Electric Furnaces"] then
    table.insert(data.raw["technology"]["advanced-material-processing"].effects,{type = "unlock-recipe",recipe = "electric-steel-furnace"})
end
--if mods ["WaterWell"] then
    --table.insert( data.raw["technology"]["steel-processing"].effects, { type = "unlock-recipe", recipe = "water-well-pump"	} )
--end