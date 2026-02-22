# Define
scoreboard objectives add enablePillagerBoss dummy

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={enablePillagerBoss=1..1}] as @e[type=pillager,tag=!pillager_disable] run data modify entity @s Invulnerable set value 1b
execute unless entity @e[tag=gstools_worker,type=marker,scores={enablePillagerBoss=1..1}] as @e[type=pillager,tag=!pillager_disable] run tag @s add pillager_disable

execute if entity @e[tag=gstools_worker,type=marker,scores={enablePillagerBoss=1..1}] as @e[type=pillager,tag=pillager_disable] run data modify entity @s Invulnerable set value 0b
execute if entity @e[tag=gstools_worker,type=marker,scores={enablePillagerBoss=1..1}] as @e[type=pillager,tag=pillager_disable] run tag @s remove pillager_disable