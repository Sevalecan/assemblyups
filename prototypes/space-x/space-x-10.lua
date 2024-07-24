if mods["space-exploration"] then
data:extend ({
  {
    type = "recipe",
    name = "thermocoolingx10",
    category = "space-radiatorx10",
    hide_from_player_crafting = true,
    enabled = true,
    energy_required = 200,
    ingredients =
    {
      --{type="fluid", name="high-pressure-crude-oil", amount=20,},-- fluidbox_index = 2},
      {type="fluid", name="high-pressure-se-space-coolant-hot", amount = 100,fluidbox_index = 2},
      --{type="fluid", name="light-oil", amount=200,fluidbox_index = 4},
    },
    results=
    {
      {type="fluid", name ='high-pressure-se-space-coolant-warm', amount = 99,fluidbox_index = 5}, --fluidbox_index = 4}
    },
    icon = "__assemblyUPS__/graphics/icons/polyethylene.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-a[basic-oil-processing]",
    main_product = ""
  },
  {
    type = "fluid",
    name = "se-high-pressure-space-water",
    default_temperature = 50,

    heat_capacity = "0.1KJ",
    base_color = {r=0.3, g=0.1, b=0.3},
    flow_color = {r=0.8, g=0.8, b=0.8},
    max_temperature = 100,
    icon = "__assemblyUPS__/graphics/icons/polyethylene.png",
    icon_size = 128, icon_mipmaps = 4,
    order = "a[fluid]-e[petroleum-gas]"
  },
  






})
end