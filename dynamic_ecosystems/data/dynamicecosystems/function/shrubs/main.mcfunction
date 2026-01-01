# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=78..100}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:patch_grass
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=67..77}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:patch_tall_grass
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=56..66}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:patch_taiga_grass
function dynamicecosystems:shrubs/version_conflict/feature_0
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=37..44}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:patch_grass_jungle
function dynamicecosystems:shrubs/version_conflict/feature_1
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=21..28}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:forest_flowers
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=18..20}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_flower_forest
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=14..17}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_default
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=10..13}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_meadow
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=6..10}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_plain
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=2..5}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_swamp
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=0..1}] as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-1 ~ #minecraft:dirt run place feature minecraft:flower_cherry