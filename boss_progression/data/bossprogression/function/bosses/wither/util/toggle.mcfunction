# Define
scoreboard objectives add enableWitherBoss dummy

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableWitherBoss=1..1}] as @e[type=wither,tag=!wither_disable] run data modify entity @s Invulnerable set value 1b
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableWitherBoss=1..1}] as @e[type=wither,tag=!wither_disable] run tag @s add wither_disable

execute if entity @e[tag=gstools_worker,type=marker,scores={enableWitherBoss=1..1}] as @e[type=wither,tag=wither_disable] run data modify entity @s Invulnerable set value 0b
execute if entity @e[tag=gstools_worker,type=marker,scores={enableWitherBoss=1..1}] as @e[type=wither,tag=wither_disable] run tag @s remove wither_disable