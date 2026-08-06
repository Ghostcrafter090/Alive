# Define
scoreboard objectives add secondsTillExtinguished dummy

# Main
say "[alive_command_limit_trace_debug] dynamicmonsters:creeper/main"
execute if entity @e[tag=gstools_worker,type=marker,scores={ticQuarter=1..1}] as @e[type=creeper] store result score @s secondsTillExtinguished run data get entity @s Fire
execute as @e[type=creeper,scores={secondsTillExtinguished=1..}] run data modify entity @s ignited set value 1b
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=..4}] as @e[type=creeper,sort=random,limit=1] at @s run damage @s 0.0001 minecraft:mob_attack by @e[tag=!tile,type=!creeper,sort=nearest,distance=1..,limit=1] from @e[tag=!tile,type=!creeper,sort=nearest,distance=1..,limit=1]