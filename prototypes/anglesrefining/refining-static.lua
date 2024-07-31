if mods["angelsrefining"] then
data:extend(
  {
    ---------------------------------------------------------------------------
    -- TIER 1 -----------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angelsore1-crushedx10",
      localised_name = {"recipe-name.angelsore1-crushedx10"},
      category = "ore-sorting-t1x10",
      subgroup = "ore-processing-a",
      energy_required = 1,
      enabled = true,
      ingredients = {{type = "item", name = "angels-ore1", amount = 20}},
      results = {
        {type = "item", name = "angels-ore1-crushed", amount = 20},
        {type = "item", name = "stone-crushed", amount = 10}
      },
      main_product = "angels-ore1-crushed",
      --icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed.png",
      --icon_size = 32,
      order = "a[angelsore1-crushed]"
    },
    {
      type = "recipe",
      name = "angelsore1-crushed-hand",
      localised_name = {"recipe-name.angelsore1-crushed-hand"},
      category = "angels-manual-crafting",
      subgroup = "processing-crafting",
      energy_required = 4,
      enabled = true,
      ingredients = {{type = "item", name = "angels-ore1", amount = 2}},
      results = {
        {type = "item", name = "angels-ore1-crushed", amount = 2},
        {type = "item", name = "stone-crushed", amount = 1}
      },
      main_product = "angels-ore1-crushed",
      allow_decomposition = false,
      always_show_made_in = true,
      --icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed.png",
      --icon_size = 32,
      order = "a[angelsore1-crushed-hand]"
    },
    {
      type = "recipe",
      name = "angelsore2-crushedx10",
      localised_name = {"recipe-name.angelsore2-crushed"},
      category = "ore-sorting-t1x10",
      subgroup = "ore-processing-a",
      energy_required = 1,
      enabled = true,
      ingredients = {{type = "item", name = "angels-ore2", amount = 20}},
      results = {
        {type = "item", name = "angels-ore2-crushed", amount = 20},
        {type = "item", name = "stone-crushed", amount = 15}
      },
      main_product = "angels-ore2-crushed",
      --icon = "__angelsrefining__/graphics/icons/angels-ore2-crushed.png",
      --icon_size = 32,
      order = "b[angelsore2-crushed]"
    },
    {
      type = "recipe",
      name = "angelsore3-crushedx10",
      localised_name = {"recipe-name.angelsore3-crushed"},
      category = "ore-sorting-t1x10",
      subgroup = "ore-processing-a",
      energy_required = 1,
      enabled = true,
      ingredients = {{type = "item", name = "angels-ore3", amount = 20}},
      results = {
        {type = "item", name = "angels-ore3-crushed", amount = 20},
        {type = "item", name = "stone-crushed", amount = 15}
      },
      main_product = "angels-ore3-crushed",
      --icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed.png",
      --icon_size = 32,
      order = "c[angelsore3-crushed]"
    },
    {
      type = "recipe",
      name = "angelsore3-crushed-hand",
      localised_name = {"recipe-name.angelsore3-crushed-hand"},
      category = "angels-manual-crafting",
      subgroup = "processing-crafting",
      energy_required = 4,
      enabled = true,
      ingredients = {{type = "item", name = "angels-ore3", amount = 2}},
      results = {
        {type = "item", name = "angels-ore3-crushed", amount = 2},
        {type = "item", name = "stone-crushed", amount = 1}
      },
      main_product = "angels-ore3-crushed",
      allow_decomposition = false,
      always_show_made_in = true,
      --icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed.png",
      --icon_size = 32,
      order = "b[angelsore3-crushed-hand]"
    },
    {
      type = "recipe",
      name = "angelsore4-crushedx10",
      localised_name = {"recipe-name.angelsore4-crushed"},
      category = "ore-sorting-t1x10",
      subgroup = "ore-processing-a",
      energy_required = 1,
      enabled = true,
      ingredients = {{type = "item", name = "angels-ore4", amount = 20}},
      results = {
        {type = "item", name = "angels-ore4-crushed", amount = 20},
        {type = "item", name = "stone-crushed", amount = 15}
      },
      main_product = "angels-ore4-crushed",
      --icon = "__angelsrefining__/graphics/icons/angels-ore4-crushed.png",
      --icon_size = 32,
      order = "d[angelsore4-crushed]"
    },
    {
      type = "recipe",
      name = "angelsore5-crushedx10",
      localised_name = {"recipe-name.angelsore5-crushed"},
      category = "ore-sorting-t1x10",
      subgroup = "ore-processing-a",
      energy_required = 1,
      enabled = true,
      ingredients = {{type = "item", name = "angels-ore5", amount = 20}},
      results = {
        {type = "item", name = "angels-ore5-crushed", amount = 20},
        {type = "item", name = "stone-crushed", amount = 15}
      },
      main_product = "angels-ore5-crushed",
      --icon = "__angelsrefining__/graphics/icons/angels-ore5-crushed.png",
      --icon_size = 32,
      order = "e[angelsore5-crushed]"
    },
    {
      type = "recipe",
      name = "angelsore6-crushedx10",
      localised_name = {"recipe-name.angelsore6-crushed"},
      category = "ore-sorting-t1x10",
      subgroup = "ore-processing-a",
      energy_required = 1,
      enabled = true,
      ingredients = {{type = "item", name = "angels-ore6", amount = 20}},
      results = {
        {type = "item", name = "angels-ore6-crushed", amount = 20},
        {type = "item", name = "stone-crushed", amount = 15}
      },
      main_product = "angels-ore6-crushed",
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
      --icon_size = 32,
      order = "f[angelsore6-crushed]"
    },
    ---------------------------------------------------------------------------
    -- TIER 1.5 ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angelsore8-crushed",
      localised_name = {"recipe-name.angelsore8-crushed"},
      category = "ore-sorting-t1",
      subgroup = "ore-processing-a",
      energy_required = 1,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore1-crushed", amount = 2},
        {type = "item", name = "angels-ore2-crushed", amount = 2},
        {type = "item", name = "angels-ore5-crushed", amount = 2}
      },
      results = {
        {type = "item", name = "angels-ore8-crushed", amount = 6}
      },
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
      --icon_size = 32,
      order = "g"
    },
    {
      type = "recipe",
      name = "angelsore8-powder",
      localised_name = {"recipe-name.angelsore8-powder"},
      category = "ore-sorting-t1-5",
      subgroup = "ore-processing-a",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore8-crushed", amount = 3},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "angels-ore8-powder", amount = 3},
        {type = "item", name = "milling-drum-used", amount = 1}
      },
      main_product = "angels-ore8-powder",
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
      --icon_size = 32,
      order = "h"
    },
    {
      type = "recipe",
      name = "angelsore9-crushed",
      localised_name = {"recipe-name.angelsore9-crushed"},
      category = "ore-sorting-t1",
      subgroup = "ore-processing-a",
      energy_required = 1,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore3-crushed", amount = 2},
        {type = "item", name = "angels-ore4-crushed", amount = 2},
        {type = "item", name = "angels-ore6-crushed", amount = 2}
      },
      results = {
        {type = "item", name = "angels-ore9-crushed", amount = 6}
      },
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
      --icon_size = 32,
      order = "i"
    },
    {
      type = "recipe",
      name = "angelsore9-powder",
      localised_name = {"recipe-name.angelsore9-powder"},
      category = "ore-sorting-t1-5",
      subgroup = "ore-processing-a",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore9-crushed", amount = 3},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "angels-ore9-powder", amount = 3},
        {type = "item", name = "milling-drum-used", amount = 1}
      },
      main_product = "angels-ore9-powder",
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
      --icon_size = 32,
      order = "j"
    },
    ---------------------------------------------------------------------------
    -- TIER 2 -----------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angelsore1-chunk",
      localised_name = {"recipe-name.angelsore1-chunk"},
      category = "ore-sorting-t2",
      subgroup = "ore-processing-b",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore1-crushed", amount = 2},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "item", name = "angels-ore1-chunk", amount = 2},
        {type = "fluid", name = "water-yellow-waste", amount = 50},
        {type = "item", name = "geode-blue", amount = 1, probability = 0.5}
      },
      main_product = "angels-ore1-chunk",
      --icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk.png",
      --icon_size = 32,
      order = "a[angelsore1-chunk]"
    },
    {
      type = "recipe",
      name = "angelsore2-chunk",
      localised_name = {"recipe-name.angelsore2-chunk"},
      category = "ore-sorting-t2",
      subgroup = "ore-processing-b",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore2-crushed", amount = 2},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "item", name = "angels-ore2-chunk", amount = 2},
        {type = "fluid", name = "water-yellow-waste", amount = 50},
        {type = "item", name = "geode-purple", amount = 1, probability = 0.5}
      },
      main_product = "angels-ore2-chunk",
      --icon = "__angelsrefining__/graphics/icons/angels-ore2-chunk.png",
      --icon_size = 32,
      order = "b[angelsore2-chunk]"
    },
    {
      type = "recipe",
      name = "angelsore3-chunk",
      localised_name = {"recipe-name.angelsore3-chunk"},
      category = "ore-sorting-t2",
      subgroup = "ore-processing-b",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore3-crushed", amount = 2},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "item", name = "angels-ore3-chunk", amount = 2},
        {type = "fluid", name = "water-yellow-waste", amount = 50},
        {type = "item", name = "geode-yellow", amount = 1, probability = 0.5}
      },
      main_product = "angels-ore3-chunk",
      --icon = "__angelsrefining__/graphics/icons/angels-ore3-chunk.png",
      --icon_size = 32,
      order = "c[angelsore3-chunk]"
    },
    {
      type = "recipe",
      name = "angelsore4-chunk",
      localised_name = {"recipe-name.angelsore4-chunk"},
      category = "ore-sorting-t2",
      subgroup = "ore-processing-b",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore4-crushed", amount = 2},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "item", name = "angels-ore4-chunk", amount = 2},
        {type = "fluid", name = "water-yellow-waste", amount = 50},
        {type = "item", name = "geode-lightgreen", amount = 1, probability = 0.5}
      },
      main_product = "angels-ore4-chunk",
      --icon = "__angelsrefining__/graphics/icons/angels-ore4-chunk.png",
      --icon_size = 32,
      order = "d[angelsore4-chunk]"
    },
    {
      type = "recipe",
      name = "angelsore5-chunk",
      localised_name = {"recipe-name.angelsore5-chunk"},
      category = "ore-sorting-t2",
      subgroup = "ore-processing-b",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore5-crushed", amount = 2},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "item", name = "angels-ore5-chunk", amount = 2},
        {type = "fluid", name = "water-yellow-waste", amount = 50},
        {type = "item", name = "geode-cyan", amount = 1, probability = 0.5}
      },
      main_product = "angels-ore5-chunk",
      --icon = "__angelsrefining__/graphics/icons/angels-ore5-chunk.png",
      --icon_size = 32,
      order = "e[angelsore5-chunk]"
    },
    {
      type = "recipe",
      name = "angelsore6-chunk",
      localised_name = {"recipe-name.angelsore6-chunk"},
      category = "ore-sorting-t2",
      subgroup = "ore-processing-b",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore6-crushed", amount = 2},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "item", name = "angels-ore6-chunk", amount = 2},
        {type = "fluid", name = "water-yellow-waste", amount = 50},
        {type = "item", name = "geode-red", amount = 1, probability = 0.5}
      },
      main_product = "angels-ore6-chunk",
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-chunk.png",
      --icon_size = 32,
      order = "f[angelsore6-chunk]"
    },
    ---------------------------------------------------------------------------
    -- TIER 2.5 ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angelsore8-sludge",
      localised_name = {"recipe-name.angelsore8-sludge"},
      category = "chemistry",
      subgroup = "ore-processing-b",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore8-powder", amount = 3},
        {type = "item", name = "angels-ore1-chunk", amount = 1},
        {type = "item", name = "angels-ore2-chunk", amount = 1},
        {type = "item", name = "angels-ore5-chunk", amount = 1},
        {type = "fluid", name = "thermal-water", amount = 20},
        {type = "fluid", name = "sulfuric-acid", amount = 20}
      },
      results = {
        {type = "fluid", name = "angels-ore8-sludge", amount = 6}
      },
      main_product = "angels-ore8-sludge",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
      --icon_size = 32,
      order = "g"
    },
    {
      type = "recipe",
      name = "angelsore8-dust",
      localised_name = {"recipe-name.angelsore8-dust"},
      category = "ore-sorting-t2",
      subgroup = "ore-processing-b",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "angels-ore8-sludge", amount = 4}
        --{type="item", name="solid-sodium-hydroxide", amount=2},
      },
      results = {
        {type = "item", name = "angels-ore8-dust", amount = 4},
        {type = "fluid", name = "water-yellow-waste", amount = 20}
      },
      main_product = "angels-ore8-dust",
      --icon = "__angelsrefining__/graphics/icons/angels-ore8-dust.png",
      --icon_size = 32,
      order = "h"
    },
    {
      type = "recipe",
      name = "angelsore9-sludge",
      localised_name = {"recipe-name.angelsore9-sludge"},
      category = "chemistry",
      subgroup = "ore-processing-b",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore9-powder", amount = 3},
        {type = "item", name = "angels-ore3-chunk", amount = 1},
        {type = "item", name = "angels-ore4-chunk", amount = 1},
        {type = "item", name = "angels-ore6-chunk", amount = 1},
        {type = "fluid", name = "thermal-water", amount = 20},
        {type = "fluid", name = "sulfuric-acid", amount = 20}
      },
      results = {
        {type = "fluid", name = "angels-ore9-sludge", amount = 6}
      },
      main_product = "angels-ore9-sludge",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
      --icon_size = 32,
      order = "i"
    },
    {
      type = "recipe",
      name = "angelsore9-dust",
      localised_name = {"recipe-name.angelsore9-dust"},
      category = "ore-sorting-t2",
      subgroup = "ore-processing-b",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "angels-ore9-sludge", amount = 4}
        --{type="item", name="solid-sodium-hydroxide", amount=2},
      },
      results = {
        {type = "item", name = "angels-ore9-dust", amount = 4},
        {type = "fluid", name = "water-yellow-waste", amount = 20}
      },
      main_product = "angels-ore9-dust",
      --icon = "__angelsrefining__/graphics/icons/angels-ore9-dust.png",
      --icon_size = 32,
      order = "j"
    },
    ---------------------------------------------------------------------------
    -- TIER 3 -----------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angelsore1-crystal",
      localised_name = {"recipe-name.angelsore1-crystal"},
      category = "ore-sorting-t3",
      subgroup = "ore-processing-c",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore1-chunk", amount = 2},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
      },
      results = {
        {type = "item", name = "angels-ore1-crystal", amount = 2}
      },
      main_product = "angels-ore1-crystal",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal.png",
      --icon_size = 32,
      order = "a[angelsore1-crystal]"
    },
    {
      type = "recipe",
      name = "angelsore2-crystal",
      localised_name = {"recipe-name.angelsore2-crystal"},
      category = "ore-sorting-t3",
      subgroup = "ore-processing-c",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore2-chunk", amount = 2},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
      },
      results = {
        {type = "item", name = "angels-ore2-crystal", amount = 2}
      },
      main_product = "angels-ore2-crystal",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore2-crystal.png",
      --icon_size = 32,
      order = "b[angelsore2-crystal]"
    },
    {
      type = "recipe",
      name = "angelsore3-crystal",
      localised_name = {"recipe-name.angelsore3-crystal"},
      category = "ore-sorting-t3",
      subgroup = "ore-processing-c",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore3-chunk", amount = 2},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
      },
      results = {
        {type = "item", name = "angels-ore3-crystal", amount = 2}
      },
      main_product = "angels-ore3-crystal",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore3-crystal.png",
      --icon_size = 32,
      order = "c[angelsore3-crystal]"
    },
    {
      type = "recipe",
      name = "angelsore4-crystal",
      localised_name = {"recipe-name.angelsore4-crystal"},
      category = "ore-sorting-t3",
      subgroup = "ore-processing-c",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore4-chunk", amount = 2},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
      },
      results = {
        {type = "item", name = "angels-ore4-crystal", amount = 2}
      },
      main_product = "angels-ore4-crystal",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore4-crystal.png",
      --icon_size = 32,
      order = "d[angelsore4-crystal]"
    },
    {
      type = "recipe",
      name = "angelsore5-crystal",
      localised_name = {"recipe-name.angelsore5-crystal"},
      category = "ore-sorting-t3",
      subgroup = "ore-processing-c",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore5-chunk", amount = 2},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
      },
      results = {
        {type = "item", name = "angels-ore5-crystal", amount = 2}
      },
      main_product = "angels-ore5-crystal",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore5-crystal.png",
      --icon_size = 32,
      order = "e[angelsore5-crystal]"
    },
    {
      type = "recipe",
      name = "angelsore6-crystal",
      localised_name = {"recipe-name.angelsore6-crystal"},
      category = "ore-sorting-t3",
      subgroup = "ore-processing-c",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore6-chunk", amount = 2},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
      },
      results = {
        {type = "item", name = "angels-ore6-crystal", amount = 2}
      },
      main_product = "angels-ore6-crystal",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
      --icon_size = 32,
      order = "f[angelsore6-crystal]"
    },
    ---------------------------------------------------------------------------
    -- TIER 3.5 ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angelsore8-solution",
      localised_name = {"recipe-name.angelsore8-solution"},
      category = "ore-sorting-t3",
      subgroup = "ore-processing-c",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore8-dust", amount = 3},
        {type = "item", name = "angels-ore1-crystal", amount = 1},
        {type = "item", name = "angels-ore2-crystal", amount = 1},
        {type = "item", name = "angels-ore5-crystal", amount = 1},
        {type = "fluid", name = "sulfuric-acid", amount = 20}
      },
      results = {
        {type = "fluid", name = "angels-ore8-solution", amount = 60}
      },
      main_product = "angels-ore8-solution",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
      --icon_size = 32,
      order = "g"
    },
    
    ---------------------------------------------------------------------------
    -- TIER 4 -----------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angelsore1-pure",
      localised_name = {"recipe-name.angelsore1-pure"},
      category = "ore-sorting-t4",
      subgroup = "ore-processing-d",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore1-crystal", amount = 4}
      },
      results = {
        {type = "item", name = "angels-ore1-pure", amount = 4}
      },
      main_product = "angels-ore1-pure",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore1-pure.png",
      --icon_size = 32,
      order = "a[angelsore1-pure]"
    },
    {
      type = "recipe",
      name = "angelsore2-pure",
      localised_name = {"recipe-name.angelsore2-pure"},
      category = "ore-sorting-t4",
      subgroup = "ore-processing-d",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore2-crystal", amount = 4}
      },
      results = {
        {type = "item", name = "angels-ore2-pure", amount = 4}
      },
      main_product = "angels-ore2-pure",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore2-pure.png",
      --icon_size = 32,
      order = "b[angelsore2-pure]"
    },
    {
      type = "recipe",
      name = "angelsore3-pure",
      localised_name = {"recipe-name.angelsore3-pure"},
      category = "ore-sorting-t4",
      subgroup = "ore-processing-d",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore3-crystal", amount = 4}
      },
      results = {
        {type = "item", name = "angels-ore3-pure", amount = 4}
      },
      main_product = "angels-ore3-pure",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore3-pure.png",
      --icon_size = 32,
      order = "c[angelsore3-pure]"
    },
    {
      type = "recipe",
      name = "angelsore4-pure",
      localised_name = {"recipe-name.angelsore4-pure"},
      category = "ore-sorting-t4",
      subgroup = "ore-processing-d",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore4-crystal", amount = 4}
      },
      results = {
        {type = "item", name = "angels-ore4-pure", amount = 4}
      },
      main_product = "angels-ore4-pure",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore4-pure.png",
      --icon_size = 32,
      order = "d[angelsore4-pure]"
    },
    {
      type = "recipe",
      name = "angelsore5-pure",
      localised_name = {"recipe-name.angelsore5-pure"},
      category = "ore-sorting-t4",
      subgroup = "ore-processing-d",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore5-crystal", amount = 4}
      },
      results = {
        {type = "item", name = "angels-ore5-pure", amount = 4}
      },
      main_product = "angels-ore5-pure",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore5-pure.png",
      --icon_size = 32,
      order = "e[angelsore5-pure]"
    },
    {
      type = "recipe",
      name = "angelsore6-pure",
      localised_name = {"recipe-name.angelsore6-pure"},
      category = "ore-sorting-t4",
      subgroup = "ore-processing-d",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-ore6-crystal", amount = 4}
      },
      results = {
        {type = "item", name = "angels-ore6-pure", amount = 4}
      },
      main_product = "angels-ore6-pure",
      always_show_products = true,
      show_amount_in_title = false,
      --icon = "__angelsrefining__/graphics/icons/angels-ore6-pure.png",
      --icon_size = 32,
      order = "f[angelsore6-pure]"
    },
    --SLAG PROCESSING
    {
      type = "recipe",
      name = "filter-frame",
      category = "crafting",
      subgroup = "geode-crystallization",
      energy_required = 1,
      enabled = false,
      ingredients = {
        {type = "item", name = "steel-plate", amount = 1},
        {type = "item", name = "iron-plate", amount = 1}
      },
      results = {
        {type = "item", name = "filter-frame", amount = 1}
      },
      icon = "__angelsrefining__/graphics/icons/filter-frame.png",
      icon_size = 32,
      order = "x[filter-frame]"
    },
    {
      type = "recipe",
      name = "filter-coal",
      category = "crafting",
      subgroup = "geode-crystallization",
      energy_required = 1,
      enabled = false,
      ingredients = {
        {type = "item", name = "coal", amount = 1},
        {type = "item", name = "filter-frame", amount = 5}
      },
      results = {
        {type = "item", name = "filter-coal", amount = 5}
      },
      icon = "__angelsrefining__/graphics/icons/filter-coal.png",
      icon_size = 32,
      order = "y[filter-coal]"
    },
    {
      type = "recipe",
      name = "filter-ceramic",
      category = "crafting",
      subgroup = "geode-crystallization",
      energy_required = 1,
      enabled = false,
      ingredients = {
        {type = "item", name = "filter-frame", amount = 1},
        {type = "item", name = "plastic-bar", amount = 2}
      },
      results = {
        {type = "item", name = "filter-ceramic", amount = 1}
      },
      icon = "__angelsrefining__/graphics/icons/filter-ceramic.png",
      icon_size = 32,
      order = "z[filter-ceramic]-a[new]"
    },
    {
      type = "recipe",
      name = "filter-ceramic-refurbish",
      category = "crafting-with-fluid",
      subgroup = "geode-crystallization",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        {type = "item", name = "filter-ceramic-used", amount = 1},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "item", name = "filter-ceramic", amount = 1}
      },
      icon = "__angelsrefining__/graphics/icons/filter-ceramic.png",
      icon_size = 32,
      order = "z[filter-ceramic]-b[refurbish]"
    },
    {
      type = "recipe",
      name = "milling-drum",
      category = "crafting-with-fluid",
      subgroup = "ore-powderizer",
      energy_required = 1,
      enabled = false,
      ingredients = {
        {type = "item", name = "steel-plate", amount = 1},
        {type = "fluid", name = "lubricant", amount = 10}
      },
      results = {
        {type = "item", name = "milling-drum", amount = 1}
      },
      icon = "__angelsrefining__/graphics/icons/milling-drum.png",
      icon_size = 32,
      order = "z[milling-drum]-a[new]"
    },
    {
      type = "recipe",
      name = "milling-drum-used",
      category = "crafting-with-fluid",
      subgroup = "ore-powderizer",
      energy_required = 1,
      enabled = false,
      ingredients = {
        {type = "item", name = "milling-drum-used", amount = 1},
        {type = "fluid", name = "lubricant", amount = 10}
      },
      results = {
        {type = "item", name = "milling-drum", amount = 1}
      },
      icon = "__angelsrefining__/graphics/icons/milling-drum-used.png",
      icon_size = 32,
      order = "z[milling-drum]-b[recycle]"
    },

    --FILTERING

    
    --CATALYSTS
    {
      type = "recipe",
      name = "catalysator-brown",
      category = "crystallizing",
      subgroup = "geode-crystallization",
      --subgroup = "slag-processing-1",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "mineral-sludge", amount = 25}
      },
      results = {
        {type = "item", name = "catalysator-brown", amount = 2}
      },
      icon = "__angelsrefining__/graphics/icons/catalysator-brown.png",
      icon_size = 32,
      order = "i [catalysator-brown]"
    },
    {
      type = "recipe",
      name = "catalysator-green",
      category = "crystallizing",
      subgroup = "geode-crystallization",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "crystal-seedling", amount = 25}
      },
      results = {
        {type = "item", name = "catalysator-green", amount = 2}
      },
      icon = "__angelsrefining__/graphics/icons/catalysator-green.png",
      icon_size = 32,
      order = "j [catalysator-green]"
    },
    {
      type = "recipe",
      name = "catalysator-orange",
      category = "crystallizing",
      subgroup = "geode-crystallization",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        {type = "item", name = "catalysator-brown", amount = 2},
        {type = "item", name = "catalysator-green", amount = 2}
      },
      results = {
        {type = "item", name = "catalysator-orange", amount = 2}
      },
      icon = "__angelsrefining__/graphics/icons/catalysator-orange.png",
      icon_size = 32,
      order = "k [catalysator-orange]"
    },
    --VANILLA
    --IRON
    {
      type = "recipe",
      name = "angels-iron-pebbles-smelting",
      category = "smelting",
      subgroup = "raw-material",
      energy_required = 7,
      enabled = true,
      ingredients = {{type = "item", name = "angels-iron-pebbles", amount = 4}},
      results = {
        {type = "item", name = "iron-plate", amount = 2}
      },
      icons = {
        mods["angelssmelting"] and {
          icon = "__angelssmelting__/graphics/icons/plate-iron.png",
        } or {
          icon = "__base__/graphics/icons/iron-plate.png",
          icon_size = 64,
          scale = 32/64
        },
        {
          icon = "__angelsrefining__/graphics/icons/iron-pebbles.png",
          scale = 0.4,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "b[iron-ore]-c[pebbles]"
    },
    {
      type = "recipe",
      name = "angels-iron-nugget-smelting",
      category = "smelting",
      subgroup = "raw-material",
      energy_required = 7,
      enabled = true,
      ingredients = {{type = "item", name = "angels-iron-nugget", amount = 2}},
      results = {
        {type = "item", name = "iron-plate", amount = 3}
      },
      icons = {
        mods["angelssmelting"] and {
          icon = "__angelssmelting__/graphics/icons/plate-iron.png",
        } or {
          icon = "__base__/graphics/icons/iron-plate.png",
          icon_size = 64,
          scale = 32/64
        },
        {
          icon = "__angelsrefining__/graphics/icons/iron-nugget.png",
          scale = 0.4,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "b[iron-ore]-d[nugget]"
    },
    {
      type = "recipe",
      name = "angels-iron-pebbles",
      category = "ore-sorting-t1",
      subgroup = "ore-sorting-advanced",
      energy_required = 1,
      enabled = true,
      ingredients = {{type = "item", name = "iron-ore", amount = 2}},
      results = {
        {type = "item", name = "angels-iron-pebbles", amount = 4}
      },
      --icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
      icon_size = 32,
      order = "a[iron]-c[pebbles]"
    },
    --COPPER
    {
      type = "recipe",
      name = "angels-copper-pebbles-smelting",
      category = "smelting",
      subgroup = "raw-material",
      energy_required = 7,
      enabled = true,
      ingredients = {{type = "item", name = "angels-copper-pebbles", amount = 4}},
      results = {
        {type = "item", name = "copper-plate", amount = 2}
      },
      icons = {
        mods["angelssmelting"] and {
          icon = "__angelssmelting__/graphics/icons/plate-copper.png",
        } or {
          icon = "__base__/graphics/icons/copper-plate.png",
          icon_size = 64,
          scale = 32/64
        },
        {
          icon = "__angelsrefining__/graphics/icons/copper-pebbles.png",
          scale = 0.4,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "c[copper-ore]-c[pebbles]"
    },
    {
      type = "recipe",
      name = "angels-copper-nugget-smelting",
      category = "smelting",
      subgroup = "raw-material",
      energy_required = 7,
      enabled = true,
      ingredients = {{type = "item", name = "angels-copper-nugget", amount = 2}},
      results = {
        {type = "item", name = "copper-plate", amount = 3}
      },
      icons = {
        mods["angelssmelting"] and {
          icon = "__angelssmelting__/graphics/icons/plate-copper.png",
        } or {
          icon = "__base__/graphics/icons/copper-plate.png",
          icon_size = 64,
          scale = 32/64
        },
        {
          icon = "__angelsrefining__/graphics/icons/copper-nugget.png",
          scale = 0.4,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "c[copper-ore]-d[nugget]"
    },
    {
      type = "recipe",
      name = "angels-copper-pebbles",
      category = "ore-sorting-t1",
      subgroup = "ore-sorting-advanced",
      energy_required = 1,
      enabled = true,
      ingredients = {{type = "item", name = "copper-ore", amount = 2}},
      results = {
        {type = "item", name = "angels-copper-pebbles", amount = 4}
      },
      --icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
      icon_size = 32,
      order = "b[copper]-c[pebbles]"
    }
  }
)
end