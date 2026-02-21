# Define
scoreboard objectives add numberOfPortals dummy
scoreboard objectives add attackPortalDeleteTic dummy
scoreboard objectives add attackPortalNodeKillTic dummy

# Spawn
fill 3 0 0 0 4 0 air replace
execute as @e[type=marker,tag=attack_portal_node,tag=!portal_gen] at @s run fill ~2 ~ ~ ~1 ~3 ~ air replace void_air
execute as @e[type=marker,tag=attack_portal_node,tag=!portal_gen] at @s run fill ~2 ~ ~ ~1 ~3 ~ air replace cave_air

execute as @e[type=marker,tag=attack_portal_node,tag=!portal_gen] at @s unless block ~ ~-1 ~ #gstools:air unless block ~1 ~-1 ~ #gstools:air unless block ~2 ~-1 ~ #gstools:air unless block ~3 ~-1 ~ #gstools:air if blocks ~2 ~ ~ ~1 ~3 ~ 1 0 0 all run tag @s add portal_gen
execute as @e[type=marker,tag=attack_portal_node,tag=!portal_gen] at @s run spreadplayers ~ ~ 1 10 false @s
execute as @e[type=marker,tag=attack_portal_node,tag=!portal_gen] at @s run scoreboard players add @s attackPortalNodeKillTic 1
execute as @e[type=marker,tag=attack_portal_node,tag=!portal_gen] at @s if entity @s[scores={attackPortalNodeKillTic=10..}] run kill @s

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
execute as @e[type=marker,tag=attack_portal_node,tag=delete_portal,scores={attackPortalDeleteTic=..300}] run function gstools:util/random
execute as @e[type=marker,tag=attack_portal_node,tag=delete_portal,scores={attackPortalDeleteTic=..300}] if entity @s[scores={random100=..10}] at @s run playsound minecraft:ambient.warped_forest.mood master @a ~ ~ ~ 1
execute as @e[type=marker,tag=attack_portal_node,tag=delete_portal,scores={attackPortalDeleteTic=300..}] at @s run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 magma_block replace obsidian
execute as @e[type=marker,tag=attack_portal_node,tag=delete_portal,scores={attackPortalDeleteTic=300..}] at @s run summon fireball ~1.5 ~10 ~ {ExplosionPower:8,Motion:[0,-5,0]}
execute as @e[type=marker,tag=attack_portal_node,tag=delete_portal,scores={attackPortalDeleteTic=300..}] run kill @s

# GeoLocate
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[tag=gstools_cursor] at @s unless entity @e[tag=attack_portal_node,distance=..120] run summon marker ~ ~ ~ {Tags:['attack_portal_node']}
execute if entity @e[tag=gstools_worker,type=marker,scores={enchantedWitherRoseHasBeenSpawned=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={witherHasBeenKilled=1..1}] as @e[tag=attack_portal_node] run tag @s add delete_portal