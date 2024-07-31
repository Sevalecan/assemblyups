local function sprite(name)
    return '__248k__/ressources/groups/'..name
end
 data:extend({
	 {
        name = 'machine_group',
        type = 'item-group',
        icon = "__assemblyUPS__/graphics/icons/production-machine-image.png",
        icon_size = 512,
        inventory_order = "p",
        order = "p",
    },
    {
        name = 'machine_c',
        type = 'item-subgroup',
        group = 'machine_group',
        order = 'c',
    },
    {
        name = 'space-cooling',
        type = 'item-subgroup',
        group = 'machine_group',
        order = 's',
    },
    {
        name = 'space-fluid-recipes',
        type = 'item-subgroup',
        group = 'machine_group',
        order = 's',
    },

    {
        name = 'space-components',
        type = 'item-subgroup',
        group = 'machine_group',
        order = 's',
    },
    {
        name = 'space-bioculture',
        type = 'item-subgroup',
        group = 'machine_group',
        order = 's',
    },




})
