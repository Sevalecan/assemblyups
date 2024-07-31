if mods["angelsrefining"] then
data:extend(
  {
    --IRON
    -- SMELTING INTERMEDIATE
    {
      type = "recipe",
      name = "iron-ore-processingx10",
      category = "ore-processingx10",
      subgroup = "angels-iron",
      energy_required = 2,
      enabled = true,
      ingredients = {
        {type = "item", name = "iron-ore", amount = 40}
      },
      results = {
        {type = "item", name = "processed-iron", amount = 20}
      },
      order = "b[processed-iron]",
    },
    {
      type = "recipe",
      name = "iron-processed-processingx10",
      category = "pellet-pressingx10",
      subgroup = "angels-iron",
      energy_required = 2,
      enabled = true,
      ingredients = {
        {type = "item", name = "processed-iron", amount = 30}
      },
      results = {
        {type = "item", name = "pellet-iron", amount = 40}
      },
      order = "c[pellet-iron]"
    },
    -- order d reserved for solid-iron-hydroxide
    -- SMELTING RESULTS
    {
      type = "recipe",
      name = "iron-ore-smeltingx10",
      category = "blast-smeltingx10",
      subgroup = "angels-iron",
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type = "item", name = "iron-ore", amount = 240}
      },
      results = {
        {type = "item", name = "ingot-iron", amount = 240}
      },
      
      order = "e[ingot-iron]-a"
    },
    {
      type = "recipe",
      name = "processed-iron-smeltingx10",
      category = "blast-smeltingx10",
      subgroup = "angels-iron",
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type = "item", name = "processed-iron", amount = 80},
        {type = "item", name = "solid-coke", amount = 20}
      },
      results = {
        {type = "item", name = "ingot-iron", amount = 240}
      },

      order = "e[ingot-iron]-b"
    },
    {
      type = "recipe",
      name = "pellet-iron-smeltingx10",
      category = "blast-smeltingx10",
      subgroup = "angels-iron",
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type = "item", name = "pellet-iron", amount = 80},
        {type = "item", name = "solid-coke", amount = 20},
        {type = "item", name = "solid-limestone", amount = 20}
      },
      results = {
        {type = "item", name = "ingot-iron", amount = 240}
      },

      order = "e[ingot-iron]-c"
    },
    {
      type = "recipe",
      name = "solid-iron-hydroxide-smeltingx10",
      category = "chemical-smeltingx10",
      subgroup = "angels-iron",
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type = "item", name = "solid-iron-hydroxide", amount = 60},
        {type = "item", name = "solid-coke", amount = 20}
      },
      results = {
        {type = "item", name = "ingot-iron", amount = 60},
        {type = "fluid", name = "gas-carbon-dioxide", amount = 200}
      },
      main_product = "ingot-iron",

      order = "e[ingot-iron]-d"
    },
    -- order f reserved for ingot-steel (see alloys)
    {
      type = "recipe",
      name = "powder-ironx10",
      category = "advanced-craftingx10",
      subgroup = "angels-iron",
      energy_required = 0.5,
      enabled = true,
      ingredients = {
        {type = "item", name = "ingot-iron", amount = 10}
      },
      results = {
        {type = "item", name = "powder-iron", amount = 10}
      },
      order = "g[powder-iron]"
    },
    -- order h reserved for powder-steel (see alloys)
    -- CASTING INTERMEDIATE
    {
      type = "recipe",
      name = "molten-iron-smelting-1x10",
      category = "induction-smeltingx10",
      subgroup = "angels-iron-casting",
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type = "item", name = "ingot-iron", amount = 120}
      },
      results = {
        {type = "fluid", name = "liquid-molten-iron", amount = 1200}
      },
      order = "i[liquid-molten-iron]-a",
    },
    {
      type = "recipe",
      name = "molten-iron-smelting-2x10",
      category = "induction-smelting-2x10",
      subgroup = "angels-iron-casting",
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type = "item", name = "ingot-iron", amount = 120},
        {type = "item", name = "ingot-manganese", amount = 120}
      },
      results = {
        {type = "fluid", name = "liquid-molten-iron", amount = 2400}
      },
      order = "i[liquid-molten-iron]-b",
    },
    {
      type = "recipe",
      name = "molten-iron-smelting-3x10",
      category = "induction-smelting-2x10",
      subgroup = "angels-iron-casting",
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type = "item", name = "ingot-iron", amount = 120},
        {type = "item", name = "ingot-silicon", amount = 120}
      },
      results = {
        {type = "fluid", name = "liquid-molten-iron", amount = 2400}
      },
      order = "i[liquid-molten-iron]-c",
    },
    {
      type = "recipe",
      name = "molten-iron-smelting-4x10",
      category = "induction-smelting-3x10",
      subgroup = "angels-iron-casting",
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type = "item", name = "ingot-iron", amount = 120},
        {type = "item", name = "ingot-nickel", amount = 120},
        {type = "item", name = "ingot-cobalt", amount = 120}
      },
      results = {
        {type = "fluid", name = "liquid-molten-iron", amount = 3600}
      },
      order = "i[liquid-molten-iron]-d",
    },
    {
      type = "recipe",
      name = "molten-iron-smelting-5x10",
      category = "induction-smelting-3x10",
      subgroup = "angels-iron-casting",
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type = "item", name = "ingot-iron", amount = 120},
        {type = "item", name = "ingot-nickel", amount = 120},
        {type = "item", name = "ingot-chrome", amount = 120}
      },
      results = {
        {type = "fluid", name = "liquid-molten-iron", amount = 3600}
      },
      order = "i[liquid-molten-iron]-e",
    },
    {
      type = "recipe",
      name = "roll-iron-castingx10",
      category = "strand-castingx10",
      subgroup = "angels-iron-casting",
      normal = {
        enabled = true,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-iron", amount = 800},
          {type = "fluid", name = "high-pressure-water", amount = 4}
        },
        results = {
          {type = "item", name = "angels-roll-iron", amount = 20}
        }
      },

        results = {
          {type = "item", name = "angels-roll-iron", amount = 2}
        }
      },
      order = "j[angels-roll-iron]-a",
    },
    {
      type = "recipe",
      name = "roll-iron-casting-fastx10",
      category = "strand-casting-2x10",
      subgroup = "angels-iron-casting",
      normal =
      {
        enabled = true,
        energy_required = 2,
        ingredients =
        {
          {type = "fluid", name = "liquid-molten-iron", amount = 1400},
          {type = "fluid", name = "liquid-coolant", amount = 400, maximum_temperature = 50}
        },
        results =
        {
          {type = "item", name = "angels-roll-iron", amount = 40},
          {type = "fluid", name = "liquid-coolant-used", amount = 400, temperature = 300}
        },
        main_product = "angels-roll-iron"
      },
      order = "j[angels-roll-iron]-b",
    },
    {
      type = "recipe",
      name = "rod-stack-iron-castingx10",
      category = "strand-castingx10",
      subgroup = "angels-iron-casting",
      normal = {
        enabled = true,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-iron", amount = 600},
          {type = "fluid", name = "high-pressure-water", amount = 4}
        },
        results = {
          {type = "item", name = "angels-rod-stack-iron", amount = 100}
        }
      },
      order = "k[angels-rod-stack-iron]-a",
    },
    {
      type = "recipe",
      name = "rod-stack-iron-casting-fastx10",
      category = "strand-casting-2x10",
      subgroup = "angels-iron-casting",
      normal = {
        enabled = true,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-iron", amount = 1100},
          {type = "fluid", name = "liquid-coolant", amount = 400, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-rod-stack-iron", amount = 20},
          {type = "fluid", name = "liquid-coolant-used", amount = 400, temperature = 300}
        },
        main_product = "angels-rod-stack-iron"
      },
      order = "k[angels-rod-stack-iron]-b",
    },
    -- CASTING RESULT
    {
      type = "recipe",
      name = "angels-plate-ironx10",
      category = "castingx10",
      subgroup = "angels-iron-casting",
      normal = {
        enabled = true,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-iron", amount = 400}
        },
        results = {
          {type = "item", name = "angels-plate-iron", amount = 40}
        }
      },
      order = "l[angels-plate-iron]-c" -- l[angels-plate-iron]-a reserved for crushed saphirite smelting (see global overrides)
    }, -- l[angels-plate-iron]-b reserved for base game smelting recipe (see global overrides)
    {
      type = "recipe",
      name = "angels-roll-iron-convertingx10",
      category = "advanced-craftingx10",
      subgroup = "angels-iron-casting",
      energy_required = 0.5,
      enabled = true,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-roll-iron", amount = 10}
      },
      results = {
        {type = "item", name = "angels-plate-iron", amount = 40}
      },
      order = "l[angels-plate-iron]-d"
    },
    {
      type = "recipe",
      name = "angels-rod-iron-platex10",
      category = "craftingx10",
      subgroup = "angels-iron-casting",
      energy_required = 0.5,
      enabled = true,
      allow_decomposition = true,
      ingredients = {
        {type = "item", name = "angels-plate-iron", amount = 20}
      },
      results = {
        {type = "item", name = "iron-stick", amount = 10}
      },
      allow_decomposition = false,
      order = "m[angels-rod-iron]-a"
    },
    {
      type = "recipe",
      name = "angels-rod-stack-iron-converting",
      category = "advanced-crafting",
      subgroup = "angels-iron-casting",
      energy_required = 0.5,
      enabled = false,
      allow_decomposition = false,
      ingredients =
      {
        {type = "item", name = "angels-rod-stack-iron", amount = 1}
      },
      results = 
      {
        {type = "item", name = "iron-stick", amount = 4}
      },
      order = "m[angels-rod-iron]-b"
    }
  
)
end