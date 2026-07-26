--[[ Copyright (c) 2018 Optera
 * Part of Train Overhaul
 *
 * See LICENSE.md in the project directory for license information.
--]]

engine_working_sound = {
  sound = {
    filename = "__railway-role-expansion__/sound/train-engine.ogg",
    volume = 0.6
  },
  match_speed_to_activity = true,
  max_sounds_per_type = 2,
}
wheel_working_sound = {
  sound = {
    filename = "__railway-role-expansion__/sound/train-wheels.ogg",
    volume = 0.6
  },
  match_volume_to_activity = true
}

tie_sound = {
  type = "play-sound",
  sound = {
    {
      filename = "__railway-role-expansion__/sound/train-tie-1.ogg",
      volume = 0.6
    },
    {
      filename = "__railway-role-expansion__/sound/train-tie-2.ogg",
      volume = 0.6
    },
    {
      filename = "__railway-role-expansion__/sound/train-tie-3.ogg",
      volume = 0.6
    },
    {
      filename = "__railway-role-expansion__/sound/train-tie-4.ogg",
      volume = 0.6
    },
  }
}

local base_loco = data.raw["locomotive"]["locomotive"]
base_loco.icon = "__railway-role-expansion__/graphics/icons/locomotive.png"
base_loco.icon_size = 64
base_loco.icon_mipmaps = 0
base_loco.icons = nil
base_loco.max_health = 1000
base_loco.weight = 4000 * settings.startup["rre-weight-multiplicator"].value
-- base_loco.max_speed = 1.6 --345.6km/h
base_loco.max_speed = 1.6 --345.6km/h
log("RRE: base locomotive speed = " .. tostring(base_loco.max_speed))
-- base_loco.max_power = multiply_energy_value("1000kW", settings.startup["rre-power-multiplicator"].value)
base_loco.max_power = (1800000 * settings.startup["rre-power-multiplicator"].value).."W"
base_loco.reversing_power_modifier = 1 --no effect on automatic trains
base_loco.braking_force = 40
base_loco.friction_force = 0.40 -- constant acceleration reduction
base_loco.air_resistance = 0.015 -- exponential max_speed reduction
base_loco.energy_source.effectivity = 0.75 -- tooltip "Energy Consumption" = max_power/efficiency
base_loco.energy_source.fuel_inventory_size = 3
if settings.startup["rre-old-sounds"].value then
  base_loco.working_sound = engine_working_sound
  base_loco.drive_over_tie_trigger = tie_sound
end

local industrial_loco = table.deepcopy(base_loco)
industrial_loco.name = "rre-industrial-locomotive"
industrial_loco.minable.result = "rre-industrial-locomotive"
industrial_loco.icon = "__railway-role-expansion__/graphics/icons/heavy-locomotive.png"
industrial_loco.color = {r = 0, g = 0.53, b = 0, a = 0.5}
industrial_loco.max_health = 1200
industrial_loco.weight = 7000 * settings.startup["rre-weight-multiplicator"].value
industrial_loco.max_speed = 1.1 --237.6km/h
-- industrial_loco.max_power = multiply_energy_value("2610kW", settings.startup["rre-power-multiplicator"].value)
industrial_loco.max_power = (4000000 * settings.startup["rre-power-multiplicator"].value).."W"
industrial_loco.reversing_power_modifier = 1
industrial_loco.braking_force = 50
industrial_loco.friction_force = 0.60
industrial_loco.air_resistance = 0.025
industrial_loco.energy_source.effectivity = 0.80
industrial_loco.energy_source.fuel_inventory_size = 2

local linehaul_loco = table.deepcopy(base_loco)
linehaul_loco.name = "rre-linehaul-locomotive"
linehaul_loco.minable.result = "rre-linehaul-locomotive"
linehaul_loco.icon = "__railway-role-expansion__/graphics/icons/express-locomotive.png"
linehaul_loco.color = {r = 0.10, g = 0.19, b = 0.80, a = 0.5}
linehaul_loco.max_health = 800
linehaul_loco.weight = 3000 * settings.startup["rre-weight-multiplicator"].value
-- linehaul_loco.max_speed = 2.8 --604.8km/h
linehaul_loco.max_speed = 2.8 --604.8km/h
-- linehaul_loco.max_power = multiply_energy_value("1200kW", settings.startup["rre-power-multiplicator"].value)
linehaul_loco.max_power = (1300000 * settings.startup["rre-power-multiplicator"].value).."W"
linehaul_loco.reversing_power_modifier = 0.6
linehaul_loco.braking_force = 15
linehaul_loco.friction_force = 0.40
linehaul_loco.air_resistance = 0.004
linehaul_loco.energy_source.effectivity = 0.60
linehaul_loco.energy_source.fuel_inventory_size = 4

data:extend({
  industrial_loco,
  linehaul_loco,
})

local base_cargo_wagon = data.raw["cargo-wagon"]["cargo-wagon"]
base_cargo_wagon.icon = "__railway-role-expansion__/graphics/icons/cargo-wagon.png"
base_cargo_wagon.icon_size = 32
base_cargo_wagon.icon_mipmaps = 0
base_cargo_wagon.icons = nil
base_cargo_wagon.max_health = 600 --base 600
base_cargo_wagon.weight = 2000 * settings.startup["rre-weight-multiplicator"].value -- base 1000
base_cargo_wagon.max_speed = 1.6 -- base 1.5
base_cargo_wagon.braking_force = 4
base_cargo_wagon.friction_force = 0.50
base_cargo_wagon.air_resistance = 0.030
base_cargo_wagon.inventory_size = 60
if settings.startup["rre-old-sounds"].value then
  base_cargo_wagon.working_sound = wheel_working_sound
  base_cargo_wagon.drive_over_tie_trigger = tie_sound
