if mods["space-exploration"] then
local data_util = require("data_util")
--local RecipeTints = require("prototypes/recipe-tints")

data:extend({



  {
    type = "fluid",
    name = "beryllium-hydroxide",
    default_temperature = 50,
    --hide_from_player_crafting = true,
    heat_capacity = "0.1KJ",
    base_color = {r=0.3, g=0.1, b=0.3},
    flow_color = {r=0.8, g=0.8, b=0.8},
    max_temperature = 100,
    icon = "__assemblyUPS__/graphics/icons/beryllium-hydroxide.png",
    icon_size = 64, icon_mipmaps = 4,
    order = "a[fluid]-e[petroleum-gas]"
  },
  {
    type = "fluid",
    name = "cryonite-slush",
    default_temperature = 0,
    heat_capacity = "0.01KJ",
    max_temperature = 25,
    base_color = {r=185, g=164, b=255},
    flow_color = {r=185, g=164, b=255},
    icon = "__space-exploration-graphics__/graphics/icons/fluid/cryonite-slush.png",
    icon_size = 64,
    icon_mipmaps = 1,
    order = "z",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = true,
    subgroup = "space-fluids",
  },
  -- pulverising
  {
    type = "recipe",
    category = "pulverisingx100",
    hide_from_player_crafting = true,
    name = "beryllium-ore-crushedx100",
    results = {
      {name = data_util.mod_prefix .. "beryllium-ore-crushed", amount = 100} -- 2
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "beryllium-ore", amount = 200}
    },
    enabled = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "beryllium-sulfatex100",
    main_product = data_util.mod_prefix .. "beryllium-sulfate",
    results = {
      {name = data_util.mod_prefix .. "beryllium-sulfate", amount = 100}, -- 4
      --{name = "sand", probability = 0.5, amount_min = 10, amount_max = 10,},
      --{type = "fluid", name = "water", amount = 1, catalyst_amount = 1},
    },
    energy_required = 2,
    ingredients = {
      {type = "fluid", name="sulfuric-acid", amount = 200},
      {name = data_util.mod_prefix .. "beryllium-ore-crushed", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    
  },
  {
    name = "beryllium-hydroxidex100",
    type = "recipe",
    category = "chemistry-100",
    name = "beryllium-hydroxide",
    --main_product = "beryllium-hydroxide",
    results =
    {
      {type = "fluid", name = "high-pressure-beryllium-hydroxide", amount = 200},
    },
    energy_required = 30,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite-rod", amount = 100},
      {type = "fluid", name="water", amount = 1500, catalyst_amount = 1500},
      {name = data_util.mod_prefix .. "beryllium-sulfate", amount = 500}
    },
    subgroup = "fluid-recipes",
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "beryllium-powderx100",
    --main_product = data_util.mod_prefix .. "beryllium-powder",
    results = {
      {name = data_util.mod_prefix .. "beryllium-powder", amount = 100}, -- 2
      --{type = "fluid", name = "water", amount = 1, catalyst_amount = 1},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "beryllium-hydroxide", amount = 200},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    subgroup = "fluid-recipes",
    always_show_made_in = true,
    
  },
  {
    type = "recipe",
    name = "beryllium-ingotx100",
    category = "Smelting-X100",
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    results = {
      {name = data_util.mod_prefix .. "beryllium-ingot", amount = 100}, -- 20
    },
    energy_required = 40,
    ingredients = {
      {name = data_util.mod_prefix .. "beryllium-powder", amount = 1000},
    },
    always_show_made_in = true,
  },

  {
    type = "recipe",
    name = "beryllium-platex100",
    category = "X100",
    results = {
      {name = data_util.mod_prefix .. "beryllium-plate", amount = 400}, -- 5
    },
    energy_required = 8,
    ingredients = {
      {name = data_util.mod_prefix .. "beryllium-ingot", amount = 100}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },


  {
    type = "recipe",
    category = "pulverisingx100",
    name = "cryonite-crushedx100",
    results = {
      {name = data_util.mod_prefix .. "cryonite-crushed", amount = 100}
    },
    energy_required = 0.5,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "cryonite-washedx100",
    main_product = data_util.mod_prefix .. "cryonite-washed",
    results = {
      {name = data_util.mod_prefix .. "cryonite-washed", amount = 200},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
      --{type = "fluid", name="water", amount = 4, catalyst_amount = 4},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name="water", amount = 250, catalyst_amount = 60},
      {name = data_util.mod_prefix .. "cryonite-crushed", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.cryonite_tint,
  },
  {
    type = "recipe",
    category = "Smelting-X100",
    name = "cryonite-rodx100",
    results = {
      {name = data_util.mod_prefix .. "cryonite-rod", amount = 100},
    },
    energy_required = 5,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite-washed", amount = 100}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "cryonite-ion-exchange-beadsx100",
    results = {
      {name = data_util.mod_prefix .. "cryonite-ion-exchange-beads", amount = 1000},
    },
    energy_required = 10,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite-rod", amount = 100},
      {name = "plastic-bar", amount = 100},
      {type = "fluid", name = "high-pressure-sulfuric-acid", amount = 5},
      {type = "fluid", name = "high-pressure-steam", amount = 5},
    },
    --.cryonite_tint,
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  
  {
    type = "recipe",
    category = "chemistry-100",
    name = "cryonite-slushx100",
    results = {
      {type = "fluid", name = data_util.mod_prefix .. "cryonite-slush", amount = 1000},
    },
    energy_required = 5,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite-rod", amount = 100},
      {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    --.cryonite_tint,
    subgroup = "fluid-recipes",
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --allow_as_intermediate = false
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "cryonite-to-water-icex100",
    results = {
      {name = data_util.mod_prefix .. "water-ice", amount = 100},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "cryonite-slush", amount = 100},
      {type = "fluid", name = "high-pressure-water", amount = 5},
    },
    --.cryonite_tint,
    subgroup = "fluid-recipes",
    enabled = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false
  },

  {
    type = "recipe",
    category = "pulverisingx100",
    name = "holmium-ore-crushedx100",
    results = {
      {name = data_util.mod_prefix .. "holmium-ore-crushed", amount = 100}
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "holmium-ore", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "holmium-ore-washedx100",
    main_product = data_util.mod_prefix .. "holmium-ore-washed",
    results = {
      {name = data_util.mod_prefix .. "holmium-ore-washed", amount = 200},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name="water", amount = 250, catalyst_amount = 200},
      {name = data_util.mod_prefix .. "holmium-ore-crushed", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_productivity = true,
    --.holmium_tint,
  },

  {
    type = "recipe",
    name = "holmium-powderx100",
    category = "chemistry-100",
    main_product = data_util.mod_prefix .. "holmium-powder",
    results = {
      {name = data_util.mod_prefix .. "holmium-powder", probability = 0.5, amount_min = 100, amount_max = 100},
      --{name = data_util.mod_prefix .. "vulcanite-ion-exchange-beads", probability = 0.5, amount_min = 1, amount_max = 1, catalyst_amount = 1},
      {name = data_util.mod_prefix .. "holmium-ore-washed", probability = 0.5, amount_min = 100, amount_max = 100, catalyst_amount = 100},
      --{name = "sand", probability = 0.25, amount_min = 1, amount_max = 1, catalyst_amount = 1},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name="water", amount = 250, catalyst_amount = 200},
      {name = data_util.mod_prefix .. "vulcanite-ion-exchange-beads", amount = 100, catalyst_amount = 100,},
      {name = data_util.mod_prefix .. "holmium-ore-washed", amount = 100, catalyst_amount = 100,}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.holmium_tint,
  },
  {
    type = "recipe",
    category = "Smelting-X100",
    name = "holmium-ingotx100",
    results = {
      {name = data_util.mod_prefix .. "holmium-ingot", amount = 100},
    },
    energy_required = 40,
    ingredients = {
      {name = data_util.mod_prefix .. "holmium-powder", amount = 1000},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "X100",
    name = "holmium-platex100",
    results = {
      {name = data_util.mod_prefix .. "holmium-plate", amount = 400},
    },
    energy_required = 8,
    ingredients = {
      {name = data_util.mod_prefix .. "holmium-ingot", amount = 100}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },

  {
    type = "recipe",
    category = "pulverisingx100",
    name = "iridium-ore-crushedx100", -- 2
    results = {
      {name = data_util.mod_prefix .. "iridium-ore-crushed", amount = 100}
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "iridium-ore", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "iridium-ore-washedx100", -- 2
    main_product = data_util.mod_prefix .. "iridium-ore-washed",
    results = {
      {name = data_util.mod_prefix .. "iridium-ore-washed", amount = 200},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name="water", amount = 250, catalyst_amount = 200},
      {name = data_util.mod_prefix .. "iridium-ore-crushed", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.iridium_tint,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "iridium-powderx100", -- 4
    main_product = data_util.mod_prefix .. "iridium-powder",
    results = {
      {name = data_util.mod_prefix .. "iridium-powder", probability = 0.5, amount_min = 100, amount_max = 100},
      --{name = data_util.mod_prefix .. "cryonite-ion-exchange-beads", probability = 0.5, amount_min = 1, amount_max = 1, catalyst_amount = 1},
      {name = data_util.mod_prefix .. "iridium-ore-washed", probability = 0.5, amount_min = 100, amount_max = 100, catalyst_amount = 100},
      --{name = "sand", probability = 0.25, amount_min = 1, amount_max = 1, catalyst_amount = 1},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name="water", amount = 250, catalyst_amount = 200},
      {name = data_util.mod_prefix .. "cryonite-ion-exchange-beads", amount = 100, catalyst_amount = 100,},
      {name = data_util.mod_prefix .. "iridium-ore-washed", amount = 100, catalyst_amount = 100,}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.iridium_tint,
  },
  {
    type = "recipe",
    category = "Smelting-X100",
    name = "iridium-ingotx100", -- 40
    results = {
      {name = data_util.mod_prefix .. "iridium-ingot", amount = 100},
    },
    energy_required = 40,
    ingredients = {
      {name = data_util.mod_prefix .. "iridium-powder", amount = 1000},
        {name=data_util.mod_prefix .. "vulcanite-block", amount = 100},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "X100",
    name = "iridium-platex100", -- 10
    results = {
      {name = data_util.mod_prefix .. "iridium-plate", amount = 400},
    },
    energy_required = 8,
    ingredients = {
      {name = data_util.mod_prefix .. "iridium-ingot", amount = 100}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "pulverisingx100",
    name = "naquium-ore-crushedx100",
    results = {
      {name = data_util.mod_prefix .. "naquium-ore-crushed", amount = 100}
    },
    energy_required = 2,
    ingredients = {
      {name = data_util.mod_prefix .. "naquium-ore", amount = 400}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "naquium-ore-washedx100",
    main_product = data_util.mod_prefix .. "naquium-ore-washed",
    results = {
      {name = data_util.mod_prefix .. "naquium-ore-washed", amount = 200},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
    },
    energy_required = 2,
    ingredients = {
      {type = "fluid", name="water", amount = 250},
      {name = data_util.mod_prefix .. "naquium-ore-crushed", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.naq_tint,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "naquium-powderx100",
    main_product = data_util.mod_prefix .. "naquium-powder",
    results = {
      {name = data_util.mod_prefix .. "naquium-powder", amount = 100},
      {name = "sand", probability = 0.5, amount_min = 100, amount_max = 100,},
      {type="fluid", name = "water", amount = 200},
    },
    energy_required = 20,
    ingredients = {
      {name=data_util.mod_prefix .. "vitalic-acid", amount = 400},
      {name = data_util.mod_prefix .. "naquium-ore-washed", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.naq_tint,
  },
  {
    type = "recipe",
    category = "smelting",
    name = data_util.mod_prefix .. "naquium-ingot",
    results = {
      {name = data_util.mod_prefix .. "naquium-ingot", amount = 10},
    },
    energy_required = 60,
    ingredients = {
      {name = data_util.mod_prefix .. "naquium-powder", amount = 100},
        {name=data_util.mod_prefix .. "vulcanite-block", amount = 10},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "X100",
    name = "naquium-platex100",
    results = {
      {name = data_util.mod_prefix .. "naquium-plate", amount = 400},
    },
    energy_required = 10,
    ingredients = {
      {name = data_util.mod_prefix .. "naquium-ingot", amount = 100}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },

  {
    type = "recipe",
    category = "pulverisingx100",
    name = "vitamelange-nuggetx100",
    results = {
      {name = data_util.mod_prefix .. "vitamelange-nugget", amount = 200}, -- 0.5
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "vitamelange", amount = 100}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "Smelting-X100",
    name = "vitamelange-roastx100",
    results = {
      {name = data_util.mod_prefix .. "vitamelange-roast", amount = 5000} -- 1
    },
    energy_required = 100,
    ingredients = {
      {name=data_util.mod_prefix .. "vulcanite-block", amount = 100},
      {name = data_util.mod_prefix .. "vitamelange-nugget", amount = 10000}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "X100",
    name = "vitamelange-spice10", -- 2
    results = {
      {name = data_util.mod_prefix .. "vitamelange-spice", amount_min=100, amount_max=100, probability=0.5},
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "vitamelange-roast", amount = 100}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "vitamelange-extractx100", -- 4
    results = {
      {name = data_util.mod_prefix .. "vitamelange-extract", amount_min=100, amount_max=100, probability=0.5},
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "vitamelange-spice", amount = 100}
    },
    --.vita_tint,
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },


  {
    type = "recipe",
    category = "pulverisingx100",
    name = "vulcanite-crushedx100",
    results = {
      {name = data_util.mod_prefix .. "vulcanite-crushed", amount = 100}
    },
    energy_required = 0.5,
    ingredients = {
      {name = data_util.mod_prefix .. "vulcanite", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "vulcanite-washedx100",
    main_product = data_util.mod_prefix .. "vulcanite-washed",
    results = {
      {name = data_util.mod_prefix .. "vulcanite-washed", amount = 200},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
      {type = "fluid", name="steam", amount = 200, temperature = 165},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name="water", amount = 250},
      {name = data_util.mod_prefix .. "vulcanite-crushed", amount = 200}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.vulcanite_tint,
  },
  {
    type = "recipe",
    category = "X100",
    name = "vulcanite-blockx100",
    results = {
      {name = data_util.mod_prefix .. "vulcanite-block", amount = 100},
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "vulcanite-washed", amount = 100}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-100",
    name = "vulcanite-ion-exchange-beadsx100",
    results = {
      {name = data_util.mod_prefix .. "vulcanite-ion-exchange-beads", amount = 1000},
    },
    energy_required = 10,
    ingredients = {
      {name = data_util.mod_prefix .. "vulcanite-block", amount = 100},
      {name = "plastic-bar", amount = 100},
      {type = "fluid", name = "high-pressure-sulfuric-acid", amount = 5},
      {type = "fluid", name = "high-pressure-steam", amount = 5},
    },
    --.vulcanite_tint,
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },


})
end