# Define

# Main
function dynamicecosystems:shrubs/version_conflict/feature_2
function dynamicecosystems:shrubs/version_conflict/feature_3
function dynamicecosystems:shrubs/version_conflict/feature_0
function dynamicecosystems:shrubs/version_conflict/feature_1
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=21..28}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if entity @s[scores={currentTemperature=10..25}] if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:forest_flowers
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=18..20}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if entity @s[scores={currentTemperature=13..28}] if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_flower_forest
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=14..17}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if entity @s[scores={currentTemperature=8..20}] if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_default
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=10..13}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if entity @s[scores={currentTemperature=5..23}] if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_meadow
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=6..10}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if entity @s[scores={currentTemperature=7..21}] if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_plain
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=2..5}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if entity @s[scores={currentTemperature=16..35}] if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_swamp
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=0..1}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if entity @s[scores={currentTemperature=5..19}] if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_cherry

execute if entity @s[scores={currentTemperature=..0}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if block ~1 ~ ~ #minecraft:flowers run fill ~1 ~ ~ ~1 ~ ~ air replace #minecraft:flowers
execute if entity @s[scores={currentTemperature=..0}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if block ~-1 ~ ~ #minecraft:flowers run fill ~-1 ~ ~ ~-1 ~ ~ air replace #minecraft:flowers
execute if entity @s[scores={currentTemperature=..0}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if block ~ ~ ~1 #minecraft:flowers run fill ~ ~ ~1 ~ ~ ~1 air replace #minecraft:flowers
execute if entity @s[scores={currentTemperature=..0}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if block ~ ~ ~-1 #minecraft:flowers run fill ~ ~ ~-1 ~ ~ ~-1 air replace #minecraft:flowers
execute if entity @s[scores={currentTemperature=..0}] as @e[tag=gstools_cursor,type=marker] at @s unless entity @a[scores={playerIsActive=1..},distance=0..100] if block ~ ~ ~ #minecraft:flowers run fill ~ ~ ~ ~ ~ ~ air replace #minecraft:flowers
