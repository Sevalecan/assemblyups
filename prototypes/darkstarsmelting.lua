if mods["Darkstar_utilities"] then
data:extend({
	{
        type="recipe",
        name = "gold-platex10",
        category = "SX10",
        enabled = true,
        energy_required = 7,
        ingredients = {{"gold-ore", 20}},
        result = "gold-plate",
		result_count= "10",
	},
	
	{
        type="recipe",
        name = "lithium-platex10",
        category = "SX10",
        enabled = true,
        energy_required = 7,
        ingredients = {{"lithium-ore", 200}},
        result = "lithium-plate",
		result_count= "10",
    },
	
    {
        type="recipe",
        name = "lead-platex10",
        category = "SX10",
        enabled = true,
        energy_required = 7,
        ingredients = {{"lead-ore", 20}},
        result = "lead-plate",
		result_count= "10",
	},
	
	{
        type="recipe",
        name = "antimony-platex10",
        category = "SX10",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"antimony", 20}},
        result = "antimony-plate",
		result_count= "10",
	},
	
	{
        type="recipe",
        name = "tellurium-platex10",
        category = "SX10",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"tellurium", 20}},
        result = "tellurium-plate",
		result_count= "10",
	},
	
	{
        type="recipe",
        name = "platinum-platex10",
        category = "SX10",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"platinum", 20}},
        result = "platinum-plate",
		result_count= "10",
	},
	
	{
        type="recipe",
        name = "silver-platex10",
        category = "SX10",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"silver", 20}},
        result = "silver-plate",
		result_count= "10",
	},
	
	{
        type="recipe",
        name = "selenium-platex10",
        category = "SX10",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"selenium", 20}},
        result = "selenium-plate",
		result_count= "10",
    },
	
	{
        type="recipe",
        name = "glassx10",
        category = "SX10",
        enabled = true,
        energy_required = 15.5,
        ingredients = {{"sand", 50}},
        result = "glass",
		result_count= "10",
    },
	
    {
        type="recipe",
        name = "siliconx10",
        category = "SX10",
        enabled = true,
        energy_required = 25.5,
        ingredients = {{"sand2", 20}},
        result = "silicon",
		result_count= "10",
	},
    {
		type="recipe",
		name="anode-mud-selenium-processingx10",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 100},
		},
		result="selenium",
		result_count= "80",
	},

	{
		type="recipe",
		name="anode-mud-tellurium-processingx10",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 100},
		},
		result="tellurium",
		result_count= "80",
	},

	{
		type="recipe",
		name="anode-mud-silver-processingx10",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 100},
		},
		result="silver",
		result_count= "80",
	},

	{
		type="recipe",
		name="anode-mud-platinum-processingx10",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 100},
		},
		result="platinum",
		result_count= "80",
	},

	{
		type="recipe",
		name="anode-mud-antimony-processingx10",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 100},
		},
		result="antimony",
		result_count= "80",
	},
	{
		type="recipe",
		name="sand2-x10",
		category = "science-packs-10-crafting",
		enabled = true,
		ingredients =
		{
			 {"sand", 20},
		},
		result="sand2",
		result_count = 10,
    },
	{
		type="recipe",
		name = "copper-refiningx10",
		category = "chemistry-10",
		enabled = true,
		energy_required = 3,
		ingredients =
		{
			{type="fluid", name="copper-sulfate", amount=200},
			{name="copper-plate", amount=200},
		},
		results=
		{
			{name="anode-mud", amount=400},
		},
		main_product= "",
		icon = "__Darkstar_utilities__/graphics/icons/copper-refining.png",
		icon_size = 32,
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
		crafting_machine_tint =
		{
			primary = {r = 0.290, g = 0.227, b = 1.000, a = 0.000}, -- #49060000
			secondary = {r = 0.022, g = 0.865, b = 1.190, a = 0.000}, -- #b8763000
			tertiary = {r = 0.070, g = 0.065, b = 1.000, a = 0.000}, -- #dd5d0000
		},
	},

})
end