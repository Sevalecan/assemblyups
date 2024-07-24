if mods["space-exploration"] then
local data_util = require("data_util")
--local RecipeTints = require("prototypes/recipe-tints")
local recipe_amount = 10

data:extend({



  {
    type = "fluid",
    name = "beryllium-hydroxide",
    default_temperature = 50,

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
  --{
    --name = "beryllium-ore-crushedx10",
    --type = "recipe",
    --category = "pulverisingx10",
    
    --results = {
      --{name = data_util.mod_prefix .. "beryllium-ore-crushed", amount = 10} -- 2
    --},
    --energy_required = 1,
    --ingredients = {
      --{name = data_util.mod_prefix .. "beryllium-ore", amount = 20}
    --},
    --enabled = true,
    --hide_from_player_crafting = true,
    --allow_productivity = true,
    --always_show_made_in = true,
  --},
  {
    type = "recipe",
    category = "chemistry-10",
    name = "beryllium-sulfatex10",
    main_product = data_util.mod_prefix .. "beryllium-sulfate",
    results = {
      {name = data_util.mod_prefix .. "beryllium-sulfate", amount = recipe_amount}, -- 4
      --{name = "sand", probability = 0.5, amount_min = 10, amount_max = 10,},
      --{type = "fluid", name = "water", amount = 1, catalyst_amount = 1},
    },
    energy_required = 2,
    ingredients = {
      {type = "fluid", name="sulfuric-acid", amount = recipe_amount},
      {name = data_util.mod_prefix .. "beryllium-ore", amount = 4 * recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    
  },
  {
    name = "beryllium-hydroxidex10",
    type = "recipe",
    category = "chemistry-10",
    name = "beryllium-hydroxide",
    --main_product = "beryllium-hydroxide",
    results =
    {
      {type = "fluid", name = "high-pressure-beryllium-hydroxide", amount = 5},
    },
    energy_required = 15,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite-rod", amount = recipe_amount},
      {type = "fluid", name="water", amount = 25 * recipe_amount },
      {name = data_util.mod_prefix .. "beryllium-sulfate", amount = 25 * recipe_amount}
    },
    subgroup = "fluid-recipes",
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    
  },
  {
    type = "recipe",
    category = "chemistry-10",
    name = "beryllium-powderx10",
    main_product = data_util.mod_prefix .. "beryllium-powder",
    results = {
      {name = data_util.mod_prefix .. "beryllium-powder", amount = 4 * recipe_amount}, -- 2
      --{type = "fluid", name = "water", amount = 1, catalyst_amount = 1},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "beryllium-hydroxide", amount = 4 * recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    
  },

  {
    type = "recipe",
    category = "SX10",
    name = "molten-berylliumx10",
    subgroup = "beryllium",
    results = {
      {type = "fluid", name = data_util.mod_prefix .. "molten-beryllium", amount = 250 * recipe_amount}, --0.4
    },
    energy_required = 70,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "pyroflux", amount = 10 * recipe_amount}, -- 1 block) per 10 plate
      {name = data_util.mod_prefix .. "beryllium-powder", amount = 50 * recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    order = "a-d"
  },

  {
    type = "recipe",
    category = "castingx10",
    name = "beryllium-ingotx10",
    results = {
      {name = data_util.mod_prefix .. "beryllium-ingot", amount = recipe_amount}, -- 100
    },
    energy_required = 25,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "molten-beryllium", amount = 250 * recipe_amount},
      {name = "sand", amount = 2 * recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    order = "a-e"
  },
  {
    type = "recipe",
    name = "beryllium-ingotx10",
    category = "SX10",
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    results = {
      {name = data_util.mod_prefix .. "beryllium-ingot", amount = recipe_amount}, -- 20
    },
    energy_required = 25,
    ingredients = {
      {name = data_util.mod_prefix .. "beryllium-powder", amount = 10 * recipe_amount},
      {name = "coal", amount = 10 * recipe_amount},
      {name = "sand", amount = 10 * recipe_amount},
    },
    always_show_made_in = true,
  },

  {
    type = "recipe",
    name = "beryllium-platex10",
    category = "science-packs-10-crafting",
    results = {
      {name = data_util.mod_prefix .. "beryllium-plate", amount = 10 * recipe_amount}, -- 5
    },
    energy_required = 5,
    ingredients = {
      {name = data_util.mod_prefix .. "beryllium-ingot", amount = recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },


  {
    type = "recipe",
    category = "pulverisingx10",
    name = "cryonite-powderx10",
    results = {
      {name = data_util.mod_prefix .. "cryonite-powder", amount = recipe_amount}
    },
    energy_required = 0.5,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite", amount = 1 * recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  --{
    --type = "recipe",
    --category = "chemistry-10",
    --name = "cryonite-washedx10",
    --main_product = data_util.mod_prefix .. "cryonite-washed",
    --results = {
      --{name = data_util.mod_prefix .. "cryonite-washed", amount = 20},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
      --{type = "fluid", name="water", amount = 4, catalyst_amount = 4},
    --},
    --energy_required = 2.5,
    --ingredients = {
      --{type = "fluid", name="water", amount = 5 * recipe_amount, catalyst_amount = 5 * recipe_amount},
      --{name = data_util.mod_prefix .. "cryonite-powder", amount = 4 * recipe_amount}
    --},
    --enabled = true,
    --hide_from_player_crafting = true,
    --allow_productivity = true,
    --always_show_made_in = true,
    --.cryonite_tint,
  --},
  {
    type = "recipe",
    category = "chemistry-10",
    name = "cryonite-crystalx10",
    main_product = data_util.mod_prefix .. "cryonite-crystal",
    results = {
      {name = data_util.mod_prefix .. "cryonite-crystal", amount = recipe_amount}, -- 4
      --{type = "fluid", name="water", amount = 4, catalyst_amount = 4* recipe_amount},
    },
    energy_required = 3,
    ingredients = {
      {type = "fluid", name="water", amount = 7 * recipe_amount, catalyst_amount = 7 * recipe_amount},
      {name = data_util.mod_prefix .. "cryonite-powder", amount = 4* recipe_amount}
    },
    enabled = true,
    always_show_made_in = true,
    --crafting_machine_tint = RecipeTints.cryonite_tint,
    order = "a-b"
  },
  {
    type = "recipe",
    category = "SX10",
    name = "cryonite-rodx10",
    results = {
      {name = data_util.mod_prefix .. "cryonite-rod", amount = recipe_amount},
    },
    energy_required = 7.5,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite-crystal", amount = 2 * recipe_amount},
      {name = data_util.mod_prefix .. "cryonite-powder", amount = 2 * recipe_amount},
      {type = "fluid", name = "heavy-oil", amount = recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-10",
    name = "cryonite-ion-exchange-beadsx10",
    results = {
      {name = data_util.mod_prefix .. "cryonite-ion-exchange-beads", amount = 10 * recipe_amount},
    },
    energy_required = 10,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite-rod", amount = 10},
      {name = "plastic-bar", amount = 10},
      {type = "fluid", name = "sulfuric-acid", amount = 50},
      {type = "fluid", name = "steam", amount = 50},
    },
    --.cryonite_tint,
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  
  {
    type = "recipe",
    category = "chemistry-10",
    name = "cryonite-slushx10",
    results = {
      {type = "fluid", name = data_util.mod_prefix .. "cryonite-slush", amount = 100},
    },
    energy_required = 5,
    ingredients = {
      {name = data_util.mod_prefix .. "cryonite-rod", amount = 10},
      {type = "fluid", name = "sulfuric-acid", amount = 10},
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
    category = "chemistry-10",
    name = "cryonite-lubricantx10",
    results = {
      {type = "fluid", name = "lubricant", amount = 20 * recipe_amount},
    },
    energy_required = 5,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "cryonite-slush", amount = recipe_amount},
      {type = "fluid", name = "heavy-oil", amount = recipe_amount},
    },
    icons = data_util.sub_icons(data.raw.fluid["lubricant"].icon),
                                --data.raw.fluid[data_util.mod_prefix .. "cryonite-slush"].icon),
    subgroup = "space-fluid-recipes",
    crafting_machine_tint = data.raw["recipe"]["lubricant"].crafting_machine_tint,
    enabled = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    order = "l-b"
  },
  {
    type = "recipe",
    category = "chemistry-10",
    name = "cryonite-to-water-icex10",
    results = {
      {name = data_util.mod_prefix .. "water-ice", amount = 10},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "cryonite-slush", amount = 10},
      {type = "fluid", name = "water", amount = 250},
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
    category = "pulverisingx10",
    name = "holmium-ore-crushedx10",
    results = {
      {name = data_util.mod_prefix .. "holmium-ore-crushed", amount = recipe_amount}
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "holmium-ore", amount = 20}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  --{
    --type = "recipe",
    --category = "chemistry-10",
    --name = "holmium-ore-washedx10",
    --main_product = data_util.mod_prefix .. "holmium-ore-washed",
    --results = {
      --{name = data_util.mod_prefix .. "holmium-ore-washed", amount = 20},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
    --},
    --energy_required = 1,
    --ingredients = {
      --{type = "fluid", name="water", amount = 20, catalyst_amount = 20},
      --{name = data_util.mod_prefix .. "holmium-ore-crushed", amount = 20}
    --},
    --enabled = true,
    --hide_from_player_crafting = true,
    --allow_productivity = true,
    --always_show_made_in = true,
    --.holmium_tint,
  --},

  {
    type = "recipe",
    category = "chemistry",
    name = "holmium-chloridex10",
    main_product = data_util.mod_prefix .. "holmium-chloride",
    results = {
      {name = data_util.mod_prefix .. "holmium-chloride", probability = 0.25, amount_min = recipe_amount, amount_max = recipe_amount}, -- 4
      --{name = data_util.mod_prefix .. "cryonite-ion-exchange-beads", probability = 0.5, amount_min = 1, amount_max = 1, catalyst_amount = 1},
      {name = data_util.mod_prefix .. "holmium-ore-crushed", probability = 0.5, amount_min = recipe_amount, amount_max = recipe_amount, catalyst_amount = recipe_amount},
      --{name = "sand", probability = 0.1, amount_min = 1, amount_max = 1, catalyst_amount = 1},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name="water", amount = 2*recipe_amount, catalyst_amount = 2*recipe_amount},
      {name = data_util.mod_prefix .. "cryonite-ion-exchange-beads", amount = recipe_amount, catalyst_amount = recipe_amount,},
      {name = data_util.mod_prefix .. "holmium-ore-crushed", amount = recipe_amount, catalyst_amount = recipe_amount,}
    },
    enabled = true,
    always_show_made_in = true,
    --crafting_machine_tint = RecipeTints.holmium_tint,
    order = "a-b"
  },
  {
    type = "recipe",
    name = "holmium-powderx10",
    category = "centrifuging",
    main_product = data_util.mod_prefix .. "holmium-powder",
    results = {
      {name = data_util.mod_prefix .. "holmium-powder", probability = 0.5, amount_min = 10, amount_max = 10},
      --{name = data_util.mod_prefix .. "vulcanite-ion-exchange-beads", probability = 0.5, amount_min = 1, amount_max = 1, catalyst_amount = 1},
      --{name = data_util.mod_prefix .. "holmium-ore-washed", probability = 0.5, amount_min = 10, amount_max = 10, catalyst_amount = 10},
      --{name = "sand", probability = 0.25, amount_min = 1, amount_max = 1, catalyst_amount = 1},
    },
    energy_required = 1,
    ingredients = {
        {name = "copper-cable", amount = 1},
        {name = data_util.mod_prefix .. "holmium-chloride", amount = 5}
      --{type = "fluid", name="water", amount = 20, catalyst_amount = 20},
      --{name = data_util.mod_prefix .. "vulcanite-ion-exchange-beads", amount = 10, catalyst_amount = 10,},
      --{name = data_util.mod_prefix .. "holmium-ore-washed", amount = 10, catalyst_amount = 10,}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.holmium_tint,
  },
  {
    type = "recipe",
    category = "SX10",
    name = "molten-holmiumx10",
    subgroup = "holmium",
    results = {
      {type = "fluid", name = data_util.mod_prefix .. "molten-holmium", amount = 250*recipe_amount}, -- 0.4
    },
    energy_required = 70,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "pyroflux", amount = recipe_amount},
      {name = data_util.mod_prefix .. "holmium-powder", amount = 50 * recipe_amount},
    },
    enabled = true,
    always_show_made_in = true,
    order = "a-d"
  },
  {
    type = "recipe",
    category = "casting",
    name = "holmium-ingotx10",
    results = {
      {name = data_util.mod_prefix .. "holmium-ingot", amount = recipe_amount}, -- 100
    },
    energy_required = 25,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "molten-holmium", amount = 250 * recipe_amount},
      {name = "sand", amount = 2 * recipe_amount},
    },
    enabled = true,
    always_show_made_in = true,
    order = "a-e"
  },
  {
    type = "recipe",
    category = "SX10",
    name = "holmium-ingotx10",
    results = {
      {name = data_util.mod_prefix .. "holmium-ingot", amount = recipe_amount},
    },
    energy_required = 25,
    ingredients = {
      {name = data_util.mod_prefix .. "holmium-powder", amount = 100 * recipe_amount},
      {name = "coal", amount = recipe_amount},
      {name = "sand", amount = recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "science-packs-10-crafting",
    name = "holmium-platex10",
    results = {
      {name = data_util.mod_prefix .. "holmium-plate", amount = 10 * recipe_amount},
    },
    energy_required = 2.5,
    ingredients = {
      {name = data_util.mod_prefix .. "holmium-ingot", amount = recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },

  {
    type = "recipe",
    category = "pulverisingx10",
    name = "iridium-ore-crushedx10", -- 2
    results = {
      {name = data_util.mod_prefix .. "iridium-ore-crushed", amount = recipe_amount}
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "iridium-ore", amount = recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  --{
    --type = "recipe",
    --category = "chemistry-10",
    --name = "iridium-ore-washedx10", -- 2
    --main_product = data_util.mod_prefix .. "iridium-ore-washed",
    --results = {
      --{name = data_util.mod_prefix .. "iridium-ore-washed", amount = 20},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
    --},
    --energy_required = 1,
    --ingredients = {
      --{type = "fluid", name="water", amount = 20, catalyst_amount = 20},
      --{name = data_util.mod_prefix .. "iridium-ore-crushed", amount = 20}
    --},
    --enabled = true,
    --hide_from_player_crafting = true,
    --allow_productivity = true,
    --always_show_made_in = true,
    --.iridium_tint,
  --},
  {
    type = "recipe",
    category = "chemistry-10",
    name = "iridium-powderx10", -- 4
    main_product = data_util.mod_prefix .. "iridium-powder",
    results = {
      {name = data_util.mod_prefix .. "iridium-powder", probability = 0.5, amount_min = 10, amount_max = 10},
      --{name = data_util.mod_prefix .. "cryonite-ion-exchange-beads", probability = 0.5, amount_min = 1, amount_max = 1, catalyst_amount = 1},
      {name = data_util.mod_prefix .. "iridium-ore-crushed", probability = 0.5, amount_min = 10, amount_max = 10, catalyst_amount = 10},
      --{name = "sand", probability = 0.25, amount_min = 1, amount_max = 1, catalyst_amount = 1},
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name="water", amount = 20, catalyst_amount = 20},
      {name = data_util.mod_prefix .. "vulcanite-ion-exchange-beads", amount = recipe_amount, catalyst_amount = recipe_amount,},
      {name = data_util.mod_prefix .. "iridium-ore-crushed", amount = recipe_amount, catalyst_amount = recipe_amount,}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.iridium_tint,
  },
  {
    type = "recipe",
    category = "centrifuging",
    name = "iridium-blastcakex10",
    results = {
      {name = data_util.mod_prefix .. "iridium-blastcake", amount = 4 * recipe_amount}, -- 10
    },
    energy_required = 20,
    ingredients = {
      {name = data_util.mod_prefix .. "iridium-powder", amount = 20 * recipe_amount},
      {name = data_util.mod_prefix .. "vulcanite-enriched", amount = recipe_amount},
    },
    --crafting_machine_tint = RecipeTints.iridium_centri_tint,
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    order = "a-c"
  },
  {
    type = "recipe",
    category = "SX10",
    name = "iridium-ingotx10", -- 40
    main_product = data_util.mod_prefix .. "iridium-ingot",
    results = {
      {name = data_util.mod_prefix .. "iridium-ingot", amount = 10},
      {type = "fluid", name="steam", amount = 5 * recipe_amount, catalyst_amount = 5 * recipe_amount},
    },
    energy_required = 40,
    ingredients = 
    {
      {name = data_util.mod_prefix .. "iridium-powder", amount = 10 * recipe_amount},
      {type = "fluid", name = data_util.mod_prefix .. "pyroflux", amount = 5 * recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "science-packs-10-crafting",
    name = "iridium-platex10", -- 10
    results = {
      {name = data_util.mod_prefix .. "iridium-plate", amount = 10 * recipe_amount},
    },
    energy_required = 8,
    ingredients = {
      {name = data_util.mod_prefix .. "iridium-ingot", amount = recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "pulverisingx10",
    name = "naquium-ore-crushedx10",
    main_product = data_util.mod_prefix .. "naquium-ore-crushed",
    results = 
    {
      {name = data_util.mod_prefix .. "naquium-ore-crushed", amount = 2 * recipe_amount},
      {name = data_util.mod_prefix .. "iridium-plate", probability = 0.8, amount_min=recipe_amount, amount_max=recipe_amount, catalyst_amount = recipe_amount},
    },
    energy_required = 2,
    ingredients = {
      {name = data_util.mod_prefix .. "naquium-ore", amount = 7 * recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  --{
    --type = "recipe",
    --category = "chemistry-10",
    --name = "naquium-ore-washedx10",
    --main_product = data_util.mod_prefix .. "naquium-ore-washed",
    --results = {
      --{name = data_util.mod_prefix .. "naquium-ore-washed", amount = 20},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
    --},
    --energy_required = 2,
    --ingredients = {
     --{type = "fluid", name="water", amount = 40},
      --{name = data_util.mod_prefix .. "naquium-ore-crushed", amount = 20}
    --},
    --enabled = true,
    --hide_from_player_crafting = true,
    --allow_productivity = true,
    --always_show_made_in = true,
    --.naq_tint,
  --},
  {
    type = "recipe",
    category = "chemistry",
    name = "naquium-refinedx10",
    main_product = data_util.mod_prefix .. "naquium-refined",
    results = {
      {name = data_util.mod_prefix .. "vulcanite-ion-exchange-beads", probability = 0.5, amount_min = recipe_amount, amount_max = recipe_amount, catalyst_amount = recipe_amount},
      {name = data_util.mod_prefix .. "beryllium-powder", probability = 0.2, amount_min=recipe_amount, amount_max=recipe_amount, catalyst_amount = recipe_amount},
      {name = data_util.mod_prefix .. "naquium-refined", amount_min = 5* recipe_amount, amount_max = 7*recipe_amount}, --6 -- value 4
      {name = data_util.mod_prefix .. "naquium-powder", amount_min = 3*recipe_amount, amount_max = 5* recipe_amount}, --4 -- value 4
      --{type = "fluid", name = "water", amount = 1},
    },
    energy_required = 10,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "cryonite-slush", amount = recipe_amount},
      {type = "fluid", name = data_util.mod_prefix .. "beryllium-hydroxide", amount = 2*recipe_amount},
      {name = data_util.mod_prefix .. "cryonite-ion-exchange-beads", amount = recipe_amount, catalyst_amount = recipe_amount},
      {name = data_util.mod_prefix .. "naquium-ore-crushed", amount = 10 * recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = true,
    --crafting_machine_tint = RecipeTints.naq_tint,
    order = "a-b"
  },
  {
    type = "recipe",
    category = "chemistry-10",
    name = "naquium-powderx10",
    main_product = data_util.mod_prefix .. "naquium-powder",
    results = {
      {name = data_util.mod_prefix .. "cryonite-ion-exchange-beads", amount_min = 0, amount_max = 2 * recipe_amount, catalyst_amount = 2*recipe_amount},
      {name = data_util.mod_prefix .. "holmium-powder", probability = 0.2, amount_min = recipe_amount, amount_max = recipe_amount, catalyst_amount = 1*recipe_amount},
      {name = data_util.mod_prefix .. "naquium-refined", amount_min = 4 * recipe_amount, amount_max = 8 * recipe_amount}, -- 6 -- value 4
      {name = data_util.mod_prefix .. "naquium-powder", amount_min = 10 * recipe_amount, amount_max = 16 * recipe_amount}, -- 14 -- value 4
      {type = "fluid", name = "sulfuric-acid", amount = recipe_amount},
    },
    energy_required = 20,
    ingredients = {
      {type = "fluid", name = data_util.mod_prefix .. "vitalic-acid", amount = recipe_amount},
      {name = data_util.mod_prefix .. "holmium-cable", amount = recipe_amount},
      {name = data_util.mod_prefix .. "vulcanite-ion-exchange-beads", amount = 2 * recipe_amount, catalyst_amount = 2 * recipe_amount},
      {name = data_util.mod_prefix .. "naquium-ore-crushed", amount = 20 * recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    --.naq_tint,
  },
  {
    type = "recipe",
    category = "centrifuging",
    name = "naquium-crystalx10",
    main_product = data_util.mod_prefix .. "naquium-crystal",
    results = {
      {name = data_util.mod_prefix .. "naquium-crystal", probability = 0.618, amount_min= recipe_amount, amount_max= recipe_amount}, -- value 60 ish
      {name = data_util.mod_prefix .. "naquium-powder", amount_min=1, amount_max= 6 * recipe_amount, catalyst_amount = 6 * recipe_amount},
      {name = data_util.mod_prefix .. "naquium-refined", amount_min=1, amount_max= 4 * recipe_amount, catalyst_amount = 4 * recipe_amount},
      {name = data_util.mod_prefix .. "vitalic-reagent", probability = 1-0.618, amount_min= recipe_amount, amount_max= recipe_amount, catalyst_amount = recipe_amount},
    },
    energy_required = 16,
    ingredients = {
      {name = data_util.mod_prefix .. "vitalic-reagent", amount = recipe_amount, catalyst_amount = recipe_amount},
      {name = data_util.mod_prefix .. "naquium-powder", amount = 10 * recipe_amount, catalyst_amount = 10 * recipe_amount},
      {name = data_util.mod_prefix .. "naquium-refined", amount = 8 * recipe_amount, catalyst_amount = 8 * recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = true,
    --crafting_machine_tint = RecipeTints.naq_centri_tint,
    order = "a-d"
  },
  {
    type = "recipe",
    category = "SX10",
    name = "naquium-ingot",
    results = {
      {name = data_util.mod_prefix .. "naquium-ingot", amount = recipe_amount},
    },
    energy_required = 125,
    ingredients = {
      {name = data_util.mod_prefix .. "naquium-crystal", amount = 2 * recipe_amount},
      {name = data_util.mod_prefix .. "naquium-refined", amount = 8 * recipe_amount},
      {name = data_util.mod_prefix .. "naquium-powder", amount = 8 * recipe_amount},
      {type = "fluid", name = data_util.mod_prefix .. "pyroflux", amount = 25 * recipe_amount},
      {type = "fluid", name = data_util.mod_prefix .. "methane-gas", amount = 25 * recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "science-packs-10-crafting",
    name = "naquium-platex10",
    main_product = data_util.mod_prefix .. "naquium-plate",
    results = {
      {name = data_util.mod_prefix .. "naquium-plate", amount = 10 * recipe_amount},
      {name = data_util.mod_prefix .. "heavy-bearing", amount_min= recipe_amount, amount_max= recipe_amount, probability=0.95, catalyst_amount = recipe_amount}
    }, 
    energy_required = 4,
    ingredients = {
      {name = data_util.mod_prefix .. "naquium-ingot", amount = recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },

  {
    type = "recipe",
    category = "pulverisingx10",
    name = "vitamelange-nuggetx10",
    results = {
      {name = data_util.mod_prefix .. "vitamelange-nugget", amount_min= 30 * recipe_amount, amount_max= 50 * recipe_amount}, -- 0.5
    },
    energy_required = 20,
    ingredients = {
      {name = data_util.mod_prefix .. "vitamelange", amount = 20 * recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry",
    name = "vitamelange-bloomx10",
    results = {
      {name = data_util.mod_prefix .. "vitamelange-bloom", amount = 30 * recipe_amount}, -- 1
    },
    energy_required = 30,
    ingredients = {
      {name = data_util.mod_prefix .. "vitamelange-nugget", amount = 60 * recipe_amount},
      {type = "fluid", name = "water", amount = 500},
      {name = "sand", amount = 30 * recipe_amount},
    },
    --crafting_machine_tint = RecipeTints.vita_tint,
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    allow_decomposition = false,
    order = "a-b"
  },
  --{
    --type = "recipe",
    --category = "SX10",
    --name = "vitamelange-roastx10",
    --results = {
      --{name = data_util.mod_prefix .. "vitamelange-roast", amount = 500} -- 1
    --},
    --energy_required = 100,
    --ingredients = {
      --{name=data_util.mod_prefix .. "vulcanite-block", amount = 10},
      --{name = data_util.mod_prefix .. "vitamelange-nugget", amount = 1000}
    --},
    --enabled = true,
    --hide_from_player_crafting = true,
    --allow_productivity = true,
    --always_show_made_in = true,
  --},
  {
    type = "recipe",
    category = "SX10",
    name = "vitamelange-spice10", -- 2
    main_product = data_util.mod_prefix .. "vitamelange-spice",
    results = {
      {type = "fluid", name = data_util.mod_prefix .. "methane-gas", amount = 5 * recipe_amount},
      {name = data_util.mod_prefix .. "vitamelange-spice", amount = 40 * recipe_amount}, -- 5
      {name = data_util.mod_prefix .. "vitamelange-extract", amount_min= recipe_amount, amount_max= recipe_amount, probability=0.1}
    },
    energy_required = 90,
    ingredients = {
      {name = data_util.mod_prefix .. "vitamelange-bloom", amount = 200 * recipe_amount},
      {name = data_util.mod_prefix .. "vulcanite-block", amount = recipe_amount},
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  {
    type = "recipe",
    category = "chemistry-10",
    name = "vitamelange-extractx10", -- 4
    main_product = data_util.mod_prefix .. "vitamelange-extract",
    results = 
    {
      {name = data_util.mod_prefix .. "vitamelange-spice", amount = 20 * recipe_amount, catalyst_amount = 20},
      {name = data_util.mod_prefix .. "vitamelange-extract", amount_min=4 * recipe_amount, amount_max=8 * recipe_amount, catalyst_amount = 1}, -- 5, value 10
      {type = "fluid", name = "light-oil", amount = recipe_amount},
    },
    energy_required = 15,
    ingredients = 
    {
      {name = data_util.mod_prefix .. "vitamelange-spice", amount = 30 * recipe_amount, catalyst_amount = 30},
      {name = data_util.mod_prefix .. "vitamelange-extract", amount = recipe_amount}
    },
    --.vita_tint,
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },


  {
    type = "recipe",
    category = "pulverisingx10",
    name = "vulcanite-crushedx10",
    main_product = data_util.mod_prefix .. "vulcanite-crushed",
    results = {
      {name = data_util.mod_prefix .. "vulcanite-crushed", amount = 3 * recipe_amount}, -- 2
      {name = data_util.mod_prefix .. "vulcanite-enriched", amount_min= recipe_amount, amount_max= recipe_amount, probability=0.1},
    },
    energy_required = 0.5,
    ingredients = {
      {name = data_util.mod_prefix .. "vulcanite", amount = 5.9 * recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },
  --{
    --type = "recipe",
    --category = "chemistry-10",
    --name = "vulcanite-washedx10",
    --main_product = data_util.mod_prefix .. "vulcanite-washed",
    --results = {
      --{name = data_util.mod_prefix .. "vulcanite-washed", amount = 20},
      --{name = "stone", amount_min = 10, amount_max = 10, probability = 0.25},
      --{type = "fluid", name="steam", amount = 20, temperature = 165},
    --},
    --energy_required = 1,
    --ingredients = {
      --{type = "fluid", name="water", amount = 40},
      --{name = data_util.mod_prefix .. "vulcanite-crushed", amount = 20}
    --},
    --enabled = true,
    --hide_from_player_crafting = true,
    --allow_productivity = true,
    --always_show_made_in = true,
    --.vulcanite_tint,
  --},
  {
    type = "recipe",
    category = "centrifuging",
    name = "vulcanite-enrichedx10",
    main_product = data_util.mod_prefix .. "vulcanite-enriched",
    results = {
      --{name = "sand", amount_min = 1, amount_max = 1, probability = 0.2, catalyst_amount = 1},
      {name = data_util.mod_prefix .. "vulcanite-enriched", amount = 4 * recipe_amount, catalyst_amount = 1}, -- 4
      {name = data_util.mod_prefix .. "vulcanite-crushed", amount = 4 * recipe_amount, catalyst_amount = 4 * recipe_amount}
    },
    energy_required = 10,
    ingredients = {
      {name = data_util.mod_prefix .. "vulcanite-crushed", amount = 10 * recipe_amount, catalyst_amount = 10 * recipe_amount},
      {name = data_util.mod_prefix .. "vulcanite-enriched", amount = recipe_amount, catalyst_amount = recipe_amount},
      {name = "sulfur", amount = recipe_amount},
    },
    enabled = true,
    always_show_made_in = true,
    --crafting_machine_tint = RecipeTints.vulcanite_centri_tint,
    order = "a-b"
  },


  {
    type = "recipe",
    category = "SX10",
    name = "vulcanite-blockx10",
    main_product = data_util.mod_prefix .. "vulcanite-block",
    results = {
      {name = data_util.mod_prefix .. "vulcanite-block", amount = recipe_amount},
      {type = "fluid", name="steam", amount = 4 * recipe_amount, temperature = 165, catalyst_amount = 4 *recipe_amount},
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "vulcanite-crushed", amount = recipe_amount},
      {name = data_util.mod_prefix .. "vulcanite-enriched", amount = 2 * recipe_amount},
      {type = "fluid", name="water", amount = 5 * recipe_amount, catalyst_amount = 5 * recipe_amount},
      {type = "fluid", name="petroleum-gas", amount = recipe_amount}
    },
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },

  {
    type = "recipe",
    category = "chemistry-10",
    name = "pyrofluxx10",
    subgroup = "space-fluid-recipes",
    main_product = data_util.mod_prefix .. "pyroflux",
    results = {
      {type = "fluid", name = data_util.mod_prefix .. "pyroflux", amount = 10 * recipe_amount},
    },
    energy_required = 1,
    ingredients = {
      {name = data_util.mod_prefix .. "vulcanite-block", amount = recipe_amount},
      {name = "sand", amount = recipe_amount}
    },
    --crafting_machine_tint = RecipeTints.pyroflux_tint,
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
    order = "a-d"
  },

  {
    type = "recipe",
    category = "chemistry-10",
    name = "pyroflux-steam10",
    subgroup = "space-fluid-recipes",
    icons = data_util.sub_icons(data.raw.fluid["steam"].icon),
                                --data.raw.fluid[data_util.mod_prefix .. "pyroflux"].icon),
    main_product = "steam",
    results = {
      {type = "fluid", name="steam", amount = 500, temperature = 165},
      {name = "stone", amount_min = 1, amount_max = 1, probability = 0.1},
      {name = "iron-ore", amount_min = 1, amount_max = 1, probability = 0.01},
      {name = "copper-ore", amount_min = 1, amount_max = 1, probability = 0.01}
    },
    energy_required = 1,
    ingredients = {
      {type = "fluid", name = "water", amount = 500},
      {type = "fluid", name = data_util.mod_prefix .. "pyroflux", amount = 5},
    },
    enabled = false,
    always_show_made_in = true,
    order = "a-e"
  },


  {
    type = "recipe",
    category = "chemistry-10",
    name = "vulcanite-ion-exchange-beadsx10",
    results = {
      {name = data_util.mod_prefix .. "vulcanite-ion-exchange-beads", amount = 10 * recipe_amount},
    },
    energy_required = 10,
    ingredients = {
      {name = data_util.mod_prefix .. "vulcanite-block", amount = recipe_amount},
      {name = "plastic-bar", amount = recipe_amount},
      {type = "fluid", name = "sulfuric-acid", amount = 5 * recipe_amount},
      {type = "fluid", name = "steam", amount = 5 * recipe_amount},
    },
    --.vulcanite_tint,
    enabled = true,
    hide_from_player_crafting = true,
    allow_productivity = true,
    always_show_made_in = true,
  },


})
end