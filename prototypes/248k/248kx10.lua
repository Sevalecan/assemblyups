if mods["248k"] then
local function sprite(name)
    return '__248k__/ressources/'..name
end
local recipe_amount = 10



data:extend({





   --{
        --name = 'high_pressure_fi_strong_acid',
        --type = 'fluid',
        --icon = sprite('fi_strong_acid.png'),
        --icon_size = 64,
        --default_temperature = 15,
        --max_temperature = 1500,
        --heat_capacity = '100kJ',
        --base_color = { r=0.92, g=0.29, b=0.22 }, 
		--flow_color = { r=0.92, g=0.29, b=0.22 }, 
		--pressure_to_speed_ratio = 0.400, 
		--flow_to_energy_ratio = 0,
        --subgroup = 'fi_item_subgroup_f',
        --order = 'a-a',
   --},
   {
        type = "fluid",
        name = "high-pressure-fu-hydrogen",
        default_temperature = 50,
        heat_capacity = "0.1KJ",
        base_color = {r=0.3, g=0.1, b=0.3},
        flow_color = {r=0.8, g=0.8, b=0.8},
        max_temperature = 100,
        icon = "__assemblyUPS__/graphics/icons/polyethylene.png",
        icon_size = 128, icon_mipmaps = 4,
        order = "a[fluid]-e[petroleum-gas]"
   },
   {
        type = "fluid",
        name = "high-pressure-fu-protium",
        default_temperature = 50,
        heat_capacity = "0.1KJ",
        base_color = {r=0.3, g=0.1, b=0.3},
        flow_color = {r=0.8, g=0.8, b=0.8},
        max_temperature = 100,
        icon = "__assemblyUPS__/graphics/icons/polyethylene.png",
        icon_size = 128, icon_mipmaps = 4,
        order = "a[fluid]-e[petroleum-gas]"
   },

   {
        name = 'hydrogen_recipeHP',
        type = 'recipe',
        category = 'oil-processing',
        --main_product = 'protium',
        enabled = true,
        ingredients = {
            {type="fluid", name="high-pressure-fu_hydrogen", amount=1000},
        },
        results = {
            {type="fluid", name="high-pressure-fu_protium", amount=999},
            {type="fluid", name="fu_deuterium", amount=10},
            {type="fluid", name="fu_tritium", amount=1}
        },
        energy_required = 100,
        subgroup = 'fi_item_subgroup_f',
        always_show_made_in = true,
        icon_size = 64,
        icons = 
        {
            {
                icon = "__248k__/ressources/fluids/el_dirty_water.png"
            },
            {
                icon = "__248k__/ressources/icons/overlay_stone.png"
            }
        }
    },

   {
        name = 'fu_activator_1_recipex10',
        type = 'recipe',
        category = 'fu_activator_crafting_categoryx10',
        main_product = 'fu_deuterium',
        enabled = true,
        hide_from_player_crafting = true,
        ingredients = {
            {type="fluid", name="fu_protium", amount=10 * recipe_amount},
            {type="fluid", name="fu_neutron_fluid", amount = recipe_amount},
        },
        results = {
            {type="fluid", name="fu_protium", amount=9 * recipe_amount},
            {type="fluid", name="fu_deuterium", amount=recipe_amount},
        },
        result_count = 1,
        energy_required = 10,
        always_show_made_in = true,
    },
    {
        name = 'fu_activator_2_recipex10',
        type = 'recipe',
        category = 'fu_activator_crafting_categoryx10',
        main_product = 'fu_tritium',
        enabled = true,
        hide_from_player_crafting = true,
        ingredients = {
            {type="fluid", name="fu_deuterium", amount=10 * recipe_amount},
            {type="fluid", name="fu_neutron_fluid", amount=recipe_amount},
        },
        results = {
            {type="fluid", name="fu_deuterium", amount=9 * recipe_amount},
            {type="fluid", name="fu_tritium", amount=recipe_amount},
        },
        result_count = 1,
        energy_required = 10,
        always_show_made_in = true,
    },


   {
        name = 'fu_lead_crushed_recipex10',
        type = 'recipe',
        category = 'fi_crushingx10',
        enabled = true,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="fu_lead_item", amount=recipe_amount},
        },
        result = 'fu_crushed_lead_item',
        result_count = 20,
        energy_required = 2,
   },
   {
        name = 'fi_crushed_lithium_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'fi_crushingx10',
        ingredients = {
            {'el_lithium_item',recipe_amount},
        },
        result = 'fi_crushed_lithium_item',
        result_count = 2 * recipe_amount,
        energy_required = 2,
        always_show_made_in = true,
   },
   {
        name = 'fi_crushed_coal_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'fi_crushingx10',
        ingredients = {
            {'coal',10},
        },
        result = 'fi_crushed_coal_item',
        result_count = 20,
        energy_required = 2,
        always_show_made_in = true,
   },
   {
        name = 'fu_carbon_fiber_recipex10',
        type = 'recipe',
        enabled = true,
        category = 'fi_fiberer_categoryx10',
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="fi_crushed_coal_item", amount=60},
            --{type="fluid", name="steam", amount=240, temperature=165},
        },
        results = {
            {type="item", name="fu_materials_carbon_fiber", amount=10},
        },
        energy_required = 2,
        always_show_made_in = true
   },
   {
        name = 'fu_lithium_6_recipex10',
        type = 'recipe',
        category = 'chemistry-10',
        enabled = true,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="fi_crushed_lithium_item", amount=10},
        },
        results = {
            {type="fluid", name="fu_lithium_6", amount=50},
        },
        result_count = 1,
        energy_required = 1,
        always_show_made_in = true,
   },


   {
        name = 'el_lithium_ore_recipex10',
        type = 'recipe',
        enabled = 'false',
        hide_from_player_crafting = true,
        category = 'crafting-with-fluid',
        main_product = 'el_lithium_item',
        ingredients = {
            {type="fluid", name="el_dirty_water", amount=500},
        },
        results = {
            {type="fluid", name="water", amount=500},
            {type="item", name="el_lithium_item", amount=10},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_crushed_crystal_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'fi_crushingx10',
        ingredients = {
            {'el_energy_crystal_item',10},
        },
        result = 'fi_crushed_crystal_item',
        result_count = 20,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'el_purify_stone_2_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx10',
        main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="water", amount=500},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="stone", amount=80}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=1000},
            {type="item", name="el_materials_pure_aluminum", amount=20},
        },
        energy_required = 1,
        always_show_made_in = true,
        icon_size = 64,
        icons = 
        {
            {
                icon = "__248k__/ressources/fluids/el_dirty_water.png"
            },
            {
                icon = "__248k__/ressources/icons/overlay_stone.png"
            }
        }
        
    },
    {
        name = 'el_purify_iron_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx10',
        main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="water", amount=250},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="iron-ore", amount=100}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=500},
            {type="item", name="el_materials_pure_iron", amount=50},
        },
        energy_required = 1,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k__/ressources/fluids/el_dirty_water.png"
            },
            {
                icon = "__248k__/ressources/icons/overlay_iron.png"
            }
        }
        
    },
    {
        name = 'el_purify_copper_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx10',
        main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="water", amount=250},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="copper-ore", amount=100}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=500},
            {type="item", name="el_materials_pure_copper", amount=50},
        },
        energy_required = 1,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k__/ressources/fluids/el_dirty_water.png"
            },
            {
                icon = "__248k__/ressources/icons/overlay_copper.png"
            }
        } 
    },
    {
        name = 'el_grow_energy_crystal_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_grower_categoryx10',
        ingredients = {
            {type="item", name="el_energy_crystal_item", amount=10},
            {type="fluid", name="el_acidic_water", amount=125},
        },
        results = {
            {type="item", name="el_energy_crystal_item", amount=20},
        },
        result_count = 1,
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'fi_purify_uranium_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx10',
        --main_product = 'fi_dirty_water',
        ingredients = {
            {type="fluid", name="high-pressure-fi_strong_acid", amount=100},
            {type="fluid", name="high-pressure-water", amount=5},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="uranium-ore", amount=5000}
        },
        results = {
            {type="fluid", name="high-pressure-fi_dirty_water", amount=50},
            {type="item", name="stone", amount=4500},
            {type="item", name="uranium-238", amount=490},
            {type="item", name="uranium-235", amount=10},
        },
        energy_required = 20,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k__/ressources/fluids/fi_dirty_water.png"
            },
            {
                icon = "__248k__/ressources/icons/overlay_uranium.png"
            }
        },
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_purify_stone_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx10',
        --main_product = 'fi_dirty_water',
        ingredients = {
            {type="fluid", name="high-pressure-fi_strong_acid", amount=10},
            {type="fluid", name="water", amount=250},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="stone", amount=80}
        },
        results = {
            {type="fluid", name="fi_dirty_water", amount=500},
            {type="item", name="el_energy_crystal_item", amount=30},
            {type="item", name="el_materials_pure_iron", amount=30},
            {type="item", name="el_materials_pure_copper", amount=30},
        },
        energy_required = 2,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k__/ressources/fluids/fi_dirty_water.png"
            },
            {
                icon = "__248k__/ressources/icons/overlay_stone.png"
            }
        },
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_strong_acid_recipex10',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'chemistry-10',
        --main_product = 'fi_strong_acid',
        ingredients = {
            {type="fluid", name="water", amount=500},
            {type="fluid", name="sulfuric-acid", amount=500},
            {type="item", name="fi_materials_flourite", amount=10},
        },
        results = {
            {type="fluid", name="el_acidic_water", amount=500},
            {type="fluid", name="high-pressure-fi_strong_acid", amount=10},
        },
        energy_required = 0.2,
        icon_size = 64,
        icons = {
            {
                icon = "__248k__/ressources/fluids/fi_dirty_water.png"
            },
            {
                icon = "__248k__/ressources/icons/overlay_stone.png"
            }
        },
        order = 'a-b',
        subgroup = 'fi_item_subgroup_f',
        always_show_made_in = true,

    },



})
end