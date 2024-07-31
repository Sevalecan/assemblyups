if mods["NPUtils"] then
data:extend(
{   --Items
	{
		type = "recipe",
		name = "steel-platev2",				
		energy_required = 3.0,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="iron-ore", amount=4},
			{type="item", name="coal", amount=1},
        },		
		result = "steel-plate",
		result_count = 1,
		category = "blast-furnace",
		icon = "__base__/graphics/icons/steel-plate.png",
		icon_size = 32,
	  order = "c", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "steel-platev3",				
		energy_required = 3.0,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="pure-iron", amount=4},
			{type="item", name="pure-carbon", amount=1},
        },		
		result = "steel-plate",
		result_count = 2,
		category = "blast-furnace",
		icon = "__base__/graphics/icons/steel-plate.png",
		icon_size = 32,
	  order = "c", group = "NPUtils", subgroup = "stuff",
	},	
	{
		type = "recipe",
		name = "steel-platev4",				
		energy_required = 2.95,
		enabled = true,
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-iron", amount=12},
			{type="item", name="clean-carbon", amount=3},
        },		
		result = "steel-plate",
		result_count = 10,
		category = "blast-furnace",
		icon = "__base__/graphics/icons/steel-plate.png",
		icon_size = 32,
	  order = "c", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "steel-platev5",				
		energy_required = 1.5,
		enabled = false,
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-iron", amount=5},
			{type="item", name="clean-carbon", amount=5},
        },		
		result = "steel-plate",
		result_count = 15,
		category = "blast-furnacev2",
		icon = "__base__/graphics/icons/steel-plate.png",
		icon_size = 32,
	  order = "c", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "steel-plate-X10",				
		energy_required = 1.75,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-iron", amount=120},
			{type="item", name="clean-carbon", amount=30},
        },		
		result = "steel-plate",
		result_count = 100,
		category = "blast-furnacex10",
		icon = "__base__/graphics/icons/steel-plate.png",
		icon_size = 32,
	  order = "c", group = "NPUtils", subgroup = "stuff",
	},
-----------------------------Iron---------------------
	{
		type = "recipe",
		name = "iron-platev2",				
		energy_required = 3,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="pure-iron", amount=2},
        },		
		result = "iron-plate",
		result_count = 3,
		category = "smelting",
		icon = "__base__/graphics/icons/iron-plate.png",
		icon_size = 32,
	  order = "d", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "iron-platev3",				
		energy_required = 2.0,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-iron", amount=1},
        },		
		result = "iron-plate",
		result_count = 2,
		category = "smelting",
		icon = "__base__/graphics/icons/iron-plate.png",
		icon_size = 32,
	  order = "d", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "iron-platev4",				
		energy_required = 0.95,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="water" , amount = 10},
			{type = "fluid", name ="molten-iron" , amount = 30},
        },		
		result = "iron-plate",
		result_count = 3,
		category = "casting-chamber",
		icon = "__base__/graphics/icons/iron-plate.png",
		icon_size = 32,
	  order = "d", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "iron-platev5",				
		energy_required = 0.75,
		enabled = "false",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="water" , amount = 30},
			{type = "fluid", name ="molten-iron" , amount = 90},
        },		
		result = "iron-plate",
		result_count = 60,
		category = "casting-chamberv2",
		icon = "__base__/graphics/icons/iron-plate.png",
		icon_size = 32,
	  order = "d", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "iron-plate-X10",				
		energy_required = 0.90,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="water" , amount = 100},
			{type = "fluid", name ="molten-iron" , amount = 300},
        },		
		result = "iron-plate",
		result_count = 30,
		category = "casting-chamber-X10",
		icon = "__base__/graphics/icons/iron-plate.png",
		icon_size = 32,
	  order = "d", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "iron-plate-X100",				
		energy_required = 0.75,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 5},
			{type = "fluid", name ="high-pressure-molten-iron" , amount = 80},
        },		
		result = "iron-plate",
		result_count = 1000,
		category = "casting-chamber-X100",
		icon = "__base__/graphics/icons/iron-plate.png",
		icon_size = 32,
	  order = "d", group = "NPUtils", subgroup = "stuff",
	},
