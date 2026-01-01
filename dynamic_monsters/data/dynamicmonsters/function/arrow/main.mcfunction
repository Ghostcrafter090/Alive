# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={ticQuarter=1..1}] as @e[type=arrow] store result score @s secondsTillExtinguished run data get entity @s Fire
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..2}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s if block ~ ~ ~ #minecraft:air unless block ~ ~-1 ~ #minecraft:air if block ~ ~ ~ #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire replace
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..2}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s if block ~ ~ ~ #minecraft:air unless block ~ ~1 ~ #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[up=true] replace
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..2}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s if block ~ ~ ~ #minecraft:air unless block ~1 ~ ~ #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[east=true] replace
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..2}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s if block ~ ~ ~ #minecraft:air unless block ~-1 ~ ~ #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[west=true] replace
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..2}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s if block ~ ~ ~ #minecraft:air unless block ~ ~ ~1 #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[south=true] replace
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..2}] as @e[type=arrow,scores={secondsTillExtinguished=1..},sort=random,limit=1] at @s if block ~ ~ ~ #minecraft:air unless block ~ ~ ~-1 #minecraft:air run fill ~ ~ ~ ~ ~ ~ fire[north=true] replace
