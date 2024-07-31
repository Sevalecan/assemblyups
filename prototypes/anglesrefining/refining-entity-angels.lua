if mods["angelsrefining"] then
data:extend(
  {
    --ORE CRUSHER
    {
      type = "recipe",
      name = "burner-ore-crusherx10",
      energy_required = 5,
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          --{type = "item", name = "crusher-0", amount = 10},
          {type = "item", name = "stone-furnace", amount = 10},
          {type = "item", name = "iron-gear-wheel", amount = 20}
        },
        result = "burner-ore-crusherx10"
      },
      expensive = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          --{type = "item", name = "crusher-0", amount = 10},
          {type = "item", name = "stone-furnace", amount = 15},
          {type = "item", name = "iron-gear-wheel", amount = 50}
        },
        result = "burner-ore-crusherx10"
      }
    },
    {
      type = "recipe",
      name = "ore-crusherx10",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "burner-ore-crusherx10", amount = 1},
          {type = "item", name = "iron-plate", amount = 100},
          {type = "item", name = "stone-brick", amount = 100},
          {type = "item", name = "iron-gear-wheel", amount = 75}
        },
        result = "ore-crusherx10"
      },
    },
    {
      type = "recipe",
      name = "ore-crusher-2x10",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "ore-crusherx10", amount = 1},
          {type = "item", name = "steel-plate", amount = 100},
          {type = "item", name = "clay-brick", amount = 100},
          {type = "item", name = "steel-gear-wheel", amount = 75}
        },
        result = "ore-crusher-2x10"
      },
    },
    {
      type = "recipe",
      name = "ore-crusher-3x10",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "ore-crusher-2x10", amount = 1},
          {type = "item", name = "steel-plate", amount = 100},
          {type = "item", name = "clay-brick", amount = 100},
          {type = "item", name = "steel-gear-wheel", amount = 75},
		  {type = "item", name = "industrial-strenght-duct-tape", amount = 100},
        },
        result = "ore-crusher-3x10"
      },
    },
    --ORE FLOATATION CELL
    {
      type = "recipe",
      name = "ore-floatation-cellx10",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "ore-floatation-cell", amount = 10},
          {type = "item", name = "steel-plate", amount = 4},
          {type = "item", name = "electronic-circuit", amount = 8},
          {type = "item", name = "pipe", amount = 4},
          {type = "item", name = "clay-brick", amount = 8}
        },
        result = "ore-floatation-cellx10"
      },
    },
    {
      type = "recipe",
      name = "ore-floatation-cell-2x10",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "ore-floatation-cellx10", amount = 1},
          {type = "item", name = "steel-plate", amount = 4},
          {type = "item", name = "advanced-circuit", amount = 8},
          {type = "item", name = "steel-pipe", amount = 4},
          {type = "item", name = "clay-brick", amount = 8}
        },
        result = "ore-floatation-cell-2x10"
      },
    },
    {
      type = "recipe",
      name = "ore-floatation-cell-3x10",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "ore-floatation-cell-2x10", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 4},
          {type = "item", name = "advanced-circuit", amount = 8},
          {type = "item", name = "steel-pipe", amount = 4},
          {type = "item", name = "concrete-brick", amount = 8}
        },
        result = "ore-floatation-cell-3x10"
      },
    },
    --ORE LEACHING PLANT
    {
      type = "recipe",
      name = "ore-leaching-plant",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "leach-1", amount = 1},
          {type = "item", name = "steel-plate", amount = 4},
          {type = "item", name = "advanced-circuit", amount = 8},
          {type = "item", name = "steel-pipe", amount = 4},
          {type = "item", name = "clay-brick", amount = 8}
        },
        result = "ore-leaching-plant"
      },
    },
    {
      type = "recipe",
      name = "ore-leaching-plant-2",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "leach-2", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 4},
          {type = "item", name = "advanced-circuit", amount = 8},
          {type = "item", name = "steel-pipe", amount = 4},
          {type = "item", name = "concrete-brick", amount = 8}
        },
        result = "ore-leaching-plant-2"
      },
    },
    {
      type = "recipe",
      name = "ore-leaching-plant-3",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "leach-3", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 4},
          {type = "item", name = "t5-circuit", amount = 8},
          {type = "item", name = "titanium-pipe", amount = 4},
          {type = "item", name = "reinforced-concrete-brick", amount = 8}
        },
        result = "ore-leaching-plant-3"
      },
    },
    --ORE REFINERY
    {
      type = "recipe",
      name = "ore-refinery",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "oreref-1", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 12},
          {type = "item", name = "advanced-circuit", amount = 12},
          {type = "item", name = "concrete-brick", amount = 20}
        },
        result = "ore-refinery"
      },
    },
    {
      type = "recipe",
      name = "ore-refinery-2",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "oreref-2", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 12},
          {type = "item", name = "t5-circuit", amount = 12},
          {type = "item", name = "reinforced-concrete-brick", amount = 20}
        },
        result = "ore-refinery-2"
      },
    },
    --ORE SORTING FACILITY
    {
      type = "recipe",
      name = "ore-sorting-facilityx10",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "ore-sorting-facility", amount = 10},
          {type = "item", name = "iron-plate", amount = 350},
          {type = "item", name = "electronic-circuit", amount = 120},
          {type = "item", name = "stone-brick", amount = 600},
          {type = "item", name = "iron-gear-wheel", amount = 200}
        },
        result = "ore-sorting-facilityx10"
      },
    },
    {
      type = "recipe",
      name = "ore-sorting-facility-2x10",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "ore-sorting-facilityx10", amount = 5},
          {type = "item", name = "steel-plate", amount = 350},
          {type = "item", name = "electronic-circuit", amount = 120},
          {type = "item", name = "clay-brick", amount = 600},
          {type = "item", name = "iron-gear-wheel", amount = 200}
        },
        result = "ore-sorting-facility-2x10"
      },
    },
    {
      type = "recipe",
      name = "ore-sorting-facility-3x10",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "ore-sorting-facility-2x10", amount = 5},
          {type = "item", name = "steel-plate", amount = 350},
          {type = "item", name = "advanced-circuit", amount = 120},
          {type = "item", name = "clay-brick", amount = 600},
          {type = "item", name = "steel-gear-wheel", amount = 200}
        },
        result = "ore-sorting-facility-3x10"
      },
    },
    {
      type = "recipe",
      name = "ore-sorting-facility-4x10",
      normal = {
        energy_required = 5,
        enabled = true,
        ingredients = {
          {type = "item", name = "ore-sorting-facility-4", amount = 10},
          {type = "item", name = "aluminium-plate", amount = 350},
          {type = "item", name = "processing-unit", amount = 150},
          {type = "item", name = "concrete-brick", amount = 600},
          {type = "item", name = "steel-gear-wheel", amount = 200},
		  {type = "item", name = "industrial-strenght-duct-tape", amount = 250},
        },
        result = "ore-sorting-facility-4x10"
      },

    },
    --FILTRATION UNIT
    {
      type = "recipe",
      name = "filtration-unit",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "filter-1", amount = 1},
          {type = "item", name = "steel-plate", amount = 2},
          {type = "item", name = "electronic-circuit", amount = 5},
          {type = "item", name = "pipe", amount = 8},
          {type = "item", name = "clay-brick", amount = 5}
        },
        result = "filtration-unit"
      },

    },
    {
      type = "recipe",
      name = "filtration-unit-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "filter-2", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 2},
          {type = "item", name = "processing-unit", amount = 5},
          {type = "item", name = "steel-pipe", amount = 8},
          {type = "item", name = "concrete-brick", amount = 5}
        },
        result = "filtration-unit-2"
      },

    },
    --CRYSTALLIZER
    {
      type = "recipe",
      name = "crystallizer",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "cryst-1", amount = 1},
          {type = "item", name = "steel-plate", amount = 10},
          {type = "item", name = "electronic-circuit", amount = 5},
          {type = "item", name = "pipe", amount = 5},
          {type = "item", name = "clay-brick", amount = 10}
        },
        result = "crystallizer"
      },

    },
    {
      type = "recipe",
      name = "crystallizer-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "cryst-2", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 10},
          {type = "item", name = "processing-unit", amount = 5},
          {type = "item", name = "steel-pipe", amount = 5},
          {type = "item", name = "concrete-brick", amount = 10}
        },
        result = "crystallizer-2"
      },
    },
    --LIQUIFIER
    {
      type = "recipe",
      name = "liquifier",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "liqui-1", amount = 1},
          {type = "item", name = "iron-plate", amount = 2},
          {type = "item", name = "electronic-circuit", amount = 2},
          {type = "item", name = "pipe", amount = 2},
          {type = "item", name = "stone-brick", amount = 2}
        },
        result = "liquifier"
      },
      expensive = {
        energy_required = 5 ,
        enabled = false,
        ingredients = {
          {type = "item", name = "liqui-1", amount = 1},
          {type = "item", name = "iron-plate", amount = 2},
          {type = "item", name = "electronic-circuit", amount = 2 },
          {type = "item", name = "pipe", amount = 2 },
          {type = "item", name = "stone-brick", amount = 2}
        },
        result = "liquifier"
      },
      result = "liquifier"
    },
    {
      type = "recipe",
      name = "liquifier-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "liqui-2", amount = 1},
          {type = "item", name = "steel-plate", amount = 2},
          {type = "item", name = "electronic-circuit", amount = 2},
          {type = "item", name = "pipe", amount = 2},
          {type = "item", name = "clay-brick", amount = 2}
        },
        result = "liquifier-2"
      },
    },
    {
      type = "recipe",
      name = "liquifier-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "liqui-3", amount = 1},
          {type = "item", name = "steel-plate", amount = 2},
          {type = "item", name = "advanced-circuit", amount = 2},
          {type = "item", name = "steel-pipe", amount = 2},
          {type = "item", name = "clay-brick", amount = 2}
        },
        result = "liquifier-3"
      },
    },
    {
      type = "recipe",
      name = "liquifier-4",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "liqui-4", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 2},
          {type = "item", name = "processing-unit", amount = 2},
          {type = "item", name = "steel-pipe", amount = 2},
          {type = "item", name = "concrete-brick", amount = 2}
        },
        result = "liquifier-4"
      },

    },
    --THERMAL EXTRACTOR
    {
      type = "recipe",
      name = "thermal-bore",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "thermal-1", amount = 1},
          {type = "item", name = "steel-plate", amount = 6},
          {type = "item", name = "electronic-circuit", amount = 4},
          {type = "item", name = "pipe", amount = 4},
          {type = "item", name = "clay-brick", amount = 4},
          {type = "item", name = "iron-gear-wheel", amount = 4}
        },
        result = "thermal-bore"
      },
    },
    {
      type = "recipe",
      name = "thermal-extractor",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "thermal-2", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 6},
          {type = "item", name = "processing-unit", amount = 4},
          {type = "item", name = "steel-pipe", amount = 4},
          {type = "item", name = "concrete-brick", amount = 4},
          {type = "item", name = "steel-gear-wheel", amount = 4}
        },
        result = "thermal-extractor"
      },
    },
    --HYDRO PLANT
    {
      type = "recipe",
      name = "hydro-plant",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "iron-plate", amount = 4},
          {type = "item", name = "electronic-circuit", amount = 12},
          {type = "item", name = "pipe", amount = 16},
          {type = "item", name = "stone-brick", amount = 12}
        },
        result = "hydro-plant"
      },
    },
    {
      type = "recipe",
      name = "hydro-plant-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "treatment-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 4},
          {type = "item", name = "electronic-circuit", amount = 12},
          {type = "item", name = "pipe", amount = 16},
          {type = "item", name = "stone-brick", amount = 12}
        },
        result = "hydro-plant-2"
      },
    },
    {
      type = "recipe",
      name = "hydro-plant-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "treatment-2", amount = 1},
          {type = "item", name = "steel-plate", amount = 4},
          {type = "item", name = "advanced-circuit", amount = 12},
          {type = "item", name = "steel-pipe", amount = 16},
          {type = "item", name = "clay-brick", amount = 12}
        },
        result = "hydro-plant-3"
      },
    },
    --SALINATION PLANT
    {
      type = "recipe",
      name = "salination-plant",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "salination-1", amount = 1},
          {type = "item", name = "steel-plate", amount = 14},
          {type = "item", name = "advanced-circuit", amount = 12},
          {type = "item", name = "steel-pipe", amount = 8},
          {type = "item", name = "clay-brick", amount = 15}
        },
        result = "salination-plant"
      },
    },
    {
      type = "recipe",
      name = "salination-plant-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "salination-2", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 14},
          {type = "item", name = "processing-unit", amount = 12},
          {type = "item", name = "steel-pipe", amount = 8},
          {type = "item", name = "concrete-brick", amount = 15}
        },
        result = "salination-plant-2"
      },
    },
    --WASHING PLANT
    {
      type = "recipe",
      name = "washing-plant",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "wash-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 4},
          {type = "item", name = "electronic-circuit", amount = 4},
          {type = "item", name = "pipe", amount = 9},
          {type = "item", name = "stone-brick", amount = 5}
        },
        result = "washing-plant"
      },
    },
    {
      type = "recipe",
      name = "washing-plant-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "wash-2", amount = 1},
          {type = "item", name = "steel-plate", amount = 4},
          {type = "item", name = "electronic-circuit", amount = 4},
          {type = "item", name = "pipe", amount = 9},
          {type = "item", name = "clay-brick", amount = 5}
        },
        result = "washing-plant-2"
      },
    },
    --SEAFLOOR PUMP
    {
      type = "recipe",
      name = "seafloor-pump",
      normal = {
        energy_required = 2,
        enabled = false,
        ingredients = {
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "electronic-circuit", amount = 2},
          {type = "item", name = "pipe", amount = 2}
        },
        result = "seafloor-pump"
      },
    },
    --LAND PUMP
    {
      type = "recipe",
      name = "ground-water-pump",
      normal = {
        energy_required = 2,
        enabled = false,
        ingredients = {
          {type = "item", name = "stone-brick", amount = 1},
          {type = "item", name = "electronic-circuit", amount = 2},
          {type = "item", name = "pipe", amount = 2}
        },
        result = "ground-water-pump"
      },
    },
    --CLARIFIER
    {
      type = "recipe",
      name = "clarifier",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "iron-plate", amount = 4},
          {type = "item", name = "electronic-circuit", amount = 4},
          {type = "item", name = "pipe", amount = 11},
          {type = "item", name = "stone-brick", amount = 6}
        },
        result = "clarifier"
      },
    },
    --BARRELING PUMP
    {
      type = "recipe",
      name = "barreling-pump",
      normal = {
        energy_required = 2,
        enabled = false,
        ingredients = {
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "electronic-circuit", amount = 2},
          {type = "item", name = "pipe", amount = 2},
          {type = "item", name = "iron-gear-wheel", amount = 3}
        },
        result = "barreling-pump"
      },
    },
    --ORE POWDERIZER
    {
      type = "recipe",
      name = "ore-powderizer",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepowder-1", amount = 1},
          {type = "item", name = "steel-plate", amount = 1},
          {type = "item", name = "clay-brick", amount = 1},
          {type = "item", name = "iron-gear-wheel", amount = 1}
        },
        result = "ore-powderizer"
      },
    },
    {
      type = "recipe",
      name = "ore-powderizer-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepowder-2", amount = 1},
          {type = "item", name = "steel-plate", amount = 1},
          {type = "item", name = "steel-gear-wheel", amount = 1},
          {type = "item", name = "clay-brick", amount = 1}
        },
        result = "ore-powderizer-2"
      },
    },
    {
      type = "recipe",
      name = "ore-powderizer-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepowder-3", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 1},
          {type = "item", name = "steel-gear-wheel", amount = 1},
          {type = "item", name = "concrete-brick", amount = 1}
        },
        result = "ore-powderizer-3"
      },
    },
    --ELECTRO WHINNING CELL
    {
      type = "recipe",
      name = "electro-whinning-cell",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "oreelectro-1", amount = 1},
          {type = "item", name = "steel-plate", amount = 4},
          {type = "item", name = "advanced-circuit", amount = 8},
          {type = "item", name = "clay-brick", amount = 4},
          {type = "item", name = "steel-pipe", amount = 6}
        },
        result = "electro-whinning-cell"
      },
    },
    {
      type = "recipe",
      name = "electro-whinning-cell-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "oreelectro-2", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 4},
          {type = "item", name = "advanced-circuit", amount = 8},
          {type = "item", name = "concrete-brick", amount = 4},
          {type = "item", name = "steel-pipe", amount = 6}
        },
        result = "electro-whinning-cell-2"
      },
    },
    {
      type = "recipe",
      name = "electro-whinning-cell-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "oreelectro-3", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 4},
          {type = "item", name = "t5-circuit", amount = 8},
          {type = "item", name = "reinforced-concrete-brick", amount = 4},
          {type = "item", name = "titanium-pipe", amount = 6}
        },
        result = "electro-whinning-cell-3"
      },
      expensive = {
        energy_required = 5 ,
        enabled = false,
        ingredients = {
          {type = "item", name = "oreelectro-3", amount = 1},
          {type = "item", name = "aluminium-plate", amount = 4 },
          {type = "item", name = "t5-circuit", amount = 8 },
          {type = "item", name = "reinforced-concrete-brick", amount = 4 },
          {type = "item", name = "titanium-pipe", amount = 6 }
        },
        result = "electro-whinning-cell-3"
      }
    }
  }
)
end