----------------------------Copper----------------------------
	{
		type = "recipe",
		name = "copper-platev2",				
		energy_required = 3,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="pure-copper", amount=2},
        },		
		result = "copper-plate",
		result_count = 3,
		category = "smelting",
		icon = "__base__/graphics/icons/copper-plate.png",
		icon_size = 32,
	  order = "e", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "copper-platev3",				
		energy_required = 2.0,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-copper", amount=1},
        },		
		result = "copper-plate",
		result_count = 2,
		category = "smelting",
		icon = "__base__/graphics/icons/copper-plate.png",
		icon_size = 32,
	  order = "e", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "copper-platev4",				
		energy_required = 0.95,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="water" , amount = 10},
			{type = "fluid", name ="molten-copper" , amount = 30},
        },		
		result = "copper-plate",
		result_count = 3,
		category = "casting-chamber",
		icon = "__base__/graphics/icons/copper-plate.png",
		icon_size = 32,
	  order = "e", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "copper-platev5",				
		energy_required = 0.75,
		enabled = "false",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="water" , amount = 30},
			{type = "fluid", name ="molten-copper" , amount = 90},
        },		
		result = "copper-plate",
		result_count = 50,
		category = "casting-chamberv2",
		icon = "__base__/graphics/icons/copper-plate.png",
		icon_size = 32,
	  order = "e", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "copper-plate-X10",				
		energy_required = 0.90,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="water" , amount = 100},
			{type = "fluid", name ="molten-copper" , amount = 300},
        },		
		result = "copper-plate",
		result_count = 30,
		category = "casting-chamber-X10",
		icon = "__base__/graphics/icons/copper-plate.png",
		icon_size = 32,
	  order = "e", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "copper-plate-X100",				
		energy_required = 0.75,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 7},
			{type = "fluid", name ="high-pressure-molten-copper" , amount = 80},
        },		
		result = "copper-plate",
		result_count = 1000,
		category = "casting-chamber-X100",
		icon = "__base__/graphics/icons/copper-plate.png",
		icon_size = 32,
	  order = "e", group = "NPUtils", subgroup = "stuff",
	},
