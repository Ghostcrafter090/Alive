# Define
scoreboard objectives add currentTemperatureWitherModif dummy

# Main
function bossprogression:bosses/wither/portal/spawn
function bossprogression:bosses/wither/portal/run

# Effects
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[type=piglin,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run data merge entity @s {IsImmuneToZombification:1b,PersistenceRequired:1b} 
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[type=piglin,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run tag @s add immune_to_zombification

execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[type=hoglin,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run data merge entity @s {IsImmuneToZombification:1b,PersistenceRequired:1b} 
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[type=hoglin,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run tag @s add immune_to_zombification

execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] run weather clear
execute as @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1},tag=!current_wither_temperature_add] if entity @e[scores={timeOfDay=..1000}] run scoreboard players add @s currentTemperatureWitherModif 1
execute as @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1},tag=!current_wither_temperature_add] if entity @e[scores={timeOfDay=..1000}] run tag @s add current_wither_temperature_add
execute as @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1},tag=!current_wither_temperature_add] unless entity @e[scores={timeOfDay=..1000}] run tag @s remove current_wither_temperature_add

execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~ ~ water run fill ~ ~ ~ ~ ~ ~ lava replace water
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~1 ~ ~ obsidian run fill ~1 ~ ~ ~1 ~ ~ lava replace obsidian
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~-1 ~ ~ obsidian run fill ~-1 ~ ~ ~-1 ~ ~ lava replace obsidian
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~ ~1 obsidian run fill ~ ~ ~1 ~ ~ ~1 lava replace obsidian
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~ ~-1 obsidian run fill ~ ~ ~-1 ~ ~ ~-1 lava replace obsidian
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~1 ~ obsidian run fill ~ ~1 ~ ~ ~1 ~ lava replace obsidian
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @e[type=fireball] at @s if block ~ ~-1 ~ obsidian run fill ~ ~-1 ~ ~ ~-1 ~ lava replace obsidian

execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] as @a at @s run particle flame ~ ~ ~ 40 40 40 0 50