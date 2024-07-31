if mods["Darkstar_utilities"] then
data:extend({
	{
        type="recipe",
        name = "gold-plate-X500",
        category = "SX500",
        enabled = true,
        energy_required = 7,
        ingredients = {{"gold-ore", 2500}},
        result = "gold-plate",
		result_count= 500,
	},
	
	{
        type="recipe",
        name = "lithium-plate-X500",
        category = "SX500",
        enabled = true,
        energy_required = 7,
        ingredients = {{"lithium-ore", 25000}},
        result = "lithium-plate",
		result_count= 500,
    },
	
    {
        type="recipe",
        name = "lead-plate-X500",
        category = "SX500",
        enabled = true,
        energy_required = 7,
        ingredients = {{"lead-ore", 2500}},
        result = "lead-plate",
		result_count= 500,
	},
	
	{
        type="recipe",
        name = "antimony-plate-X500",
        category = "SX500",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"antimony", 2500}},
        result = "antimony-plate",
		result_count= 500,
	},
	
	{
        type="recipe",
        name = "tellurium-plate-X500",
        category = "SX500",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"tellurium", 2500}},
        result = "tellurium-plate",
		result_count= 500,
	},
	
	{
        type="recipe",
        name = "platinum-plate-X500",
        category = "SX500",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"platinum", 2500}},
        result = "platinum-plate",
		result_count= 500,
	},
	
	{
        type="recipe",
        name = "silver-plate-X500",
        category = "SX500",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"silver", 2500}},
        result = "silver-plate",
		result_count= 500,
	},
	
	{
        type="recipe",
        name = "selenium-plate-X500",
        category = "SX500",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"selenium", 1000}},
        result = "selenium-plate",
		result_count= 500,
    },
	
	{
        type="recipe",
        name = "glass-X500",
        category = "SX500",
        enabled = true,
        energy_required = 15.5,
        ingredients = {{"sand", 2500}},
        result = "glass",
		result_count= 500,
    },
	
    {
        type="recipe",
        name = "silicon-X500",
        category = "SX500",
        enabled = true,
        energy_required = 25.5,
        ingredients = {{"sand2", 2500}},
        result = "silicon",
		result_count= 500,
	},
    {
		type="recipe",
		name="anode-mud-selenium-processing-X500",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 4750},
		},
		result="selenium",
		result_count= 4000,
	},

	{
		type="recipe",
		name="anode-mud-tellurium-processing-X500",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 4750},
		},
		result="tellurium",
		result_count= 4000,
	},

	{
		type="recipe",
		name="anode-mud-silver-processing-X500",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 4750},
		},
		result="silver",
		result_count= 4000,
	},

	{
		type="recipe",
		name="anode-mud-platinum-processing-X500",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 4750},
		},
		result="platinum",
		result_count= 4000,
	},

	{
		type="recipe",
		name="anode-mud-antimony-processing-X500",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 4750},
		},
		result="antimony",
		result_count= 4000,
	},
	{
		type="recipe",
		name="sand2-X-500",
		category = "SX500",
		enabled = true,
		ingredients =
		{
			 {"sand", 1000},
		},
		result="sand2",
		result_count = 500,
    },
	{
		type="recipe",
		name = "copper-refining-X500",
		category = "chemistry-500",
		enabled = true,
		energy_required = 3,
		ingredients =
		{
			{type="fluid", name="high-pressure-copper-sulfate", amount=100},
			{name="copper-plate", amount=10000},
		},
		results=
		{
			{name="anode-mud", amount=20000},
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
	--"SX1000"

})
end