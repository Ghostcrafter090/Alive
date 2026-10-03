# Define
scoreboard objectives add undeadExpandedRegulator dummy
# Main
schedule function undeadexpanded:hallow/main 1t append

# Zombie Spawn Nodes
execute as @e[type=marker,tag=cemetary_spawn_zombie_node] at @s as @a[distance=0..4] at @s run function gstools:util/light_level
execute as @e[type=marker,tag=cemetary_spawn_zombie_node] at @s if entity @a[distance=0..4,scores={lightLevel=..7}] run function gstools:util/random
execute as @e[type=marker,tag=cemetary_spawn_zombie_node] at @s if entity @a[distance=0..4,scores={lightLevel=..7}] if entity @s[scores={random100=..50}] run summon zombie_villager ~ ~ ~
execute as @e[type=marker,tag=cemetary_spawn_zombie_node] at @s if entity @a[distance=0..4,scores={lightLevel=..7}] unless entity @s[scores={random100=..50}] run summon skeleton ~ ~ ~
execute as @e[type=marker,tag=cemetary_spawn_zombie_node] at @s if entity @a[distance=0..4,scores={lightLevel=..7}] run kill @s

execute as @e[type=marker,tag=gstools_worker] run scoreboard players add @s undeadExpandedRegulator 1
execute if entity @e[type=marker,tag=gstools_worker,scores={undeadExpandedRegulator=5..}] run schedule function undeadexpanded:structures/small_cemetary 1t append
execute if entity @e[type=marker,tag=gstools_worker,scores={undeadExpandedRegulator=5..}] run scoreboard players set @s undeadExpandedRegulator 0