# Define

# Main
fill ~8 ~ ~8 ~-8 ~ ~-8 mossy_stone_brick_wall replace #gstools:air
fill ~7 ~ ~7 ~-7 ~ ~-7 air replace mossy_stone_brick_wall
fill ~8 ~ ~2 ~8 ~3 ~-2 mossy_stone_brick_wall replace #gstools:air
fill ~8 ~ ~1 ~8 ~2 ~-1 air replace mossy_stone_brick_wall

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..75}] run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
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

execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt run function gstools:util/random
execute as @e[type=marker,tag=gothic_grave_stone] at @s if block ~ ~-1 ~ #minecraft:dirt if entity @s[scores={random100=..10}] run summon marker ~1 ~ ~ {Tags:['cemetary_spawn_zombie_node']}

kill @e[tag=gothic_grave_stone]