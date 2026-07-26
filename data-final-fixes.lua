local weight_multiplier =
  settings.startup["rre-weight-multiplicator"].value

local power_multiplier =
  settings.startup["rre-power-multiplicator"].value

local base_loco = data.raw["locomotive"]["locomotive"]

if base_loco then
  base_loco.max_health = 1000
  base_loco.weight = 4000 * weight_multiplier
  base_loco.max_speed = 1.6
  base_loco.max_power = (1800000 * power_multiplier) .. "W"
  base_loco.reversing_power_modifier = 1
  base_loco.braking_force = 40
  base_loco.friction_force = 0.40
  base_loco.air_resistance = 0.015
  base_loco.energy_source.effectivity = 0.75
  base_loco.energy_source.fuel_inventory_size = 3
end

local base_cargo = data.raw["cargo-wagon"]["cargo-wagon"]

if base_cargo then
  base_cargo.max_health = 600
  base_cargo.weight = 2000 * weight_multiplier
  base_cargo.max_speed = 1.6
  base_cargo.braking_force = 4
  base_cargo.friction_force = 0.50
  base_cargo.air_resistance = 0.030
  base_cargo.inventory_size = 60
end

local base_fluid = data.raw["fluid-wagon"]["fluid-wagon"]

if base_fluid then
  base_fluid.max_health = 600
  base_fluid.weight = 2000 * weight_multiplier
  base_fluid.max_speed = 1.6
  base_fluid.braking_force = 4
  base_fluid.friction_force = 0.50
  base_fluid.air_resistance = 0.030
  base_fluid.capacity = 35000
end
