if mods["248k"] then
local function sprite(name)
    return '__248k__/ressources/'..name
end
local recipe_amount = 100


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
        name = 'fu_activator_1_recipex100',
        type = 'recipe',
        category = 'fu_activator_crafting_categoryx100',
        main_product = 'fu_deuterium',
        enabled = true,
        hide_from_player_crafting = true,
        ingredients = {
            {type="fluid", name="fu_protium", amount = 10 * recipe_amount},
            {type="fluid", name="fu_neutron_fluid", amount = recipe_amount},
        },
        results = {
            {type="fluid", name="fu_protium", amount = 9 * recipe_amount},
            {type="fluid", name="fu_deuterium", amount = recipe_amount},
        },
        result_count = 1,
        energy_required = 10,
        always_show_made_in = true,
   },
   {
        name = 'fu_activator_2_recipex100',
        type = 'recipe',
        category = 'fu_activator_crafting_categoryx100',
        main_product = 'fu_tritium',
        enabled = true,
        hide_from_player_crafting = true,
        ingredients = 
        {
            {type="fluid", name="fu_deuterium", amount = 10 * recipe_amount},
            {type="fluid", name="fu_neutron_fluid", amount = recipe_amount},
        },
        results =
        {
            {type="fluid", name="fu_deuterium", amount = 9 * recipe_amount},
            {type="fluid", name="fu_tritium", amount = recipe_amount},
        },
        result_count = 1,
        energy_required = 10,
        always_show_made_in = true,
   },









   {
        name = 'fu_lead_crushed_recipex100',
        type = 'recipe',
        category = 'fi_crushingx100',
        enabled = true,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="fu_lead_item", amount= recipe_amount},
        },
        result = 'fu_crushed_lead_item',
        result_count = 200,
        energy_required = 2,
   },
   {
        name = 'fi_crushed_lithium_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'fi_crushingx100',
        ingredients = {
            {'el_lithium_item', recipe_amount},
        },
        result = 'fi_crushed_lithium_item',
        result_count = 200,
        energy_required = 2,
        always_show_made_in = true,
   },
   {
        name = 'fi_crushed_coal_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'fi_crushingx100',
        ingredients = {
            {'coal',100},
        },
        result = 'fi_crushed_coal_item',
        result_count = 200,
        energy_required = 2,
        always_show_made_in = true,
   },
   {
        name = 'fu_carbon_fiber_recipex100',
        type = 'recipe',
        enabled = true,
        category = 'fi_fiberer_categoryx100',
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="fi_crushed_coal_item", amount=600},
            --{type="fluid", name="steam", amount=240, temperature=165},
        },
        results = {
            {type="item", name="fu_materials_carbon_fiber", amount=100},
        },
        energy_required = 2,
        always_show_made_in = true
   },
   {
        name = 'fu_lithium_6_recipex100',
        type = 'recipe',
        category = 'chemistry-10',
        enabled = true,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="fi_crushed_lithium_item", amount=100},
        },
        results = {
            {type="fluid", name="fu_lithium_6", amount=500},
        },
        result_count = 1,
        energy_required = 1,
        always_show_made_in = true,
   },


   {
        name = 'el_lithium_ore_recipex100',
        type = 'recipe',
        enabled = 'false',
        hide_from_player_crafting = true,
        category = 'crafting-with-fluid',
        main_product = 'el_lithium_item',
        ingredients = {
            {type="fluid", name="high-pressure-el_dirty_water", amount=50},
        },
        results = {
            --{type="fluid", name="water", amount=500},
            {type="item", name="el_lithium_item", amount=100},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_crushed_crystal_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'fi_crushingx100',
        ingredients = {
            {'el_energy_crystal_item',100},
        },
        result = 'fi_crushed_crystal_item',
        result_count = 200,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'el_purify_stone_2_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx100',
        --main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="high-pressure-water", amount=50},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="stone", amount=800}
        },
        results = {
            {type="fluid", name="high-pressure-el_dirty_water", amount=100},
            {type="item", name="el_materials_pure_aluminum", amount=200},
        },
        energy_required = 1,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k__/ressources/fluids/el_dirty_water.png"
            },
            {
                icon = "__248k__/ressources/icons/overlay_stone.png"
            }
        }
        
    },
    {
        name = 'el_purify_iron_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx100',
        --main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="high-pressure-water", amount=25},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="iron-ore", amount=1000}
        },
        results = {
            {type="fluid", name="high-pressure-el_dirty_water", amount=50},
            {type="item", name="el_materials_pure_iron", amount=500},
        },
        energy_required = 1,
        always_show_made_in = true,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
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
        name = 'el_purify_copper_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx100',
        --main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="high-pressure-water", amount=25},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="copper-ore", amount=100}
        },
        results = {
            {type="fluid", name="high-pressure-el_dirty_water", amount=50},
            {type="item", name="el_materials_pure_copper", amount=500},
        },
        energy_required = 1,
        always_show_made_in = true,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
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
        name = 'el_grow_energy_crystal_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_grower_categoryx100',
        ingredients = {
            {type="item", name="el_energy_crystal_item", amount=100},
            {type="fluid", name="high-pressure-el_acidic_water", amount=12},
        },
        results = {
            {type="item", name="el_energy_crystal_item", amount=200},
        },
        result_count = 1,
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'fi_purify_uranium_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx100',
        --main_product = 'fi_dirty_water',
        ingredients = {
            {type="fluid", name="high-pressure-fi_strong_acid", amount=1000},
            {type="fluid", name="high-pressure-water", amount=50},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="uranium-ore", amount=50000}
        },
        results = {
            {type="fluid", name="high-pressure-fi_dirty_water", amount=500},
            {type="item", name="stone", amount=45000},
            {type="item", name="uranium-238", amount=4900},
            {type="item", name="uranium-235", amount=100},
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
        name = 'fi_purify_stone_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'el_purifier_categoryx100',
        --main_product = 'fi_dirty_water',
        ingredients = {
            {type="fluid", name="high-pressure-fi_strong_acid", amount=100},
            {type="fluid", name="water", amount=750},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="stone", amount=800}
        },
        results = {
            {type="fluid", name="high-pressure-fi_dirty_water", amount=50},
            {type="item", name="el_energy_crystal_item", amount=300},
            {type="item", name="el_materials_pure_iron", amount=300},
            {type="item", name="el_materials_pure_copper", amount=300},
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
        name = 'fi_strong_acid_recipex100',
        type = 'recipe',
        enabled = true,
        hide_from_player_crafting = true,
        category = 'chemistry-10',
        --main_product = 'fi_strong_acid',
        ingredients = {
            {type="fluid", name="high-pressure-water", amount=50},
            {type="fluid", name="high-pressure-sulfuric-acid", amount=50},
            {type="item", name="fi_materials_flourite", amount=100},
        },
        results = {
            {type="fluid", name="high-pressure-el_acidic_water", amount=50},
            {type="fluid", name="high-pressure-fi_strong_acid", amount=100},
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