---------------------------------Other--------------------------
	{
		type = "recipe",
		name = "alien-artifactv2",				
		energy_required = 2.0,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="a-alien-blood" , amount = 54},
        },		
		result = "n-alien-ember",
		result_count = 1,
		category = "artifact-maker",
		icon = "__NPUtils__/graphics/icon/n-alien-ember-icon.png",
		icon_size = 32,
	  order = "d", group = "NPUtils", subgroup = "alientuff",
	},
	{
		type = "recipe",
		name = "pure-carbon",				
		energy_required = 0.95,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="coal", amount=2},			
        },		
		result = "pure-carbon",
		result_count = 2,
		category = "purification-chamber",
	},
	{
		type = "recipe",
		name = "pure-carbon-x10",				
		energy_required = 0.90,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="coal", amount=20},			
        },		
		result = "pure-carbon",
		result_count = 20,
		category = "purrification-chamber-X10",
	},
	{
		type = "recipe",
		name = "pure-carbon-x100",				
		energy_required = 0.75,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="coal", amount=200},			
        },		
		result = "pure-carbon",
		result_count = 200,
		category = "purrification-chamber-X100",
	},
	{
		type = "recipe",
		name = "pure-iron",		
		hide_from_player_crafting = true,
		energy_required = 1.5,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="iron-ore", amount=1},			
        },		
		result = "pure-iron",
		result_count = 1,
		category = "purification-chamber",
	},
	{
		type = "recipe",
		name = "pure-copper",				
		energy_required = 1.5,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="copper-ore", amount=1},			
        },		
		result = "pure-copper",
		result_count = 1,
		category = "purification-chamber",
	},
	{
		type = "recipe",
		name = "clean-carbonX10",				
		energy_required = 1.90,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="pure-carbon", amount=20},
			{type = "fluid", name ="high-pressure-n-compressed-water" , amount = 1.5},			
        },		
		result = "clean-carbon",
		result_count = 20,
		category = "washing-chamber-X10",
	},
	{
		type = "recipe",
		name = "clean-carbonX100",				
		energy_required = 1.75,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="pure-carbon", amount=200},
			{type = "fluid", name ="high-pressure-n-compressed-water" , amount = 25},			
        },		
		result = "clean-carbon",
		result_count = 200,
		category = "washing-chamber-X100",
	},
	{
		type = "recipe",
		name = "clean-iron",				
		energy_required = 2,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="iron-ore", amount=1},
			{type = "fluid", name ="n-compressed-water" , amount = 20},			
        },		
		result = "clean-iron",
		result_count = 1,
		category = "washer-chamber",
	},
	{
		type = "recipe",
		name = "clean-copper",				
		energy_required = 2,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="copper-ore", amount=1},
			{type = "fluid", name ="n-compressed-water" , amount = 20},			
        },		
		result = "clean-copper",
		result_count = 1,
		category = "washer-chamber",
	},
	{
		type = "recipe",
		name = "clean-carbon-x15",				
		energy_required = 2,
		enabled = "false",
		ingredients = 
        {
            {type="item", name="pure-carbon", amount=20},
			{type = "fluid", name ="high-pressure-n-compressed-water" , amount = 125},			
        },		
		result = "clean-carbon",
		result_count = 30,
		category = "washing-chamber-X10",
	},
	{
		type = "recipe",
		name = "clean-ironx10",				
		energy_required = 1.90,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="iron-ore", amount=10},
			{type = "fluid", name ="high-pressure-n-compressed-water" , amount = 1.5},			
        },		
		result = "clean-iron",
		result_count = 10,
		category = "washing-chamber-X10",
	},
	{
		type = "recipe",
		name = "clean-copperx10",				
		energy_required = 1.90,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="copper-ore", amount=10},
			{type = "fluid", name ="high-pressure-n-compressed-water" , amount = 1.5},			
        },		
		result = "clean-copper",
		result_count = 10,
		category = "washing-chamber-X10",
	},
	
	{
		type = "recipe",
		name = "clean-ironx100",				
		energy_required = 1.75,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="iron-ore", amount=250},
			{type = "fluid", name ="high-pressure-n-compressed-water" , amount = 25},			
        },		
		result = "clean-iron",
		result_count = 225,
		category = "washing-chamber-X100",
	},
	{
		type = "recipe",
		name = "clean-copperx100",				
		energy_required = 1.75,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="copper-ore", amount=250},
			{type = "fluid", name ="high-pressure-n-compressed-water" , amount = 25},			
        },		
		result = "clean-copper",
		result_count = 225,
		category = "washing-chamber-X100",
	},
	
	{
		type = "recipe",
		name = "clean-ironv2",				
		energy_required = 1.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="iron-ore", amount=5},
			{type = "fluid", name ="n-compressed-water" , amount = 50},			
        },		
		result = "clean-iron",
		result_count = 50,
		category = "washer-chamberv2",
	},
	{
		type = "recipe",
		name = "clean-copperv2",				
		energy_required = 1.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="copper-ore", amount=5},
			{type = "fluid", name ="n-compressed-water" , amount = 50},			
        },		
		result = "clean-copper",
		result_count = 50,
		category = "washer-chamberv2",
	},
	------------------------------Fuels------------
	{
		type = "recipe",
		name = "enriched-carbon-light",				
		energy_required = 3.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="clean-carbon", amount=1},
			{type = "fluid", name ="light-oil" , amount = 2.2},			
        },		
		result = "enriched-carbon-light",
		result_count = 1,
		category = "enrichment-chamber",
	},
	{
		type = "recipe",
		name = "enriched-carbon-heavy",				
		energy_required = 3.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="clean-carbon", amount=1},
			{type = "fluid", name ="heavy-oil" , amount = 1.6},			
        },		
		result = "enriched-carbon-heavy",
		result_count = 1,
		category = "enrichment-chamber",
	},
	{
		type = "recipe",
		name = "enriched-carbon-alienol",				
		energy_required = 3.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="clean-carbon", amount=1},
			{type = "fluid", name ="alienol-oil" , amount = 3},			
        },		
		result = "enriched-carbon-alienol",
		result_count = 1,
		category = "enrichment-chamber",
	},
	--[[{
		type = "recipe",
		name = "pure-air",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = 
        {
			--{type = "fluid", name ="water" , amount = 120},			
        },		
		result = "pure-air",
		result_count = 0,
		category = "air-purification",
	},]]
	{
		type = "recipe",
		name = "cryamond",				
		energy_required = 3.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="clean-carbon", amount=4},		
        },		
		result = "cryamond",
		result_count = 3,
		category = "crystalisation",
	},
	{
		type = "recipe",
		name = "cryamond-v2",				
		energy_required = 10.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="pure-carbon", amount=2},		
        },		
		result = "cryamond",
		result_count = 1,
		category = "crystalisation",
	},
	{
		type = "recipe",
		name = "alicane",				
		energy_required = 50.0,
		enabled = "true",
		ingredients = 
        {
		    {type="item", name="n-alicane-seed", amount=10},
			{type = "fluid", name ="water" , amount = 200},			
        },		
		result = "alicane",
		result_count = 100,
		category = "alienplant",
	},
	{
		type = "recipe",
		name = "compress-bagasse",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="bagasse", amount=4},			
        },		
		result = "compress-bagasse",
		result_count = 1,
		category = "purification-chamber",
	},
	{
		type = "recipe",
		name = "enriched-compress-light",				
		energy_required = 3.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="compress-bagasse", amount=1},
			{type = "fluid", name ="light-oil" , amount = 2.2},			
        },		
		result = "enriched-compress-light",
		result_count = 1,
		category = "enrichment-chamber",
	},
	{
		type = "recipe",
		name = "enriched-compress-heavy",				
		energy_required = 3.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="compress-bagasse", amount=1},
			{type = "fluid", name ="heavy-oil" , amount = 1.6},			
        },		
		result = "enriched-compress-heavy",
		result_count = 1,
		category = "enrichment-chamber",
	},
	{
		type = "recipe",
		name = "enriched-compress-alienol",				
		energy_required = 3.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="compress-bagasse", amount=1},
			{type = "fluid", name ="alienol-oil" , amount = 3},			
        },		
		result = "enriched-compress-alienol",
		result_count = 1,
		category = "enrichment-chamber",
	},
	--------------AlienStuffs-------------------
	{
		type = "recipe",
		name = "alien-s-v1",				
		energy_required = 4.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="alicane", amount=10},
			{ type = "item", name = "automation-science-pack" , amount = 32, },			
        },		
		result = "alien-s",
		result_count = 1,
		category = "alien-processing",
	},
	{
		type = "recipe",
		name = "alien-s-v2",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="a-meat-s", amount=1},
			{ type = "item", name = "automation-science-pack" , amount = 1, },			
        },		
		result = "alien-s",
		result_count = 1,
		category = "alien-processing",
	},
	{
		type = "recipe",
		name = "alien-m-v1",				
		energy_required = 4.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="a-meat-s", amount=58},
			{ type = "item", name = "logistic-science-pack" , amount = 32, },			
        },		
		result = "alien-m",
		result_count = 1,
		category = "alien-processing",
	},
	{
		type = "recipe",
		name = "alien-m-v2",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="a-meat-m", amount=1},
			{ type = "item", name = "automation-science-pack" , amount = 1, },			
        },		
		result = "alien-m",
		result_count = 1,
		category = "alien-processing",
	},
	{
		type = "recipe",
		name = "alien-b-v1",				
		energy_required = 4.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="a-meat-m", amount=84},
			{ type = "item", name = "chemical-science-pack" , amount = 32, },			
        },		
		result = "alien-b",
		result_count = 1,
		category = "alien-processing",
	},
	{
		type = "recipe",
		name = "alien-b-v2",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="a-meat-b", amount=1},
			{ type = "item", name = "automation-science-pack" , amount = 1, },			
        },		
		result = "alien-b",
		result_count = 1,
		category = "alien-processing",
	},
	{
		type = "recipe",
		name = "a-meat-s",				
		energy_required = 20.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="alien-s", amount=3},
			{type = "fluid", name ="water" , amount = 30},			
        },		
		result = "a-meat-s",
		result_count = 12,
		category = "farm-alien",
	},
	{
		type = "recipe",
		name = "a-meat-s-v2",				
		energy_required = 20.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="alien-s", amount=3},
			{type="item", name="a-ration", amount=30},
			{type = "fluid", name ="water" , amount = 30},			
        },		
		result = "a-meat-s",
		result_count = 24,
		category = "farm-alien",
	},
	{
		type = "recipe",
		name = "a-meat-m",				
		energy_required = 20.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="alien-m", amount=3},
			{type = "fluid", name ="water" , amount = 30},			
        },		
		result = "a-meat-m",
		result_count = 12,
		category = "farm-alien",
	},
	{
		type = "recipe",
		name = "a-meat-m-v2",				
		energy_required = 20.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="alien-m", amount=3},
			{type="item", name="a-ration", amount=30},
			{type = "fluid", name ="water" , amount = 30},			
        },		
		result = "a-meat-m",
		result_count = 24,
		category = "farm-alien",
	},
	{
		type = "recipe",
		name = "a-meat-b",				
		energy_required = 20.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="alien-b", amount=3},
			{type = "fluid", name ="water" , amount = 30},			
        },		
		result = "a-meat-b",
		result_count = 12,
		category = "farm-alien",
	},
	{
		type = "recipe",
		name = "a-meat-b-v2",				
		energy_required = 20.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="alien-b", amount=3},
			{type="item", name="a-ration", amount=30},
			{type = "fluid", name ="water" , amount = 30},			
        },		
		result = "a-meat-b",
		result_count = 24,
		category = "farm-alien",
	},
	{
		type = "recipe",
		name = "a-ration-v1",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="a-meat-s", amount=3},
			{type = "item", name ="alicane" , amount = 20},	
            {type = "fluid", name ="water" , amount = 20},			
        },		
		result = "a-ration",
		result_count = 30,
		category = "n-mixing",
	},
	{
		type = "recipe",
		name = "a-ration-v2",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="a-meat-m", amount=2},
			{type = "item", name ="alicane" , amount = 20},	
            {type = "fluid", name ="water" , amount = 20},		
        },		
		result = "a-ration",
		result_count = 30,
		category = "n-mixing",
	},
	{
		type = "recipe",
		name = "a-ration-v3",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="a-meat-b", amount=1},
			{type = "item", name ="alicane" , amount = 20},	
            {type = "fluid", name ="water" , amount = 20},			
        },		
		result = "a-ration",
		result_count = 30,
		category = "n-mixing",
	},
	{
		type = "recipe",
		name = "double-compress-bagasse",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="compress-bagasse", amount=5},			
        },		
		result = "double-compress-bagasse",
		result_count = 1,
		category = "purification-chamber",
	},
