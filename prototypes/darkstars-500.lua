

	if mods["Darkstar_utilities"] then
	  data:extend({
		{
			type="recipe",
			name="module-componantX500",
			energy_required = 3,
			enabled=true,
			category = "X500",
			ingredients =
			{
				{"micro-processor", 500},
				{"gold-plate", 1000},
			},
			result="module-componant",
			result_count= 1000,
		},
		{
			type="recipe",
			name="micro-processorX500",
			energy_required = 10,
			enabled="true",
			category = "X500",
			ingredients =
			{
				{"electronic-circuit", 500},
				{"advanced-circuit", 500},
				{"gold-plate", 1000},
				{"platinum-plate", 1000},
			},
			result="micro-processor",
			result_count= 1000,
		},
		{
			type="recipe",
			name="solar-wafferX500",
			energy_required = 5,
			enabled="true",
			category = "X500",
			ingredients =
			{
				{"silicon", 500},
				{"seed-crystal", 500},
				{"silver-plate", 2000},
			},
			result="solar-waffer",
			result_count = 500,
		},
		{
			type="recipe",
			name="advanced-photovoltaic-cellsX500",
			energy_required = 5,
			enabled="true",
			category = "X500",
			ingredients =
			{
				{"micro-cells", 7000},
				{"tellurium-plate", 1000},
			},
			result="advanced-photovoltaic-cells",
			result_count = 500,
		},
		{
			type="recipe",
			name="micro-cellsX500",
			energy_required = 5,
			enabled="true",
			category = "X500",
			ingredients =
			{
				{"solar-waffer", 1000},
				{"glass", 1000},
				{"selenium-plate", 500},
			},
			result="micro-cells",
			result_count= 1500,
		},
		{
			type="recipe",
			name="fuse-boxX500",
			enabled="true",
			category = "X500",
			ingredients =
			{
				{"copper-cable", 500},
				{"module-componant", 500},
			},
			result="fuse-box",
			result_count= 500,
		},
		{
			type="recipe",
			name="sandx500",
			enabled="true",
			category = "X500",
			ingredients =
			{
				{"stone", 5000},
			},
			result="sand",
			result_count = 10000
		},
		{
			type="recipe",
			name = "seed-crystal-x500",
			category = "chemistry-500",
			energy_required = 15,
			enabled = true,
			ingredients =
			{
				{type="fluid", name="high-pressure-sulfuric-acid", amount=50},
				{type="item", name="iron-ore", amount=5000},
			},
			result= "seed-crystal",
			result_count = 500,
		},
	  })
	end