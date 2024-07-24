if mods["Darkstar_utilities"] then
data:extend({
	{
        type="recipe",
        name = "gold-plateX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 7,
        ingredients = {{"gold-ore", 5000}},
        result = "gold-plate",
		result_count= 1000,
	},
	
	{
        type="recipe",
        name = "lithium-plateX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 7,
        ingredients = {{"lithium-ore", 50000}},
        result = "lithium-plate",
		result_count= 1000,
    },
	
    {
        type="recipe",
        name = "lead-plateX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 7,
        ingredients = {{"lead-ore", 5000}},
        result = "lead-plate",
		result_count= 1000,
	},
	
	{
        type="recipe",
        name = "antimony-plateX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"antimony", 5000}},
        result = "antimony-plate",
		result_count= 1000,
	},
	
	{
        type="recipe",
        name = "tellurium-plateX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"tellurium", 5000}},
        result = "tellurium-plate",
		result_count= 1000,
	},
	
	{
        type="recipe",
        name = "platinum-plateX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"platinum", 5000}},
        result = "platinum-plate",
		result_count= 1000,
	},
	
	{
        type="recipe",
        name = "silver-plateX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"silver", 5000}},
        result = "silver-plate",
		result_count= 1000,
	},
	
	{
        type="recipe",
        name = "selenium-plateX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"selenium", 1000}},
        result = "selenium-plate",
		result_count= 1000,
    },
	
	{
        type="recipe",
        name = "glassX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 15.5,
        ingredients = {{"sand", 5000}},
        result = "glass",
		result_count= 1000,
    },
	
    {
        type="recipe",
        name = "siliconX1000",
        category = "Smelting1000",
        enabled = true,
        energy_required = 25.5,
        ingredients = {{"sand2", 5000}},
        result = "silicon",
		result_count= 1000,
	},
    {
		type="recipe",
		name="anode-mud-selenium-processingX1000",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 8500},
		},
		result="selenium",
		result_count= 8000,
	},

	{
		type="recipe",
		name="anode-mud-tellurium-processingX1000",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 8500},
		},
		result="tellurium",
		result_count= 8000,
	},

	{
		type="recipe",
		name="anode-mud-silver-processingX1000",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 8500},
		},
		result="silver",
		result_count= 8000,
	},

	{
		type="recipe",
		name="anode-mud-platinum-processingX1000",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 8500},
		},
		result="platinum",
		result_count= 8000,
	},

	{
		type="recipe",
		name="anode-mud-antimony-processingX1000",
		energy_required = 5,
		category = "extraction",
		enabled = true,
		hidden = false,
		ingredients =
		{
			{"anode-mud", 8500},
		},
		result="antimony",
		result_count= 8000,
	},
	{
		type="recipe",
		name="sand2-X-1000",
		category = "Smelting1000",
		enabled = true,
		ingredients =
		{
			 {"sand", 2000},
		},
		result="sand2",
		result_count = 1000,
    },


})
end