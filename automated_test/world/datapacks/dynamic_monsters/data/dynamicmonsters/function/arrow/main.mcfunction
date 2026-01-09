# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={ticQuarter=1..1}] as @e[type=arrow] store result score @s secondsTillExtinguished run data get entity @s Fire
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..2}] run function dynamicmonsters:arrow/main_sub/4
