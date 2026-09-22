# Define

# Main
execute as @e[tag=is_human,type=!player] at @s unless entity @e[tag=gothic_horror_cemetary,type=marker,distance=0..100] run summon marker ~ ~ ~ {Tags:['gothic_horror_cemetary']}

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