------------------------------------Ores---------------------------------------
	{
		type = "recipe",
		name = "n-mineral-chunk",				
		energy_required = 4.0,
		enabled = "true",
		ingredients = 
        {
		    {type="item", name="n-mining-tool", amount=1},
			{type = "fluid", name ="n-compressed-water" , amount = 120},
		
		},		
		result = "n-mineral-chunk",
		result_count = 2,
		category = "chunk-miner",
	},
	--[[{
		type = "recipe",
		name = "n-alisidian",				
		energy_required = 6.0,
		enabled = "true",
		ingredients = 
        {
		    {type="item", name="n-mineral-chunk", amount=1},
			{type = "fluid", name ="n-compressed-water" , amount = 30},
		},		
		result = "n-alisidian",
		result_count = 4,
		category = "washer-chamber",
	},
	{
		type = "recipe",
		name = "n-alisidian-brick",				
		energy_required = 5.0,
		enabled = "true",
		ingredients = 
        {
		    {type="item", name="n-alisidian", amount=6},
			{type="item", name="stone-brick", amount=4},
		},		
		result = "n-alisidian-brick",
		result_count = 4,
		category = "advanced-crafting",
	},]]
	{
		type = "recipe",
		name = "copper-ore-v2",				
		energy_required = 6.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="n-mineral-chunk", amount=1},
            {type = "fluid", name ="n-compressed-water" , amount = 30},			
        },		
		result = "copper-ore",
		result_count = 4,
		category = "washer-chamber",
		icon = "__base__/graphics/icons/copper-ore.png",
		icon_size = 32,
	    order = "h", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "iron-ore-v2",				
		energy_required = 6.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="n-mineral-chunk", amount=1},
            {type = "fluid", name ="n-compressed-water" , amount = 30},			
        },		
		result = "iron-ore",
		result_count = 4,
		category = "washer-chamber",
		icon = "__base__/graphics/icons/iron-ore.png",
		icon_size = 32,
	    order = "h", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "stone-v2",				
		energy_required = 6.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="n-mineral-chunk", amount=1},
            {type = "fluid", name ="n-compressed-water" , amount = 30},			
        },		
		result = "stone",
		result_count = 4,
		category = "washer-chamber",
		icon = "__base__/graphics/icons/stone.png",
		icon_size = 32,
	    order = "h", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "coal-v2",				
		energy_required = 6.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="n-mineral-chunk", amount=1},
            {type = "fluid", name ="n-compressed-water" , amount = 30},			
        },		
		result = "coal",
		result_count = 4,
		category = "washer-chamber",
		icon = "__base__/graphics/icons/coal.png",
		icon_size = 32,
	    order = "h", group = "NPUtils", subgroup = "stuff",
	},
	{
		type = "recipe",
		name = "uranium-v2",				
		energy_required = 10.0,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="n-mineral-chunk", amount=1},
            {type = "fluid", name ="n-compressed-water" , amount = 30},			
        },		
		result = "uranium-ore",
		result_count = 4,
		category = "washer-chamber",
		icon = "__base__/graphics/icons/uranium-ore.png",
		icon_size = 32,
	    order = "h", group = "NPUtils", subgroup = "stuff",
	},
	---------------------------Fluids------------------------------------
	{
		type = "recipe",
		name = "steamv1",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="water" , amount = 100},
            {type = "fluid", name ="alienol-oil" , amount = 9},				
        },		
		results = {
		{type="fluid", name="steam", amount=200, temperature=300}
	  },
		category = "oil-burner",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "a", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "steamv5",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="water" , amount = 125},
            {type = "fluid", name ="light-oil" , amount = 12},				
        },		
		results = {
		{type="fluid", name="steam", amount=275, temperature=165}
	  },
		category = "oil-burner",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "b", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "steamv6",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="water" , amount = 125},
            {type = "fluid", name ="heavy-oil" , amount = 12},				
        },		
		results = {
		{type="fluid", name="steam", amount=275, temperature=165},
	  },
		category = "oil-burner",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "c", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "steamv2x10",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 10},
            {type = "fluid", name ="high-pressure-light-oil" , amount = 10},				
        },		
		results = {
		{type="fluid", name="high-pressure-steam", amount=21, temperature=300}
	  },
		category = "oil-burnerx10",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "b", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "steamv3x10",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 10},
            {type = "fluid", name ="high-pressure-heavy-oil" , amount = 10},				
        },		
		results = {
		{type="fluid", name="high-pressure-steam", amount=21, temperature=300},
	  },
		category = "oil-burnerx10",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "c", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "steamv4x10",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 15},
            {type = "fluid", name ="high-pressure-light-oil" , amount = 11},				
        },		
		results = {
		{type="fluid", name="high-pressure-steam", amount=30, temperature=165}
	  },
		category = "oil-burnerx10",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "b", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "steamv5x10",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 15},
            {type = "fluid", name ="high-pressure-heavy-oil" , amount = 11},				
        },		
		results = {
		{type="fluid", name="high-pressure-steam", amount=30, temperature=165},
	  },
		category = "oil-burnerx10",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "c", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "steamv6x10",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 15},
            {type = "fluid", name ="light-oil" , amount = 105},				
        },		
		results = {
		{type="fluid", name="high-pressure-steam", amount=30, temperature=165}
	  },
		category = "oil-burnerx10",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "b", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "steamv7x10",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 15},
            {type = "fluid", name ="heavy-oil" , amount = 105},				
        },		
		results = {
		{type="fluid", name="high-pressure-steam", amount=30, temperature=165},
	  },
		category = "oil-burnerx10",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "c", group = "NPUtils-components", subgroup = "n-liq",
	},

	{
		type = "recipe",
		name = "steamv2x100",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 100},
            {type = "fluid", name ="high-pressure-light-oil" , amount = 200},				
        },		
		results = {
		{type="fluid", name="high-pressure-steam", amount=400, temperature=300}
	    },
		category = "oil-burnerx100",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	    order = "b", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "steamv3x100",				
		energy_required = 1,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type = "fluid", name ="high-pressure-water" , amount = 100},
            {type = "fluid", name ="high-pressure-heavy-oil" , amount = 200},				
        },		
		results = {
		{type="fluid", name="high-pressure-steam", amount=400, temperature=300},
	  },
		category = "oil-burnerx100",
		icon = "__NPUtils__/graphics/icon/steam-icon.png",
		icon_size = 32,
	  order = "c", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "molten-copper",				
		energy_required = .95,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-copper", amount=1},	
        },		
		results = {
		{type="fluid", name="molten-copper", amount=30}
	  },
		category = "forge-chamber",
		icon = "__NPUtils__/graphics/icon/molten-copper-icon.png",
		icon_size = 32,
	  order = "f", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "molten-iron",				
		energy_required = .95,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-iron", amount=1},		
        },		
		results = {
		{type="fluid", name="molten-iron", amount=30}
	  },
		category = "forge-chamber",
		icon = "__NPUtils__/graphics/icon/molten-iron-icon.png",
		icon_size = 32,
	  order = "e", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "molten-copperx10",				
		energy_required = .90,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-copper", amount=10},	
        },		
		results = {
		{type="fluid", name="molten-copper", amount=300}
	  },
		category = "heating-chamber-X10",
		icon = "__NPUtils__/graphics/icon/molten-copper-icon.png",
		icon_size = 32,
	  order = "f", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "molten-ironx10",				
		energy_required = .90,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-iron", amount=10},		
        },		
		results = {
		{type="fluid", name="molten-iron", amount=300}
	  },
		category = "heating-chamber-X10",
		icon = "__NPUtils__/graphics/icon/molten-iron-icon.png",
		icon_size = 32,
	  order = "e", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "molten-copperx100",				
		energy_required = .75,
		enabled = "true",
		ingredients = 
        {
            {type="item", name="clean-copper", amount=225},	
        },		
		results = {
		{type="fluid", name="high-pressure-molten-copper", amount=80}
	  },
		category = "heating-chamber-X100",
		icon = "__NPUtils__/graphics/icon/molten-copper-icon.png",
		icon_size = 32,
	  order = "f", group = "NPUtils-components", subgroup = "n-liq",
	},
	{
		type = "recipe",
		name = "molten-ironx100",				
		energy_required = .75,
		enabled = "true",
		hide_from_player_crafting = true,
		ingredients = 
        {
            {type="item", name="clean-iron", amount=225},		
        },		
		results = {
		{type="fluid", name="high-pressure-molten-iron", amount=80}
	  },
		category = "heating-chamber-X100",
		icon = "__NPUtils__/graphics/icon/molten-iron-icon.png",
		icon_size = 32,
	  order = "e", group = "NPUtils-components", subgroup = "n-liq",
	},
}
)

end
