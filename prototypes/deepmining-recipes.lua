if mods["DeepMineALT"] then
--if mods["Darkstar_utilities"] then
data:extend({
	{
			type = "recipe",
			name = "deep-mining-X15-10",
			category = "deep-mining-10",
			enabled = false,
			hidden = false,
			hide_from_player_crafting = true,
			icon = "__DeepMineALT__/graphics/icons/deep-mining-X.png",
			order = "e",
			subgroup = "raw-resource",
			icon_size = 128,
			ingredients = {},
			results =
			{
				{
					type = "item", name = "stone", amount_min = 700, amount_max = 1400
				},
				{
					type = "item", name = "coal", amount_min = 700, amount_max = 1400
				},
				{
					type = "item", name = "iron-ore", amount_min = 800, amount_max = 1600
				},
				{
					type = "item", name = "copper-ore", amount_min = 800, amount_max = 1600
				},
				{
					type = "item", name = "uranium-ore", amount_min = 200, amount_max = 350
				}
			},
			energy_required = 9
		},
		{
			type = "recipe",
			name = "deep-mining-X20-10",
			category = "deep-mining-10",
			enabled = false,
			hidden = false,
			hide_from_player_crafting = true,
			icon = "__DeepMineALT__/graphics/icons/deep-mining-X.png",
			order = "e",
			subgroup = "raw-resource",
			icon_size = 128,
			ingredients = {},
			results =
				{
					{
						type = "item", name = "stone", amount_min = 825, amount_max = 1650
					},
					{
						type = "item", name = "coal", amount_min = 825, amount_max = 1650
					},
					{
						type = "item", name = "iron-ore", amount_min = 950, amount_max = 1850
					},
					{
						type = "item", name = "copper-ore", amount_min = 950, amount_max = 1850
					},
					{
						type = "item", name = "uranium-ore", amount_min = 200, amount_max = 425
					}
				},
				energy_required = 2
		},
		{
			type = "technology",
			name = "ore15x10",
			icon = "__DeepMineALT__/graphics/icons/deep-mining-X.png",
			icon_size = 128,
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "deep-mining-X15-10"
				}
			},
			prerequisites = {"deep-miner-mkX14"},
			unit =
			{
				count = 50000,
				ingredients =
				{
					{"automation-science-pack", 5},
					{"logistic-science-pack", 5},
					{"chemical-science-pack", 5},
					{"production-science-pack", 5},
					{"utility-science-pack", 5},
					{"space-science-pack", 1},
				},
				time = 250
			},
			order = "a"
		},
	
		{
			type = "technology",
			name = "ore20x10",
			icon = "__DeepMineALT__/graphics/icons/deep-mining-X.png",
			icon_size = 128,
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "deep-mining-X20-10",

				}
			},
			prerequisites = {"ore15x10", "deep-miner-mkX19"},
			unit =
			{
				count = 500000,
				ingredients =
				{
					{"automation-science-pack", 5},
					{"logistic-science-pack", 5},
					{"chemical-science-pack", 5},
					{"production-science-pack", 5},
					{"utility-science-pack", 5},
					{"space-science-pack", 1},
				},
				time = 500
			},
			upgrade = true,
			order = "a"
		},
    
    
	})
	--end
end
