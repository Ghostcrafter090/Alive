# Define
scoreboard objectives add secondsTillExtinguished dummy

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={ticQuarter=1..1}] as @e[type=creeper] store result score @s secondsTillExtinguished run data get entity @s Fire
execute as @e[type=creeper,scores={secondsTillExtinguished=1..}] run data modify entity @s ignited set value 1b

execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=..5}] as @e[type=creeper] at @s run summon arrow ~ ~2 ~ {Tags:['make_creeper_attack']}
execute as @e[type=arrow,tag=make_creeper_attack] at @s run data modify entity @s Owner set from entity @e[tag=walkable,distance=3..,sort=nearest,limit=1] UUID