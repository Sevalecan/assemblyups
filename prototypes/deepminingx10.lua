if mods["DeepMineALT"] then
data:extend({





  {
    type = "recipe",
    name = "wood-rod-partv2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"wood", 20}
    },
    result = "wood-rod-part",
    requester_paste_multiplier = 2,
    result_count = 30,
    energy_required = 3
  },
  {
    type = "recipe",
    name = "wood-mining-shaft-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"wood-rod-part", 20}
    },
    result = "wood-mining-shaft-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 5
  },
  {
    type = "recipe",
    name = "iron-rod-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"iron-stick", 10},
	  {"iron-plate", 10}
    },
    result = "iron-rod-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 3
  },

  -- deep mining recipies for the Mk2 miner parts.
  {
    type = "recipe",
    name = "reinforced-wood-mining-shaft-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"wood-rod-part", 40},
      {"wood-mining-shaft-part", 10}
    },
    result = "reinforced-wood-mining-shaft-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 15
  },
  {
    type = "recipe",
    name = "reinforced-iron-rod-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
	  {"iron-plate", 20},
      {"iron-rod-part", 30}
	},
    result = "reinforced-iron-rod-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 10
  },
  {
    type = "recipe",
    name = "crude-mining-filter-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"electronic-circuit", 40},
	  {"steel-plate", 20}
    },
    result = "crude-mining-filter-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 10
  },
  {
    type = "recipe",
    name = "iron-mining-shaft-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"reinforced-iron-rod-part", 120},
	  {"crude-mining-filter-part", 10}
	},
    result = "iron-mining-shaft-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 25
  },
  {
    type = "recipe",
    name = "steel-rod-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"steel-plate", 20}
    },
    result = "steel-rod-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 15
  },
  {
    type = "recipe",
    name = "reinforced-iron-mining-shaft-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"iron-rod-part", 120},
      {"iron-mining-shaft-part", 10}
    },
    result = "reinforced-iron-mining-shaft-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 25
  },
  {
    type = "recipe",
    name = "calibrated-mining-filter-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"advanced-circuit", 20},
      {"crude-mining-filter-part", 10}
    },
    result = "calibrated-mining-filter-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 25
  },
  {
    type = "recipe",
    name = "steel-mining-shaft-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"steel-rod-part", 120},
	  {"calibrated-mining-filter-part", 10},
      {"reinforced-iron-mining-shaft-part", 10}
    },
    result = "steel-mining-shaft-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 50
  },
  {
    type = "recipe",
    name = "reinforced-steel-rod-part2",
    category = "science-packs-10-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"steel-rod-part", 30}
    },
    result = "reinforced-steel-rod-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 25
  },
  {
    type = "recipe",
    name = "reinforced-steel-mining-shaft-partv2",
    category = "advanced-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"reinforced-steel-rod-part", 40},
      {"steel-mining-shaft-part", 10},
      {"overclocked-mining-filter-part", 10}
    },
    result = "reinforced-steel-mining-shaft-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 50
  },
  {
    type = "recipe",
    name = "overclocked-mining-filter-partv2",
    category = "advanced-crafting",
    enabled = true,
    hide_from_player_crafting = true,
    ingredients =
    {
      {"speed-module", 10},
      {"effectivity-module", 10},
      {"calibrated-mining-filter-part", 10}
    },
    result = "overclocked-mining-filter-part",
    result_count = 10,
    requester_paste_multiplier = 2,
    energy_required = 25
  },












	{
        type = "item",
        name = "deep-miner-mk4-X10",
        icon = "__DeepMineALT__/graphics/icons/deep-miner-mk4-icon.png",
        icon_size = 128,
        subgroup = "machine_c",
        order = "c",
        place_result = "deep-miner-mk4-X10",
        stack_size = 10 
	},
    {
        type = "recipe",
        name = "deep-miner-mk4-X10",
        category = "advanced-crafting",
	    hide_from_player_crafting = false,
        enabled = true,
        ingredients =
        {
            {"deep-miner-mk4", 10},
            {"nuclear-reactor", 10},
	        {"uranium-fuel-cell", 50},
	    },
        result = "deep-miner-mk4-X10",
        result_amount_min = 1,
        requester_paste_multiplier = 2,
        energy_required = 50 
	},
    {
        type = "assembling-machine",
        name = "deep-miner-mk4-X10",
        fast_replaceable_group = "deep-mine",
        icon = "__DeepMineALT__/graphics/icons/deep-miner-mk4-icon.png",
        icon_size = 128,
        se_allow_in_space = true,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.8, mining_time = 4, result = "deep-miner-mk4-X10"},
        max_health = 2000,
        resource_categories = {"basic-solid"},
	    monitor_visualization_tint = {r=78, g=173, b=255},
        resource_searching_radius = 1.99,
        vector_to_place_result = {0, -1.85},
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        resistances =
        {
            {
                type = "fire",
                percent = 90
            }
        },
        collision_box = {{-2.35, -2.35}, {2.35, 2.35}},
        selection_box = {{-2.40, -2.40}, {2.40, 2.40}},
        animation =
        {
            filename = "__DeepMineALT__/graphics/entity/deep-miner-mk4.png",
            priority = "high",
            width = 160,
            height = 160,
            frame_count = 1,
            line_length = 1,
            shift = {0, 0.2}
        },
        crafting_categories = {"deep-mining-10"},
        crafting_speed = 7,
	    mining_speed = 7,
        module_specification =
        {
            module_slots = 5
        },
        allowed_effects = {"consumption", "speed", "pollution"},
        energy_source = 
        {
            type = "burner",
            fuel_category = "nuclear",
            emissions_per_second_per_watt = 5 / 20000,
            effectivity = 0.05,
            fuel_inventory_size = 1,
            burnt_inventory_size = 1
        },
        energy_usage = "78MW",
        emissions_per_minute = 1500,
        ingredient_count = 1,
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 2.5 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 2.5 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 2.50 },
        working_sound =
        {
            sound = 
            {
                {
                    filename = "__base__/sound/assembling-machine-t2-1.ogg",
                    volume = 4.5
                },
                {
                    filename = "__base__/sound/assembling-machine-t2-2.ogg",
                    volume = 4.5
                },
            },
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 2.5 },
            apparent_volume = 4.5,
        }
    },
    
})
data:extend
({
    {
        type = "recipe",
        name = "deep-mining-X15-10",
        category = "deep-mining-10",
        enabled = false,
        hidden = true,
        hide_from_player_crafting = true,
        icon = "__DeepMineALT__/graphics/icons/deep-mining-X.png",
        order = "e",
        subgroup = "raw-resource",
        icon_size = 128,
        ingredients = {},
        results =
	    {
            {
                type = "item", name = "stone", amount_min = 400, amount_max = 810
            },
            {
                type = "item", name = "coal", amount_min = 400, amount_max = 810
            },
            {
                type = "item", name = "iron-ore", amount_min = 650, amount_max = 810
            },
            {
                type = "item", name = "copper-ore", amount_min = 650, amount_max = 810
            },
            {
                type = "item", name = "uranium-ore", amount_min = 300, amount_max = 490
            },
            
	    },
        energy_required = 10
    },
    {
  type = "recipe",
  name = "deep-mining-+3-stonex10",
  category = "deep-mining-10",
  enabled = true,
  hidden = false,
  hide_from_player_crafting = true,
  icon = "__DeepMineALT__/graphics/icons/deep-mining-+3-stone.png",
  order = "d",
  subgroup = "raw-resource",
  icon_size = 128,
  ingredients =
    {
      --{type="fluid", name="polluted-water", amount=50},
	},
  results =
	{
      {
        type = "item", name = "stone", amount_min = 2250, amount_max = 3750
      }
	},
    energy_required = 18
  },
  {
  type = "recipe",
  name = "deep-mining-+3-coalx10",
  category = "deep-mining-10",
  enabled = true,
  hidden = false,
  hide_from_player_crafting = true,
  icon = "__DeepMineALT__/graphics/icons/deep-mining-+3-coal.png",
  order = "d",
  subgroup = "raw-resource",
  icon_size = 128,
  ingredients =
    {
      --{type="fluid", name="polluted-water", amount=50},
	},
  results =
	{
      {
        type = "item", name = "coal", amount_min = 2250, amount_max = 3750
      }
	},
    energy_required = 18
  },
  {
  type = "recipe",
  name = "deep-mining-+3-ironx10",
  category = "deep-mining-10",
  enabled = true,
  hidden = false,
  hide_from_player_crafting = true,
  icon = "__DeepMineALT__/graphics/icons/deep-mining-+3-iron.png",
  order = "d",
  subgroup = "raw-resource",
  icon_size = 128,
  ingredients =
    {
      --{type="fluid", name="polluted-water", amount=50},
	},
  results =
	{
      {
        type = "item", name = "iron-ore", amount_min = 2250, amount_max = 3750
      }
	},
    energy_required = 18
  },
  {
  type = "recipe",
  name = "deep-mining-+3-copperx10",
  category = "deep-mining-10",
  enabled = true,
  hidden = false,
  hide_from_player_crafting = true,
  icon = "__DeepMineALT__/graphics/icons/deep-mining-+3-copper.png",
  order = "d",
  subgroup = "raw-resource",
  icon_size = 128,
  ingredients =
    {
      --{type="fluid", name="polluted-water", amount=50},
	},
  results =
	{
      {
        type = "item", name = "copper-ore", amount_min = 2250, amount_max = 3750
      }
	},
    energy_required = 18
  },
  {
        type = "recipe",
        name = "deep-mining-X20-10",
        category = "deep-mining-10",
        enabled = false,
        hidden = true,
        hide_from_player_crafting = true,
        icon = "__DeepMineALT__/graphics/icons/deep-mining-X.png",
        order = "e",
        subgroup = "raw-resource",
        icon_size = 128,
        ingredients = {},
        results =
	        {
                {
                    type = "item", name = "stone", amount_min = 500, amount_max = 1000
                },
                {
                    type = "item", name = "coal", amount_min = 500, amount_max = 1000
                },
                {
                    type = "item", name = "iron-ore", amount_min = 1000, amount_max = 1500
                },
                {
                    type = "item", name = "copper-ore", amount_min = 1000, amount_max = 1500
                },
                {
                    type = "item", name = "uranium-ore", amount_min = 500, amount_max = 750
                },
          
	        },
            energy_required = 5
  },
    
	


})


end