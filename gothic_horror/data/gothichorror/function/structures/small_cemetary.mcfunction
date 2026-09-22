# Define

# Main
execute as @e[tag=is_human,type=!player] at @s unless biome ~ ~ ~ #minecraft:has_structure/desert_pyramid unless entity @e[tag=gothic_horror_cemetary,type=marker,distance=0..100] run summon marker ~ ~ ~ {Tags:['gothic_horror_cemetary']}

execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] run scoreboard players set @s _spreadRange 100
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~8 ~ ~ unless predicate gstools:mostlyair positioned ~-8 ~ ~ run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~8 ~1 ~ unless predicate gstools:mostlyair positioned ~-8 ~-1 ~ run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~8 ~ ~ unless block ~ ~-1 ~ #minecraft:dirt positioned ~-8 ~ ~ run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~-8 ~ ~ unless predicate gstools:mostlyair positioned ~8 ~ ~ run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~-8 ~1 ~ unless predicate gstools:mostlyair positioned ~8 ~-1 ~ run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~-8 ~ ~ unless block ~ ~-1 ~ #minecraft:dirt positioned ~8 ~ ~ run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~ ~ ~8 unless predicate gstools:mostlyair positioned ~ ~ ~-8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~ ~1 ~8 unless predicate gstools:mostlyair positioned ~ ~-1 ~-8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~ ~ ~8 unless block ~ ~-1 ~ #minecraft:dirt positioned ~ ~ ~-8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~ ~ ~-8 unless predicate gstools:mostlyair positioned ~ ~ ~8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~ ~1 ~-8 unless predicate gstools:mostlyair positioned ~ ~-1 ~8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~ ~ ~-8 unless block ~ ~-1 ~ #minecraft:dirt positioned ~ ~ ~8 run tag @s add redo_sp

execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~8 ~ ~8 unless predicate gstools:mostlyair positioned ~-8 ~ ~-8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~8 ~1 ~8 unless predicate gstools:mostlyair positioned ~-8 ~-1 ~-8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~8 ~ ~8 unless block ~ ~-1 ~ #minecraft:dirt positioned ~-8 ~ ~-8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~-8 ~ ~8 unless predicate gstools:mostlyair positioned ~8 ~ ~-8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~-8 ~1 ~8 unless predicate gstools:mostlyair positioned ~8 ~-1 ~-8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~-8 ~ ~8 unless block ~ ~-1 ~ #minecraft:dirt positioned ~8 ~ ~-8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~8 ~ ~-8 unless predicate gstools:mostlyair positioned ~-8 ~ ~8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~8 ~1 ~-8 unless predicate gstools:mostlyair positioned ~-8 ~-1 ~8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~8 ~ ~-8 unless block ~ ~-1 ~ #minecraft:dirt positioned ~-8 ~ ~8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~-8 ~ ~-8 unless predicate gstools:mostlyair positioned ~8 ~ ~8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~-8 ~1 ~-8 unless predicate gstools:mostlyair positioned ~8 ~-1 ~8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s positioned ~-8 ~ ~-8 unless block ~ ~-1 ~ #minecraft:dirt positioned ~8 ~ ~8 run tag @s add redo_sp
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s if entity @e[tag=gothic_horror_cemetary,type=marker,distance=1..100] run kill @s

execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s unless entity @s[tag=redo_sp] run function gothichorror:structures/small_cemetary/gen
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s unless entity @s[tag=redo_sp] run tag @s add gothic_horror_cemetary_setup
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s if entity @s[tag=redo_sp] run function gstools:cursor/fast_spread
execute as @e[type=marker,tag=gothic_horror_cemetary,tag=!gothic_horror_cemetary_setup] at @s if entity @s[tag=redo_sp] run tag @s remove redo_sp

# Gravestone
execute as @e[type=marker,tag=gothic_grave_stone] run scoreboard players set @s range 10
execute as @e[type=marker,tag=gothic_grave_stone] at @s run function gstools:util/fast_sp_3d

