if mods["Darkstar_utilities"] then
data:extend({
	{
        type="recipe",
        name = "gold-platex100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 7,
        ingredients = {{"gold-ore", 200}},
        result = "gold-plate",
		result_count= 100,
	},
	
	{
        type="recipe",
        name = "lithium-platex100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 7,
        ingredients = {{"lithium-ore", 2000}},
        result = "lithium-plate",
		result_count= 100,
    },
	
    {
        type="recipe",
        name = "lead-platex100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 7,
        ingredients = {{"lead-ore", 200}},
        result = "lead-plate",
		result_count= 100,
	},
	
	{
        type="recipe",
        name = "antimony-platex100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"antimony", 200}},
        result = "antimony-plate",
		result_count= 100,
	},
	
	{
        type="recipe",
        name = "tellurium-platex100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"tellurium", 200}},
        result = "tellurium-plate",
		result_count= 100,
	},
	
	{
        type="recipe",
        name = "platinum-platex100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"platinum", 200}},
        result = "platinum-plate",
		result_count= 100,
	},
	
	{
        type="recipe",
        name = "silver-platex100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"silver", 200}},
        result = "silver-plate",
		result_count= 100,
	},
	
	{
        type="recipe",
        name = "selenium-platex100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"selenium", 200}},
        result = "selenium-plate",
		result_count= 100,
    },
	
	{
        type="recipe",
        name = "glassx100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 15.5,
        ingredients = {{"sand", 500}},
        result = "glass",
		result_count= 100,
    },
	
    {
        type="recipe",
        name = "siliconx100",
        category = "Smelting-X100",
        enabled = true,
        energy_required = 25.5,
        ingredients = {{"sand2", 200}},
        result = "silicon",
		result_count= 100,
	},
    {
		type="recipe",
		name="anode-mud-selenium-processingx100",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 950},
		},
		result="selenium",
		result_count= 800,
	},

	{
		type="recipe",
		name="anode-mud-tellurium-processingx100",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 950},
		},
		result="tellurium",
		result_count= 800,
	},

	{
		type="recipe",
		name="anode-mud-silver-processingx100",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 950},
		},
		result="silver",
		result_count= 800,
	},

	{
		type="recipe",
		name="anode-mud-platinum-processingx100",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 950},
		},
		result="platinum",
		result_count= 800,
	},

	{
		type="recipe",
		name="anode-mud-antimony-processingx100",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 950},
		},
		result="antimony",
		result_count= 800,
	},
	{
		type="recipe",
		name="sand2-x100",
		category = "X100",
		enabled = true,
		ingredients =
		{
			 {"sand", 200},
		},
		result="sand2",
		result_count = 100,
    },

	{
		type="recipe",
		name = "copper-refiningx100",
		category = "chemistry-100",
		enabled = true,
		energy_required = 3,
		ingredients =
		{
			{type="fluid", name="copper-sulfate", amount=2000},
			{name="copper-plate", amount=2000},
		},
		results=
		{
			{name="anode-mud", amount=4000},
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