--[[ Copyright (c) 2018 Optera
 * Part of Train Overhaul
 *
 * See LICENSE.md in the project directory for license information.
--]]

local base_recipes = {
  ["locomotive"] = 10,
  ["cargo-wagon"] = 4,
  ["fluid-wagon"] = 4,
  ["artillery-wagon"] = 20,
}

local crafting_category = "advanced-crafting"
-- log("Hand crafting: "..tostring(settings.startup["rre-hand-crafting"].value))
if settings.startup["rre-hand-crafting"].value == true then
  crafting_category = nil
end

for name, energy in pairs(base_recipes) do
  local recipe = data.raw.recipe[name]
  recipe.category = crafting_category
  recipe.energy_required = energy
end

data:extend({
  {
    type = "recipe",
    name = "rre-industrial-locomotive",
    category = crafting_category,
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "locomotive", amount = 1},
      {type = "item", name = "advanced-circuit", amount = 20},
      {type = "item", name = "productivity-module", amount = 10}
    },
    results = {
      {type = "item", name = "rre-industrial-locomotive", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "rre-linehaul-locomotive",
    category =crafting_category,
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "locomotive", amount = 1},
      {type = "item", name = "advanced-circuit", amount = 20},
      {type = "item", name = "speed-module", amount = 10}
    },
    results = {
      {type = "item", name = "rre-linehaul-locomotive", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "rre-industrial-cargo-wagon",
    category = crafting_category,
    energy_required = 8,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "cargo-wagon", amount = 1},
      {type = "item", name = "productivity-module", amount = 5}
    },
    results = {
      {type = "item", name = "rre-industrial-cargo-wagon", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "rre-linehaul-cargo-wagon",
    category = crafting_category,
    energy_required = 8,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "cargo-wagon", amount = 1},
      {type = "item", name = "speed-module", amount = 5}
    },
    results = {
      {type = "item", name = "rre-linehaul-cargo-wagon", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "rre-industrial-fluid-wagon",
    category = crafting_category,
    energy_required = 8,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "fluid-wagon", amount = 1},
      {type = "item", name = "productivity-module", amount = 5}
    },
    results = {
      {type = "item", name = "rre-industrial-fluid-wagon", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "rre-linehaul-fluid-wagon",
    category = crafting_category,
    energy_required = 8,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "fluid-wagon", amount = 1},
      {type = "item", name = "speed-module", amount = 5}
    },
    results = {
      {type = "item", name = "rre-linehaul-fluid-wagon", amount = 1}
    }
  },
})