end

local base_fluid_wagon = data.raw["fluid-wagon"]["fluid-wagon"]
base_fluid_wagon.icon = "__railway-role-expansion__/graphics/icons/fluid-wagon.png"
base_fluid_wagon.icon_size = 32
base_fluid_wagon.icon_mipmaps = 0
base_fluid_wagon.icons = nil
base_fluid_wagon.max_health = 600 --base 600
base_fluid_wagon.weight = 2000 * settings.startup["rre-weight-multiplicator"].value -- base 1000
base_fluid_wagon.max_speed = 1.6 -- base 1.5
base_fluid_wagon.braking_force = 4
base_fluid_wagon.friction_force = 0.50
base_fluid_wagon.air_resistance = 0.030
base_fluid_wagon.capacity = 35000 -- base 25000
base_fluid_wagon.color = {r = 0, g = 0, b = 0, a = 0}
if settings.startup["rre-old-sounds"].value then
  base_fluid_wagon.working_sound = wheel_working_sound
  base_fluid_wagon.drive_over_tie_trigger = tie_sound
end

local artillery_wagon = data.raw["artillery-wagon"]["artillery-wagon"]
artillery_wagon.max_health = 1000 --base 600
artillery_wagon.weight = 3000 * settings.startup["rre-weight-multiplicator"].value -- base 4000
artillery_wagon.max_speed = 1.5 -- base 1.5
artillery_wagon.braking_force = 4
if settings.startup["rre-old-sounds"].value then
  artillery_wagon.working_sound = wheel_working_sound
  artillery_wagon.drive_over_tie_trigger = tie_sound
end

local industrial_cargo_wagon = table.deepcopy(base_cargo_wagon)
industrial_cargo_wagon.name = "rre-industrial-cargo-wagon"
industrial_cargo_wagon.minable.result = "rre-industrial-cargo-wagon"
industrial_cargo_wagon.icon = "__railway-role-expansion__/graphics/icons/heavy-cargo-wagon.png"
industrial_cargo_wagon.color = {r = 0, g = 0.53, b = 0, a = 0.5}
industrial_cargo_wagon.max_health = 800
industrial_cargo_wagon.weight = 2000 * settings.startup["rre-weight-multiplicator"].value
industrial_cargo_wagon.max_speed = 1.1 -- 237.6 km/h
industrial_cargo_wagon.braking_force = 15
industrial_cargo_wagon.friction_force = 0.2
industrial_cargo_wagon.air_resistance = 0.05
industrial_cargo_wagon.inventory_size = 80

local industrial_fluid_wagon = table.deepcopy(base_fluid_wagon)
industrial_fluid_wagon.name = "rre-industrial-fluid-wagon"
industrial_fluid_wagon.minable.result = "rre-industrial-fluid-wagon"
industrial_fluid_wagon.icon = "__railway-role-expansion__/graphics/icons/heavy-fluid-wagon.png"
industrial_fluid_wagon.color = {r = 0, g = 0.53, b = 0, a = 0.5}
industrial_fluid_wagon.max_health = 800
industrial_fluid_wagon.weight = 2000 * settings.startup["rre-weight-multiplicator"].value
industrial_fluid_wagon.max_speed = 1.1
industrial_fluid_wagon.braking_force = 15
industrial_fluid_wagon.friction_force = 0.2
industrial_fluid_wagon.air_resistance = 0.05
industrial_fluid_wagon.capacity = 40000

local linehaul_cargo_wagon = table.deepcopy(base_cargo_wagon)
linehaul_cargo_wagon.name = "rre-linehaul-cargo-wagon"
linehaul_cargo_wagon.minable.result = "rre-linehaul-cargo-wagon"
linehaul_cargo_wagon.icon = "__railway-role-expansion__/graphics/icons/express-cargo-wagon.png"
linehaul_cargo_wagon.color = {r = 0.10, g = 0.19, b = 0.80, a = 0.5}
linehaul_cargo_wagon.max_health = 500
linehaul_cargo_wagon.weight = 2000 * settings.startup["rre-weight-multiplicator"].value
linehaul_cargo_wagon.max_speed = 2.8
linehaul_cargo_wagon.braking_force = 1
linehaul_cargo_wagon.friction_force = 0.20
linehaul_cargo_wagon.air_resistance = 0.001
linehaul_cargo_wagon.inventory_size = 50

local linehaul_fluid_wagon = table.deepcopy(base_fluid_wagon)
linehaul_fluid_wagon.name = "rre-linehaul-fluid-wagon"
linehaul_fluid_wagon.minable.result = "rre-linehaul-fluid-wagon"
linehaul_fluid_wagon.icon = "__railway-role-expansion__/graphics/icons/express-fluid-wagon.png"
linehaul_fluid_wagon.color = {r = 0.10, g = 0.19, b = 0.80, a = 0.5}
linehaul_fluid_wagon.max_health = 500
linehaul_fluid_wagon.weight = 2000 * settings.startup["rre-weight-multiplicator"].value
linehaul_fluid_wagon.max_speed = 2.8
linehaul_fluid_wagon.braking_force = 1
linehaul_fluid_wagon.friction_force = 0.20
linehaul_fluid_wagon.air_resistance = 0.001
linehaul_fluid_wagon.capacity = 30000

data:extend({
  industrial_cargo_wagon,
  industrial_fluid_wagon,
  linehaul_cargo_wagon,
  linehaul_fluid_wagon,
})
