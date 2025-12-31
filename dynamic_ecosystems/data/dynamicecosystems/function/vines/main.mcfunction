# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..3}] as @e[tag=gstools_cursor] at @s unless biome ~ ~ ~ #c:is_dry if block ~1 ~-1 ~ #minecraft:air if block ~1 ~-2 ~ #minecraft:air if block ~1 ~-3 ~ #minecraft:air if block ~1 ~-4 ~ #minecraft:air run fill ~1 ~-1 ~ ~1 ~-1 ~ vine[west=true] replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..3}] as @e[tag=gstools_cursor] at @s unless biome ~ ~ ~ #c:is_dry if block ~-1 ~-1 ~ #minecraft:air if block ~-1 ~-2 ~ #minecraft:air if block ~-1 ~-3 ~ #minecraft:air if block ~-1 ~-4 ~ #minecraft:air run fill ~-1 ~-1 ~ ~-1 ~-1 ~ vine[east=true] replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..3}] as @e[tag=gstools_cursor] at @s unless biome ~ ~ ~ #c:is_dry if block ~ ~-1 ~1 #minecraft:air if block ~ ~-2 ~1 #minecraft:air if block ~ ~-3 ~1 #minecraft:air if block ~ ~-4 ~1 #minecraft:air run fill ~ ~-1 ~1 ~ ~-1 ~1 vine[north=true] replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..3}] as @e[tag=gstools_cursor] at @s unless biome ~ ~ ~ #c:is_dry if block ~ ~-1 ~-1 #minecraft:air if block ~ ~-2 ~-1 #minecraft:air if block ~ ~-3 ~-1 #minecraft:air if block ~ ~-4 ~-1 #minecraft:air run fill ~ ~-1 ~-1 ~ ~-1 ~-1 vine[south=true] replace #minecraft:air


