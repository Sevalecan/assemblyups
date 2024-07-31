data:extend({
  
  {
    type = "recipe",
    name = "automation-science-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 5,
    category = "productivity2point0",
    requester_paste_multiplier = 10,
    ingredients =
    {
      {"copper-plate", 100},
      {"iron-gear-wheel", 100},
      {"productivity-module-3", 2},
    },
    icon = "__base__/graphics/icons/automation-science-pack.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "k[uranium-processing]", -- k ordering so it shows up after explosives which is j ordering
    results =
    {
     {
        name = "automation-science-pack",
        probability = 0.30,
        amount = 200,
	 },
     {
        name = "automation-science-pack",
        probability = 0.95,
        amount = 100,
	 },
     {
        name = "automation-science-pack",
        probability = 0.0575,
        amount = 500,
	 },
	},
  },
  {
    type = "recipe",
    name = "logistic-science-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    icon = "__base__/graphics/icons/logistic-science-pack.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 6,
    category = "productivity2point0",
    subgroup = "raw-material",
    ingredients =
    {
      {"inserter", 100},
      {"transport-belt", 100},
      {"productivity-module-3", 2},
    },
    results = 
    {
        {
            name = "logistic-science-pack",
            probability = 0.30,
            amount = 200,
		},
        {
            name = "logistic-science-pack",
            probability = 0.0575,
            amount = 500,
		},
	 
     
        {
            name = "logistic-science-pack",
            probability = 0.95,
            amount = 100,
        },
	 },
  },
  {
    type = "recipe",
    name = "chemical-science-productivity",
    enabled = true,
    icon = "__base__/graphics/icons/chemical-science-pack.png",
    icon_size = 64, icon_mipmaps = 4,
    hide_from_player_crafting = true,
    energy_required = 24,
    category = "productivity2point0",
    subgroup = "raw-material",
    ingredients =
    {
      {"engine-unit", 200},
      {"advanced-circuit", 300},
      {"sulfur", 200},
      {"productivity-module-3", 5},
    },
    results = 
    {
       {
        name = "chemical-science-pack",
        probability = 0.20,
        amount = 250,
       },
	 
     
       {
        name = "chemical-science-pack",
        probability = 0.95,
        amount = 200,
       },
       {
            name = "chemical-science-pack",
            probability = 0.045,
            amount = 550,
       },
       {
            name = "space-science-pack",
            probability = 0.000005,
            amount = 2500,
		},
	},
  },
  {
    type = "recipe",
    name = "military-science-productivity",
    enabled = true,
    icon = "__base__/graphics/icons/military-science-pack.png",
    icon_size = 64, icon_mipmaps = 4,
    hide_from_player_crafting = true,
    energy_required = 10,
    category = "productivity2point0",
    subgroup = "raw-material",
    ingredients =
    {
      {"piercing-rounds-magazine", 100},
      {"grenade", 100},
      {"stone-wall", 200},
      {"productivity-module-3", 4},
    },
    results = 
    {
      {
        name = "military-science-pack",
        probability = 0.25,
        amount = 250,
      },

	 
     
      {
        name = "military-science-pack",
        probability = 0.95,
        amount = 200,
      },
      {
        name = "military-science-pack",
        probability = 0.05,
        amount = 750,
      },
	},
  },
  {
    type = "recipe",
    name = "production-science-productivity",
    enabled = true,
    icon = "__base__/graphics/icons/production-science-pack.png",
    icon_size = 64, icon_mipmaps = 4,
    hide_from_player_crafting = true,
    energy_required = 21,
    category = "productivity2point0",
    subgroup = "raw-material",
    ingredients =
    {
        {"electric-furnace", 100},
        {"productivity-module", 100},
        {"rail", 3000},
        {"pmodule", 10},
    },
    results = 
    {
        {
            name = "production-science-pack",
            probability = 0.17,
            amount = 300,
		},
	 
     
        {
            name = "production-science-pack",
            probability = 0.85,
            amount = 300,
        },

        {
            name = "production-science-pack",
            probability = 0.03,
            amount = 500,
        },

        {
            name = "space-science-pack",
            probability = 0.00005,
            amount = 2500,
		},
	},

  },
  {
    type = "recipe",
    name = "utility-science-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    icon = "__base__/graphics/icons/utility-science-pack.png",
    icon_size = 64, icon_mipmaps = 4,
    hide_from_player_crafting = true,
    energy_required = 21,
    category = "productivity2point0",
    subgroup = "raw-material",
    ingredients =
    {
      {"low-density-structure", 300},
      {"processing-unit", 200},
      {"flying-robot-frame", 100},
      {"pmodule", 10},
    },
    results = 
    {
        {
            name = "utility-science-pack",
            probability = 0.17,
            amount = 300,
		},
	 
     
        {
            name = "utility-science-pack",
            probability = 0.85,
            amount = 300,
        },
        {
            name = "utility-science-pack",
            probability = 0.05,
            amount = 500,
       },
        {
            name = "space-science-pack",
            probability = 0.00005,
            amount = 2500,
		},
	},
  },

  --items for science
  {
    type = "recipe",
    name = "iron-stick-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients = {{"iron-plate", 200},{"pmodule", 2},},
    results =
            {
              {
                type = "item", name = "iron-stick", amount_min = 225, amount_max = 400
               },
        	},
  },
  --{
    --type = "recipe",
    --name = "iron-gear-wheel-productivity",
    --enabled = true,
    --hide_from_player_crafting = true,
    --category = "productivity2point0",
    --normal =
    --{
      --ingredients = {{"iron-plate", 200},{"pmodule", 2},},
      --results =
            --{
              --{
                --type = "item", name = "iron-gear-wheel", amount_min = 225, amount_max = 400
               --},
        	--},
    --},
  --},
  {
    type = "recipe",
    name = "electronic-circuit-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients =
    {
        {"iron-plate", 100},
        {"copper-cable", 300},
        {"pmodule", 2},
    },
    results =
            {
              {
                type = "item", name = "electronic-circuit", amount_min = 225, amount_max = 400
               },
        	},
  },
  {
    type = "recipe",
    name = "inserter-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients =
    {
      {"electronic-circuit", 100},
      {"iron-gear-wheel", 100},
      {"iron-plate", 100},
      {"pmodule", 2},
    },
    results =
            {
              {
                type = "item", name = "inserter", amount_min = 125, amount_max = 300
               },
        	},
  },
  {
    type = "recipe",
    name = "transport-belt-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients =
    {
      {"iron-plate", 100},
      {"iron-gear-wheel", 100},
      {"pmodule", 2},
    },
    results =
            {
              {
                type = "item", name = "transport-belt", amount_min = 225, amount_max = 400
               },
        	},
  },
  {
    type = "recipe",
    name = "fast-inserter-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients =
    {
      {"electronic-circuit", 200},
      {"iron-plate", 200},
      {"inserter", 100},
      {"pmodule", 2},
    },
    results =
            {
              {
                type = "item", name = "fast-inserter", amount_min = 225, amount_max = 400
               },
        	},
  },
  {
    type = "recipe",
    name = "pipe-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
      ingredients = {{"iron-plate", 100},{"pmodule", 2},},
      results =
            {
              {
                type = "item", name = "pipe", amount_min = 225, amount_max = 300
               },
        	},
  },
  {
    type = "recipe",
    name = "copper-cable-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients = {{"copper-plate", 100},{"pmodule", 2},},
    results =
            {
              {
                type = "item", name = "copper-cable", amount_min = 225, amount_max = 400
               },
        	},
  },
  {
    type = "recipe",
    name = "stone-wall-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients = {{"stone-brick", 500},{"pmodule", 2},},
    results =
            {
              {
                type = "item", name = "stone-wall", amount_min = 125, amount_max = 300
               },
        	},
  },
  {
    type = "recipe",
    name = "engine-unit-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 10},
      {"iron-gear-wheel", 10},
      {"pipe", 20},
      {"pmodule", 3},
    },
    result = "engine-unit",
    result_count = 10
  },
  {
    type = "recipe",
    name = "piercing-rounds-magazine-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    energy_required = 3,
    ingredients =
    {
      {"firearm-magazine", 100},
      {"steel-plate", 100},
      {"copper-plate", 500},
      {"pmodule", 2},
    },
    results =
            {
              {
                type = "item", name = "piercing-rounds-magazine", amount_min = 125, amount_max = 300
               },
        	},
  },
  {
    type = "recipe",
    name = "grenade-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    energy_required = 8,
    ingredients =
    {
      {"iron-plate", 500},
      {"coal", 1000},
      {"pmodule", 2},
    },
    results =
            {
              {
                type = "item", name = "grenade", amount_min = 125, amount_max = 300
               },
        	},
  },
  {
    type = "recipe",
    name = "solar-panel-productivity",
    energy_required = 17,
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients =
    {
      {"steel-plate", 500},
      {"electronic-circuit", 1500},
      {"copper-plate", 500},
      {"pmodule", 10},
    },
    results =
            {
              {
                type = "item", name = "solar-panel", amount_min = 125, amount_max = 200
               },
        	},
  },
  {
    type = "recipe",
    name = "rail-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    energy_required = 2,
    ingredients =
    {
      {"stone", 100},
      {"iron-stick", 100},
      {"steel-plate", 100},
      {"pmodule", 2},
    },
    results =
            {
              {
                type = "item", name = "rail", amount_min = 225, amount_max = 400
               },
        	},
  },
  {
    type = "recipe",
    name = "advanced-circuit-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
      energy_required = 10,
      ingredients =
      {
        {"electronic-circuit", 200},
        {"plastic-bar", 200},
        {"copper-cable", 400},
        {"pmodule", 6},
      },
      results =
            {
              {
                type = "item", name = "advanced-circuit", amount_min = 125, amount_max = 225
               },
        	},
  },
  {
    type = "recipe",
    name = "processing-unit-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
      energy_required = 10,
      ingredients =
      {
        {"electronic-circuit", 2000},
        {"advanced-circuit", 200},
        {type = "fluid", name = "sulfuric-acid", amount = 500},
        {"pmodule", 15},
      },
      results =
            {
              {
                type = "item", name = "processing-unit", amount_min = 125, amount_max = 225
               },
        	},
  },
  {
    type = "recipe",
    name = "construction-robot-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients =
    {
      {"flying-robot-frame", 10},
      {"electronic-circuit", 20},
      {"pmodule", 20},
    },
    result = "construction-robot",
    result_count = 10
  },
  {
    type = "recipe",
    name = "accumulator-productivity",
    energy_required = 10,
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients =
    {
      {"iron-plate", 200},
      {"battery", 500},
      {"pmodule", 10},
    },
    results =
            {
              {
                type = "item", name = "accumulator", amount_min = 125, amount_max = 225
               },
        	},
  },
  {
    type = "recipe",
    name = "electric-furnace-productivity",
    ingredients = {{"steel-plate", 1000}, {"advanced-circuit", 500}, {"pmodule", 8},{"stone-brick", 1000}},
    energy_required = 7,
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    results =
            {
              {
                type = "item", name = "electric-furnace", amount_min = 125, amount_max = 225
               },
        	},
  },
  {
    type = "recipe",
    name = "electric-engine-unit-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    energy_required = 15,
    ingredients =
    {
      {"engine-unit", 10},
      {type="fluid", name= "lubricant", amount = 150},
      {"electronic-circuit", 20},
      {"pmodule", 10},
    },
    results =
            {
              {
                type = "item", name = "electric-engine-unit", amount_min = 125, amount_max = 225
               },
        	},
  },
  {
    type = "recipe",
    name = "flying-robot-frame-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    energy_required = 35,
    ingredients =
    {
      {"electric-engine-unit", 100},
      {"battery", 200},
      {"steel-plate", 100},
      {"electronic-circuit", 300},
      {"pmodule", 12},
    },
    results =
            {
              {
                type = "item", name = "flying-robot-frame", amount_min = 125, amount_max = 225
               },
        	},
  },
  {
    type = "recipe",
    name = "battery-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "chemistry-P100",
      energy_required = 7,
      ingredients =
      {
        {type="fluid", name="sulfuric-acid", amount=2000},
        {"iron-plate", 100},
        {"copper-plate", 100},
        {"pmodule", 3},
      },
      results =
            {
              {
                type = "item", name = "battery", amount_min = 125, amount_max = 225
               },
        	},
    crafting_machine_tint =
    {
      primary = {r = 0.965, g = 0.482, b = 0.338, a = 1.000}, -- #f67a56ff
      secondary = {r = 0.831, g = 0.560, b = 0.222, a = 1.000}, -- #d38e38ff
      tertiary = {r = 0.728, g = 0.818, b = 0.443, a = 1.000}, -- #b9d070ff
      quaternary = {r = 0.939, g = 0.763, b = 0.191, a = 1.000}, -- #efc230ff
    },
  },
  {
    type = "recipe",
    name = "low-density-structure-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
      energy_required = 35,
      ingredients =
      {
        {"steel-plate", 200},
        {"copper-plate", 2000},
        {"plastic-bar", 500},
        {"pmodule", 12},
      },
      results =
            {
              {
                type = "item", name = "low-density-structure", amount_min = 125, amount_max = 225
               },
        	},
  },
  {
    type = "recipe",
    name = "rocket-fuel-productivity",
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    energy_required = 30,
    ingredients =
    {
      {"solid-fuel", 1000},
      {type="fluid", name="light-oil", amount=1000},
      {"pmodule", 15},
    },
    results =
            {
              {
                type = "item", name = "rocket-fuel", amount_min = 125, amount_max = 225
               },
        	},
  },
  {
    type = "recipe",
    name = "rocket-control-unit",
    energy_required = 30,
    enabled = true,
    hide_from_player_crafting = true,
    category = "productivity2point0",
    ingredients =
    {
      {"processing-unit", 100},
      {"speed-module", 100},
      {"pmodule", 15},
    },
    results =
            {
              {
                type = "item", name = "rocket-control-unit", amount_min = 125, amount_max = 225
               },
        	},
  },










})

