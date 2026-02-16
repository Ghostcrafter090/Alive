# Define

# Main
function bossprogression:bosses/wither/portal/spawn
function bossprogression:bosses/wither/portal/run

# Effects
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[type=piglin,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run data merge entity @s {IsImmuneToZombification:1b} 
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[type=piglin,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run tag @s add immune_to_zombification

execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[type=hoglin,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run data merge entity @s {IsImmuneToZombification:1b} 
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[type=hoglin,tag=!immune_to_zombification] at @s if dimension minecraft:overworld run tag @s add immune_to_zombification