# <node:no_compile_mode>
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless block ~ ~-1 ~ #minecraft:dirt run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless block ~ ~-1 ~ #minecraft:dirt run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless block ~ ~-1 ~ #minecraft:dirt run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless block ~ ~-1 ~ #minecraft:dirt run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless block ~ ~-1 ~ #minecraft:dirt run kill @s
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless predicate gstools:mostlyair run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless predicate gstools:mostlyair run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless predicate gstools:mostlyair run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless predicate gstools:mostlyair run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s unless predicate gstools:mostlyair run kill @s
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~ unless predicate gstools:mostlyair positioned ~ ~-1 ~ run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~ unless predicate gstools:mostlyair positioned ~ ~-1 ~ run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~ unless predicate gstools:mostlyair positioned ~ ~-1 ~ run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~ unless predicate gstools:mostlyair positioned ~ ~-1 ~ run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~ unless predicate gstools:mostlyair positioned ~ ~-1 ~ run kill @s
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~ ~-1 unless predicate gstools:mostlyair positioned ~ ~ ~1 run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~ ~-1 unless predicate gstools:mostlyair positioned ~ ~ ~1 run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~ ~-1 unless predicate gstools:mostlyair positioned ~ ~ ~1 run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~ ~-1 unless predicate gstools:mostlyair positioned ~ ~ ~1 run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~ ~-1 unless predicate gstools:mostlyair positioned ~ ~ ~1 run kill @s
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~-1 unless predicate gstools:mostlyair positioned ~ ~-1 ~1 run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~-1 unless predicate gstools:mostlyair positioned ~ ~-1 ~1 run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~-1 unless predicate gstools:mostlyair positioned ~ ~-1 ~1 run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~-1 unless predicate gstools:mostlyair positioned ~ ~-1 ~1 run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s positioned ~ ~1 ~-1 unless predicate gstools:mostlyair positioned ~ ~-1 ~1 run kill @s
execute as @e[type=marker,tag=gothic_grave_stone] at @s if entity @e[tag=gothic_grave_stone,type=marker,distance=1..2] run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s if entity @e[tag=gothic_grave_stone,type=marker,distance=1..2] run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s if entity @e[tag=gothic_grave_stone,type=marker,distance=1..2] run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s if entity @e[tag=gothic_grave_stone,type=marker,distance=1..2] run function gstools:util/fast_sp_3d
execute as @e[type=marker,tag=gothic_grave_stone] at @s if entity @e[tag=gothic_grave_stone,type=marker,distance=1..2] run kill @s
# <node:no_compile_mode/>

execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt run function gstools:util/random
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=..25}] run setblock ~ ~ ~ cobblestone
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=25..49}] run setblock ~ ~ ~ mossy_cobblestone
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=50..75}] run fill ~ ~ ~ ~ ~ ~-1 mossy_cobblestone
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=75..100}] run fill ~ ~ ~ ~ ~ ~-1 cobblestone

execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt run function gstools:util/random
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=..50}] unless block ~ ~ ~-1 #c:cobblestones run setblock ~ ~1 ~ cobblestone_stairs[facing=west]
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=51..}] unless block ~ ~ ~-1 #c:cobblestones run setblock ~ ~1 ~ mossy_cobblestone_stairs[facing=west]
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=..50}] if block ~ ~ ~-1 #c:cobblestones run setblock ~ ~1 ~ cobblestone_stairs[facing=north]
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=51..}] if block ~ ~ ~-1 #c:cobblestones run setblock ~ ~1 ~ mossy_cobblestone_stairs[facing=north]
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt run function gstools:util/random
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=..50}] if block ~ ~ ~-1 #c:cobblestones run setblock ~ ~1 ~-1 cobblestone_stairs[facing=south]
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=51..}] if block ~ ~ ~-1 #c:cobblestones run setblock ~ ~1 ~-1 mossy_cobblestone_stairs[facing=south]

execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt run fill ~1 ~-3 ~ ~1 ~-3 ~ chest[facing=south,type=left]{LootTable:"minecraft:chests/desert_pyramid",CustomName:"Coffin"} replace
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt run fill ~2 ~-3 ~ ~2 ~-3 ~ chest[facing=south,type=left]{LootTable:"minecraft:chests/desert_pyramid",CustomName:"Coffin"} replace
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt run fill ~1 ~-1 ~ ~2 ~-2 ~ dirt replace #minecraft:mineable/pickaxe

execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt run function gstools:util/random
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=..10}] run summon marker ~1 ~ ~ {Tags:['cemetary_spawn_zombie_node']}

kill @e[type=marker,tag=gothic_grave_stone]