# Define
scoreboard objectives add numberOfPortals dummy
scoreboard objectives add attackPortalDeleteTic dummy

# Spawn
fill 3 0 0 0 4 0 air replace
execute as @e[type=marker,tag=attack_portal_node] at @s run fill ~2 ~ ~ ~1 ~3 ~ air replace void_air
execute as @e[type=marker,tag=attack_portal_node] at @s run fill ~2 ~ ~ ~1 ~3 ~ air replace cave_air

execute as @e[type=marker,tag=attack_portal_node] at @s unless block ~ ~-1 ~ #gstools:air unless block ~1 ~-1 ~ #gstools:air unless block ~2 ~-1 ~ #gstools:air unless block ~3 ~-1 ~ #gstools:air if blocks ~2 ~ ~ ~1 ~3 ~ 1 0 0 all run tag @s add portal_gen
execute as @e[type=marker,tag=attack_portal_node] at @s unless entity @s[tag=portal_gen] run spreadplayers ~ ~ 1 10 false @s

execute as @e[type=marker,tag=attack_portal_node,tag=portal_gen,tag=!portal_generated] at @s run fill ~ ~-1 ~ ~3 ~-1 ~ obsidian replace
execute as @e[type=marker,tag=attack_portal_node,tag=portal_gen,tag=!portal_generated] at @s run fill ~3 ~-1 ~ ~3 ~4 ~ obsidian replace
execute as @e[type=marker,tag=attack_portal_node,tag=portal_gen,tag=!portal_generated] at @s run fill ~ ~-1 ~ ~ ~4 ~ obsidian replace
execute as @e[type=marker,tag=attack_portal_node,tag=portal_gen,tag=!portal_generated] at @s run fill ~ ~4 ~ ~3 ~4 ~ obsidian replace
execute as @e[type=marker,tag=attack_portal_node,tag=portal_gen,tag=!portal_generated] at @s run fill ~1 ~ ~ ~1 ~ ~ fire replace
execute as @e[type=marker,tag=attack_portal_node,tag=portal_gen,tag=!portal_generated] at @s run tag @s add portal_generated

# Remove
execute as @e[type=marker,tag=attack_portal_node,tag=portal_generated] at @s unless block ~1 ~1 ~ nether_portal run tag @s add delete_portal

execute as @e[type=marker,tag=attack_portal_node,tag=delete_portal] run scoreboard players add @s attackPortalDeleteTic 1
execute as @e[type=marker,tag=attack_portal_node,tag=delete_portal,scores={attackPortalDeleteTic=..300}] at @s run particle reverse_portal ~1.5 ~2 ~ 0 0 0 1 100 normal @a
execute as @e[type=marker,tag=attack_portal_node,tag=delete_portal,scores={attackPortalDeleteTic=300..}] at @s run summon fireball ~1.5 ~10 ~ {ExplosionPower:8,Motion:[0,-5,0]}
execute as @e[type=marker,tag=attack_portal_node,tag=delete_portal,scores={attackPortalDeleteTic=300..}] run kill @s