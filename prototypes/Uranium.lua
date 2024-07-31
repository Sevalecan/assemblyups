data:extend
(
{
  {
    type = "recipe",
    name = "uranium-processing-X10",
    energy_required = 15,
    enabled = false,
    hide_from_player_crafting = true,
    category = "centrifuging",
    ingredients = {{"uranium-ore", 100}},
    icon = "__base__/graphics/icons/uranium-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "machine_c",
    order = "c",
    results =
    {
      {
        name = "uranium-235",
        probability = 0.007,
        amount = 10
      },
      {
        name = "uranium-238",
        probability = 0.993,
        amount = 10
      }
    }
  },
  {
    type = "recipe",
    name = "kovarex-enrichment-process-X",
    energy_required = 60,
    enabled = true,
    hide_from_player_crafting = true,
    category = "centrifuging",
    ingredients = {{"uranium-235", 40}, {"uranium-238", 5}},
    icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-c[kovarex-enrichment-process]",
    main_product = "",
    results = {{"uranium-235", 42}, {"uranium-238", 2}},
    allow_decomposition = false
  },
  {
    type = "recipe",
    name = "kovarex-enrichment-process-X10",
    energy_required = 60,
    enabled = false,
    hide_from_player_crafting = true,
    category = "centrifuging",
    ingredients = {{"uranium-235", 400}, {"uranium-238", 50}},
    icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-c[kovarex-enrichment-process]",
    main_product = "",
    results = {{"uranium-235", 420}, {"uranium-238", 20}},
    allow_decomposition = false
  },
  {
    type = "recipe",
    name = "nuclear-fuel-X10",
    energy_required = 90,
    enabled = false,
    hide_from_player_crafting = true,
    category = "centrifuging",
    ingredients = {{"uranium-235", 10}, {"rocket-fuel", 10}},
    icon = "__base__/graphics/icons/nuclear-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    result = "nuclear-fuel",
    result_count = 10,
  },
  {
    type = "recipe",
    name = "nuclear-fuel-reprocessing-X10",
    energy_required = 60,
    enabled = false,
    hide_from_player_crafting = true,
    category = "centrifuging",
    ingredients = {{"used-up-uranium-fuel-cell", 50}},
    icon = "__base__/graphics/icons/nuclear-fuel-reprocessing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-b[nuclear-fuel-reprocessing]",
    main_product = "",
    results = {{"uranium-238", 30}},
    allow_decomposition = false
  },
  {
    type = "recipe",
    name = "uranium-fuel-cell-X10",
    energy_required = 10,
    enabled = false,
    hide_from_player_crafting = true,
    category = "centrifuging",
    ingredients =
    {
      {"iron-plate", 100},
      {"uranium-235", 10},
      {"uranium-238", 190}
    },
    result = "uranium-fuel-cell",
    result_count = 100
  },

}
)