# Define
scoreboard objectives add secondsTillExtinguished dummy

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={ticQuarter=1..1}] as @e[type=creeper] store result score @s secondsTillExtinguished run data get entity @s Fire
execute as @e[type=creeper,scores={secondsTillExtinguished=1..}] run data modify entity @s ignited set value 1b