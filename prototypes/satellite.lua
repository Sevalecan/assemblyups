data:extend(
{
    --item
    {
        type = "item",
        name = "satellitev2",
        icon = "__base__/graphics/icons/satellite.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "m[satellite]",
        stack_size = 1,
        rocket_launch_product = {"space-science-packv2", 1}
	},
    {
        type = "item",
        name = "satellitev3",
        icon = "__base__/graphics/icons/satellite.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "m[satellite]",
        stack_size = 1,
        rocket_launch_product = {"space-science-packv3", 1}
	},
    {
        type = "item",
        name = "satellitev4",
        icon = "__base__/graphics/icons/satellite.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "m[satellite]",
        stack_size = 1,
        rocket_launch_product = {"space-science-packv4", 1}
	},
    {
        type = "item",
        name = "satellitev5",
        icon = "__base__/graphics/icons/satellite.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "m[satellite]",
        stack_size = 1,
        rocket_launch_product = {"space-science-packv5", 1}
	},
    {
        type = "tool",
        name = "space-science-packv2",
        icon = "__base__/graphics/icons/space-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "g[space-science-pack]",
        stack_size = 10000,
        durability = 1,
        rocket_launch_product = {"raw-fish", 1},
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
    {
        type = "tool",
        name = "space-science-packv3",
        icon = "__base__/graphics/icons/space-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "g[space-science-pack]",
        stack_size = 10000,
        durability = 1,
        rocket_launch_product = {"raw-fish", 1},
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
    {
        type = "tool",
        name = "space-science-packv4",
        icon = "__base__/graphics/icons/space-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "g[space-science-pack]",
        stack_size = 10000,
        durability = 1,
        rocket_launch_product = {"raw-fish", 1},
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
    {
        type = "tool",
        name = "space-science-packv5",
        icon = "__base__/graphics/icons/space-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "g[space-science-pack]",
        stack_size = 10000,
        durability = 1,
        rocket_launch_product = {"raw-fish", 1},
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },

    --entity



    --recipe

    {
         
        type = "recipe",
        name = "satellitev2",
        energy_required = 5,
        enabled = true,
        category = "crafting",
        ingredients =
            {
                {"low-density-structure", 3200},
                {"solar-panel", 3200},
                {"accumulator", 3200},
                {"radar", 160},
                {"processing-unit", 3200},
                {"rocket-fuel", 1600}
            },
        result= "satellitev2",
        requester_paste_multiplier = 1
	},
    {
         
        type = "recipe",
        name = "satellitev3",
        energy_required = 5,
        enabled = true,
        category = "crafting",
        ingredients =
            {
                {"satellitev2", 32},
            },
        result= "satellitev3",
        requester_paste_multiplier = 1
	},
    {
         
        type = "recipe",
        name = "satellitev4",
        energy_required = 5,
        enabled = true,
        category = "crafting",
        ingredients =
            {
                {"satellitev3", 32},
            },
        result= "satellitev4",
        requester_paste_multiplier = 1
	},
    {
         
        type = "recipe",
        name = "satellitev5",
        energy_required = 5,
        enabled = true,
        category = "crafting",
        ingredients =
            {
                {"satellitev4", 32},
            },
        result= "satellitev5",
        requester_paste_multiplier = 1
	},
    {
        type = "recipe",
        name = "space-science-pack",
        enabled = true,
        energy_required = 21,
        ingredients =
        {
            {"space-science-packv2", 1},
        },
        result_count = 20000,
        result = "space-science-pack"
    },
    {
        type = "recipe",
        name = "space-science-packv2",
        enabled = true,
        energy_required = 21,
        ingredients =
        {
            {"space-science-packv3", 1},
        },
        result_count = 25,
        result = "space-science-packv2"
    },
    {
        type = "recipe",
        name = "space-science-packv3",
        enabled = true,
        energy_required = 21,
        ingredients =
        {
            {"space-science-packv4", 1},
        },
        result_count = 25,
        result = "space-science-packv3"
    },
    {
        type = "recipe",
        name = "space-science-packv4",
        enabled = true,
        energy_required = 21,
        ingredients =
        {
            {"space-science-packv5", 1},
        },
        result_count = 25,
        result = "space-science-packv4"
    },




}
)



