# Define
scoreboard objectives add currentTemperatureWitherModif dummy
scoreboard objectives add currentDaytimeNetherTicker dummy
# Main
function bossprogression:bosses/wither/portal/spawn
function bossprogression:bosses/wither/portal/run

# Effects
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[tag=nether_overworld,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run data merge entity @s {IsImmuneToZombification:1b,PersistenceRequired:1b} 
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[tag=nether_overworld,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run tag @s add immune_to_zombification

execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] run weather clear

execute as @e[tag=gstools_worker,type=marker,limit=1] run scoreboard players operation @s currentDaytimeNetherTicker = @s timeOfDay
execute as @e[tag=gstools_worker,type=marker,limit=1] run scoreboard players operation @s currentDaytimeNetherTicker %= @s 2000
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1},tag=!current_wither_temperature_add] if entity @s[scores={currentDaytimeNetherTicker=..1000}] run scoreboard players add @s currentTemperatureWitherModif 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1},tag=!current_wither_temperature_add] if entity @s[scores={currentDaytimeNetherTicker=..1000}] run tag @s add current_wither_temperature_add
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1},tag=current_wither_temperature_add] unless entity @s[scores={currentDaytimeNetherTicker=..1000}] run tag @s remove current_wither_temperature_add

execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~ ~ water run fill ~ ~ ~ ~ ~ ~ lava replace water
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~1 ~ ~ obsidian run fill ~1 ~ ~ ~1 ~ ~ lava replace obsidian
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~-1 ~ ~ obsidian run fill ~-1 ~ ~ ~-1 ~ ~ lava replace obsidian
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~ ~1 obsidian run fill ~ ~ ~1 ~ ~ ~1 lava replace obsidian
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~ ~-1 obsidian run fill ~ ~ ~-1 ~ ~ ~-1 lava replace obsidian
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~1 ~ obsidian run fill ~ ~1 ~ ~ ~1 ~ lava replace obsidian
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~-1 ~ obsidian run fill ~ ~-1 ~ ~ ~-1 ~ lava replace obsidian

execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @a at @s run particle flame ~ ~ ~ 40 40 40 0 50

execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[tag=!tile,sort=random,limit=1] run function gstools:util/random
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[tag=!tile,sort=random,limit=1] if score @s random1000 < @s currentTemperature at @s run fill ~ ~ ~ ~ ~ ~ fire replace #gstools:air
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[tag=!tile,sort=random,limit=1] if score @s random1000 < @s currentTemperature at @s run tag @s add wither_fire
execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[tag=!tile,sort=random,limit=1] if score @s random1000 < @s currentTemperature run schedule function bossprogression:bosses/wither/portal/util/fireout 1t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] if entity @e[tag=gstools_worker,scores={timeOfDay=12500..24000}] run time add 10t