
--[[
function productivitymodulelimitation()
return 
      {
        "n-special-process"
      }
end  ]]

data:extend(
{

  --Recipe
    {
    type = "recipe",
    name = "n-basic-heavy",
    category = "n-oil-process",
    enabled = false,
    hide_from_player_crafting = true,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=100}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=70},
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-basic-heavy-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "aaa"
  },
  {
    type = "recipe",
    name = "n-basic-light",
    category = "screwyou",
    enabled = "false",
    hide_from_player_crafting = true,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=100}
    },
    results=
    {
      {type="fluid", name="light-oil", amount=70},
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-basic-light-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "aaaa"
  },
  {
    type = "recipe",
    name = "n-basic-petroleum",
    category = "n-oil-process",
    enabled = "false",
    hide_from_player_crafting = true,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="high-pressure-crude-oil", amount=10}
    },
    results=
    {
      {type="fluid", name="high-pressure-petroleum-gas", amount=7},
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-basic-petroleum-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "aaaaa"
  },
 -----------------------------------ADV---------------------------
 {
    type = "recipe",
    name = "n-advanced-heavy",
    category = "n-oil-process",
    enabled = "false",
    hide_from_player_crafting = true,
    energy_required = 5,
    ingredients =
    {
	  {type="fluid", name="high-pressure-water", amount=5},
      {type="fluid", name="high-pressure-crude-oil", amount=10}
	
    },
    results=
    {
      {type="fluid", name="high-pressure-heavy-oil", amount=9},
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-advanced-heavy-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "abb"
  },
  {
    type = "recipe",
    name = "n-advanced-light",
    category = "n-oil-process",
    enabled = "false",
    hide_from_player_crafting = true,
    energy_required = 5,
    ingredients =
    {
	  {type="fluid", name="high-pressure-water", amount=5},
      {type="fluid", name="high-pressure-crude-oil", amount=10}
	
    },
    results=
    {
      {type="fluid", name="high-pressure-light-oil", amount=9},
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-advanced-light-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "abbb"
  },
  {
    type = "recipe",
    name = "n-advanced-petroleum",
    category = "n-oil-process",
    enabled = "false",
    hide_from_player_crafting = true,
    energy_required = 5,
    ingredients =
    {
	  {type="fluid", name="high-pressure-water", amount=5},
      {type="fluid", name="high-pressure-crude-oil", amount=10}
	
    },
    results=
    {
      {type="fluid", name="high-pressure-petroleum-gas", amount=9},
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-advanced-petroleum-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "abbbb"
  },
 ------------------------SPECIAL-----------------------------------
 {
    type = "recipe",
    name = "n-special-heavy-X100",
    category = "Fluids-X100",
    enabled = false,
    hide_from_player_crafting = true,
    energy_required = 4,
    ingredients =
    {
	  {type="fluid", name="high-pressure-steam", amount=25},
      {type="fluid", name="high-pressure-crude-oil", amount=100}
	
    },
    results=
    {
      {type="fluid", name="high-pressure-heavy-oil", amount=120},
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-special-heavy-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "add",
	allow_decomposition = false
  },
  {
    type = "recipe",
    name = "n-special-light-X100",
    category = "Fluids-X100",
    enabled = false,
    hide_from_player_crafting = true,
    energy_required = 4,
    ingredients =
    {
	  {type="fluid", name="high-pressure-steam", amount=25},
      {type="fluid", name="high-pressure-crude-oil", amount=100}
	
    },
    results=
    {
      {type="fluid", name="high-pressure-light-oil", amount=120},
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-special-light-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "addd",
	allow_decomposition = false
  },
  {
    type = "recipe",
    name = "n-special-petroleum-X100",
    category = "Fluids-X100",
    enabled = false,
    hide_from_player_crafting = true,
    energy_required = 4,
    ingredients =
    {
	  {type="fluid", name="high-pressure-steam", amount=25},
      {type="fluid", name="high-pressure-crude-oil", amount=100}
	
    },
    results=
    {
      {type="fluid", name="high-pressure-petroleum-gas", amount=120},
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-special-petroleum-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "adddd",
	allow_decomposition = false
  },
  {
    type = "recipe",
    name = "n-special-process-X100",
    category = "Fluids-X100",
    enabled = false,
    hide_from_player_crafting = true,
    energy_required = 4,
    ingredients =
    {
	  {type="fluid", name="high-pressure-steam", amount=25},
      {type="fluid", name="high-pressure-crude-oil", amount=100}
	
    },
    results=
    {
      {type="fluid", name="high-pressure-heavy-oil", amount=25},
      {type="fluid", name="high-pressure-light-oil", amount=60},
      {type="fluid", name="high-pressure-petroleum-gas", amount=75}
    },
    icon = "__assemblyUPS__/graphics/oil-recipes/n-special-process-icon.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "ad",
	allow_decomposition = false
  },
}
)


