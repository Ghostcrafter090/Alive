# Define
scoreboard objectives add effectAmplifier dummy
scoreboard objectives add effectAmplifierWorker dummy

# Main
execute as @s run function gstools:util/random
scoreboard players set @s effectAmplifier 0
execute as @s store result score @s effectAmplifierWorker run data get entity @e[type=ghast,limit=1] active_effects[-3].amplifier
scoreboard players operation @s effectAmplifier += @s effectAmplifierWorker
execute as @s store result score @s effectAmplifierWorker run data get entity @e[type=ghast,limit=1] active_effects[-2].amplifier
scoreboard players operation @s effectAmplifier += @s effectAmplifierWorker
execute as @s store result score @s effectAmplifierWorker run data get entity @e[type=ghast,limit=1] active_effects[-1].amplifier
scoreboard players operation @s effectAmplifier += @s effectAmplifierWorker
scoreboard players operation @s random10 += @s effectAmplifier 

execute as @e[type=ghast,sort=random,limit=1] store result entity @s ExplosionPower int 1 run scoreboard players get @s random10

execute if entity @s[scores={random1000=..5}] as @s at @s run summon arrow ~ ~2 ~ {Tags:['make_ghast_attack']}
execute as @e[type=arrow,tag=make_ghast_attack] at @s run data modify entity @s Owner set from entity @e[tag=walkable,distance=8..,sort=nearest,limit=1] UUID