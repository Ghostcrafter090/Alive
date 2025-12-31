# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={ticQuarter=1..1}] as @e[type=arrow] store result score @s secondsTillExtinguished run data get entity @s Fire
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..15}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s unless block ~ ~-1 ~ #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..15}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s unless block ~ ~1 ~ #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[up=true] replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..15}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s unless block ~1 ~ ~ #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[east=true] replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..15}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s unless block ~-1 ~ ~ #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[west=true] replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..15}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s unless block ~ ~ ~1 #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[south=true] replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..15}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s unless block ~ ~ ~-1 #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[north=true] replace #minecraft:air
