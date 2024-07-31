data:extend
(
{
  {
    type = "item",
    name = "industrial-strenght-duct-tape",
    icon = "__assemblyUPS__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 1000
  },
  {
    type = "item",
    name = "se-observation-frame-12",
    icon = "__assemblyUPS__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 1000
  },
  {
    type = "item",
    name = "se-observation-frame-10",
    icon = "__assemblyUPS__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 1000
  },
  {
    type = "item",
    name = "se-observation-frame-8",
    icon = "__assemblyUPS__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 1000
  },
  {
    type = "item",
    name = "se-observation-frame-4",
    icon = "__assemblyUPS__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 1000
  },
  {
    type = "item",
    name = "se-observation-frame-6",
    icon = "__assemblyUPS__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 1000
  },
  {
    type = "item",
    name = "se-observation-frame-3",
    icon = "__assemblyUPS__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 1000
  },
  {
    type = "item",
    name = "observation-frame-blank",
    icon = "__assemblyUPS__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 1000
  },
  {
    type = "item",
    name = "observation-frame-visible",
    icon = "__assemblyUPS__/graphics/icons/industrial-strenght-duct-tape.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "g[sulfur]",
    stack_size = 1000
  },
  {
    type = "recipe",
    name = "industrial-strenght-duct-tape",
    enabled = false,
    hide_from_player_crafting = true,
    energy_required = 25,
    category = "chemistry",
    requester_paste_multiplier = 10,
    ingredients =
    {
      {type="fluid", name="polyethylene", amount=100, fluidbox_index = 2}
    },
    result_count = 10,
    result = "industrial-strenght-duct-tape"
  },
  {
    type = "recipe",
    name = "industrial-strenght-duct-tape-X10",
    enabled = false,
    hide_from_player_crafting = true,
    energy_required = 30,
    category = "chemistry-10",
    requester_paste_multiplier = 10,
    ingredients =
    {
      {type="fluid", name="polyethylene", amount=1000, fluidbox_index = 2}
    },
    result_count = 100,
    result = "industrial-strenght-duct-tape"
  },
  --
  {
    type = "item",
    name = "pmodule",
    icon = "__assemblyUPS__/graphics/icons/P-Module.png",
    icon_size = 64, icon_mipmaps = 4,
    group = "intermediate-products",
    subgroup = "intermediate-product",
    order = "g[sulfur]",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "pmodule",
    enabled = true,
    hide_from_player_crafting = true,
    energy_required = 50,
    category = "P-module",
    requester_paste_multiplier = 10,
    group = "intermediate-products",
    subgroup = "intermediate-product",
    order = "p[uranium-processing]",
    ingredients =
    {
      {type="fluid", name="polyethylene", amount=1000},
      {"productivity-module-3", 1},
      {"industrial-strenght-duct-tape", 10},
    },
    results = 
    {
        {
            name = "pmodule",
            probability = 0.50,
            amount = 1,  
		},
	},
    
  },

}
)