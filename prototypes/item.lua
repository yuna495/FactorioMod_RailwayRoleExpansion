--[[ Copyright (c) 2018 Optera
 * Part of Train Overhaul
 *
 * See LICENSE.md in the project directory for license information.
--]]

local base_loco = data.raw["item-with-entity-data"]["locomotive"]
base_loco.icon = "__railway-role-expansion__/graphics/icons/locomotive.png"
base_loco.icon_size = 64
base_loco.icon_mipmaps = 0
base_loco.icons = nil
base_loco.order = "a[train-system]-f[locomotive]"

local industrial_loco = table.deepcopy(data.raw["item-with-entity-data"]["locomotive"])
industrial_loco.name = "rre-industrial-locomotive"
industrial_loco.place_result = "rre-industrial-locomotive"
industrial_loco.icon = "__railway-role-expansion__/graphics/icons/heavy-locomotive.png"
industrial_loco.order = "a[train-system]-fc[locomotive]"

local linehaul_loco = table.deepcopy(data.raw["item-with-entity-data"]["locomotive"])
linehaul_loco.name = "rre-linehaul-locomotive"
linehaul_loco.place_result = "rre-linehaul-locomotive"
linehaul_loco.icon = "__railway-role-expansion__/graphics/icons/express-locomotive.png"
linehaul_loco.order = "a[train-system]-fd[locomotive]"

data:extend({
  industrial_loco,
  linehaul_loco,
})

local base_cargo_wagon = data.raw["item-with-entity-data"]["cargo-wagon"]
base_cargo_wagon.icon = "__railway-role-expansion__/graphics/icons/cargo-wagon.png"
base_cargo_wagon.icon_size = 32
base_cargo_wagon.icon_mipmaps = 0
base_cargo_wagon.icons = nil
base_cargo_wagon.order = "a[train-system]-g[cargo-wagon]"

local base_fluid_wagon = data.raw["item-with-entity-data"]["fluid-wagon"]
base_fluid_wagon.icon = "__railway-role-expansion__/graphics/icons/fluid-wagon.png"
base_fluid_wagon.icon_size = 32
base_fluid_wagon.icon_mipmaps = 0
base_fluid_wagon.icons = nil
base_fluid_wagon.order = "a[train-system]-h[fluid-wagon]"

local industrial_cargo_wagon = table.deepcopy(data.raw["item-with-entity-data"]["cargo-wagon"])
industrial_cargo_wagon.name = "rre-industrial-cargo-wagon"
industrial_cargo_wagon.place_result = "rre-industrial-cargo-wagon"
industrial_cargo_wagon.icon = "__railway-role-expansion__/graphics/icons/heavy-cargo-wagon.png"
industrial_cargo_wagon.order = "a[train-system]-gc[cargo-wagon]"

local industrial_fluid_wagon = table.deepcopy(data.raw["item-with-entity-data"]["fluid-wagon"])
industrial_fluid_wagon.name = "rre-industrial-fluid-wagon"
industrial_fluid_wagon.place_result = "rre-industrial-fluid-wagon"
industrial_fluid_wagon.icon = "__railway-role-expansion__/graphics/icons/heavy-fluid-wagon.png"
industrial_fluid_wagon.order = "a[train-system]-hc[fluid-wagon]"

local linehaul_cargo_wagon = table.deepcopy(data.raw["item-with-entity-data"]["cargo-wagon"])
linehaul_cargo_wagon.name = "rre-linehaul-cargo-wagon"
linehaul_cargo_wagon.place_result = "rre-linehaul-cargo-wagon"
linehaul_cargo_wagon.icon = "__railway-role-expansion__/graphics/icons/express-cargo-wagon.png"
linehaul_cargo_wagon.order = "a[train-system]-gd[cargo-wagon]"

local linehaul_fluid_wagon = table.deepcopy(data.raw["item-with-entity-data"]["fluid-wagon"])
linehaul_fluid_wagon.name = "rre-linehaul-fluid-wagon"
linehaul_fluid_wagon.place_result = "rre-linehaul-fluid-wagon"
linehaul_fluid_wagon.icon = "__railway-role-expansion__/graphics/icons/express-fluid-wagon.png"
linehaul_fluid_wagon.order = "a[train-system]-hd[fluid-wagon]"

data:extend({
  industrial_cargo_wagon,
  industrial_fluid_wagon,
  linehaul_cargo_wagon,
  linehaul_fluid_wagon,
})
