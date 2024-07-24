data:extend({
  {
    type = "technology",
    name = "duct-tape",
    icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    icon_size = "256",
    prerequisites = {"automation-2", "steel-processing","oil-processing",},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "industrial-strenght-duct-tape"
      },
      {
        type = "unlock-recipe",
        recipe = "polyethylene"
      },
      {
        type = "unlock-recipe",
        recipe = "automation-assembly-machine-MK2",
      },
      {
        type = "unlock-recipe",
        recipe = "labx25",
      },
      {
        type = "unlock-recipe",
        recipe = "labx50",
      },
      
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 5
    },
    order = "d-a-a"
  },
  --{
    --type = "technology",
    --name = "productivity-machine",
    --icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    --icon_size = "256",
    --prerequisites = {"duct-tape","oil-processing","utility-science-pack", "productivity-module-3","speed-module-3",},
    --effects =
    --{
      --{
        --type = "unlock-recipe",
        --recipe = "production-machine",
      --},
    --},
    --unit =
    --{
      --count = 1000,
      --ingredients = {
        --{"automation-science-pack", 1},
        --{"logistic-science-pack", 1},
        --{"chemical-science-pack", 1},
        --{"production-science-pack", 1},
        --{"utility-science-pack", 1},
        
      --},
      --time = 20
    --},
    --order = "d-a-a"
  --},
  {
    type = "technology",
    name = "machineX500",
    icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    icon_size = "256",
    prerequisites = {"duct-tape","oil-processing","utility-science-pack","production-science-pack",},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "machineX500"
      },
      {
        type = "unlock-recipe",
        recipe = "FX500",
	  },
    },
    unit =
    {
      count = 5000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 10
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "P-module-machine",
    icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    icon_size = "256",
    prerequisites = {"duct-tape","oil-processing","utility-science-pack","production-science-pack",},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "P-Module-machine",
      },
    },
    unit =
    {
      count = 5000,
      ingredients = {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 10
    },
    order = "d-a-a"
  },

  {
    type = "technology",
    name = "machineX1000",
    icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    icon_size = "256",
    prerequisites = {"duct-tape","oil-processing","space-science-pack",},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "machineX1000"
      },
    },
    unit =
    {
      count = 250000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        
      },
      time = 10
    },
    order = "d-a-a"
  },

  {
    type = "technology",
    name = "FurnaceX1000",
    icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    icon_size = "256",
    prerequisites = {"duct-tape","oil-processing","steel-processing","space-science-pack","utility-science-pack","production-science-pack",},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "FX1000",
      },
      {
        type = "unlock-recipe",
        recipe = "steel-plate-X1000",
      },
    },
    unit =
    {
      count = 250000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        
      },
      time = 10
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "chemplant500",
    icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    icon_size = "256",
    prerequisites = {"duct-tape","oil-processing","production-science-pack","utility-science-pack",},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chem-plant-X500"
      },
    },
    unit =
    {
      count = 5000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 20
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "fluidsx10",
    icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    icon_size = "256",
    prerequisites = {"oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-oil-processing-v10",
      },
      {
        type = "unlock-recipe",
        recipe = "polyethylene-v10"
      },
      {
        type = "unlock-recipe",
        recipe = "basic-oil-processing-v10",
      },
      
      {
        type = "unlock-recipe",
        recipe = "heavy-oil-cracking-v10",
      },
      {
        type = "unlock-recipe",
        recipe = "light-oil-cracking-v10",
      },
      {
        type = "unlock-recipe",
        recipe = "sulfuric-acid-10",
      },
      {
        type = "unlock-recipe",
        recipe = "plastic-bar-v10",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-light-oil-v10",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-petroleum-gas-v10",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-heavy-oil-v10",
      },
      {
        type = "unlock-recipe",
        recipe = "sulfur-v10",
      },
      {
        type = "unlock-recipe",
        recipe = "lubricant-v10",
      },
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "fluids2",
    icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    icon_size = "256",
    prerequisites = {"oil-processing","chemical-science-pack","fluids","advanced-oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-X100",
      },
      {
        type = "unlock-recipe",
        recipe = "coal-liquefaction-v10",
      },
      {
        type = "unlock-recipe",
        recipe = "chem-plant-X100",
      },
      {
        type = "unlock-recipe",
        recipe = "n-basic-light",
      },
      {
        type = "unlock-recipe",
        recipe = "n-basic-petroleum",
      },
      {
        type = "unlock-recipe",
        recipe = "n-advanced-heavy",
      },
      {
        type = "unlock-recipe",
        recipe = "n-advanced-light",
      },
      {
        type = "unlock-recipe",
        recipe = "n-advanced-petroleum",
      },
      {
        type = "unlock-recipe",
        recipe =  "n-special-heavy-X100",
      },
      {
        type = "unlock-recipe",
        recipe = "n-special-light-X100",
      },
      {
        type = "unlock-recipe",
        recipe = "n-special-petroleum-X100",
      },
      {
        type = "unlock-recipe",
        recipe = "n-special-process-X100",
      },

      
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 20
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "fluids",
    icon = "__assemblyUPS__/graphics/technology/duct-tape-tech-image.png",
    icon_size = "256",
    prerequisites = {"oil-processing",},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-x10",
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plantv2",
      },
      --{
        --type = "unlock-recipe",
        --recipe = "n-basic-heavy",
      --},
      


      
    },
    unit =
    {
      count = 75,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 10
    },
    order = "d-a-a"
  },














})
