--[[ Copyright (c) 2018 Optera
 * Part of Train Overhaul
 *
 * See LICENSE.md in the project directory for license information.
--]]

data:extend({
  {
    type = "technology",
    name = "rre-improved-trains",
    icon = "__railway-role-expansion__/graphics/icons/improved-trains.png",
    icon_size = 64,
    prerequisites = {"braking-force-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rre-industrial-locomotive"
      },
      {
        type = "unlock-recipe",
        recipe = "rre-linehaul-locomotive"
      },
      {
        type = "unlock-recipe",
        recipe = "rre-industrial-cargo-wagon"
      },
      {
        type = "unlock-recipe",
        recipe = "rre-linehaul-cargo-wagon"
      },
      {
        type = "unlock-recipe",
        recipe = "rre-industrial-fluid-wagon"
      },
      {
        type = "unlock-recipe",
        recipe = "rre-linehaul-fluid-wagon"
      },
    },
    unit =
    {
      count = 400,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        -- {"production-science-pack", 1},
      },
      time = 30
    },
    order = "c-g-c"
  },
})
