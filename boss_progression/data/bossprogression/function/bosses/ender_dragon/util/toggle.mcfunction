# Define
scoreboard objectives add enableEnderDragonBoss dummy

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableEnderDragonBoss=1..1}] as @e[type=ender_dragon,tag=!ender_dragon_disable] run data modify entity @s Invulnerable set value 1b
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableEnderDragonBoss=1..1}] as @e[type=ender_dragon,tag=!ender_dragon_disable] run tag @s add ender_dragon_disable

execute if entity @e[tag=gstools_worker,type=marker,scores={enableEnderDragonBoss=1..1}] as @e[type=ender_dragon,tag=ender_dragon_disable] run data modify entity @s Invulnerable set value 0b
execute if entity @e[tag=gstools_worker,type=marker,scores={enableEnderDragonBoss=1..1}] as @e[type=ender_dragon,tag=ender_dragon_disable] run tag @s remove ender_dragon_disable