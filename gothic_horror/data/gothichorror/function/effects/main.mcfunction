# Define
scoreboard objectives add lastWeather2StormSpawn dummy

# Main
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=1000..}] if entity @s[scores={horrorIndex=50..}] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=1000..}] if entity @s[scores={horrorIndex=50..}] if score @s horrorIndex > @s random1000 run kill @e[type=marker,tag=weather2_node]
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=1000..}] if entity @s[scores={horrorIndex=50..}] if score @s horrorIndex > @s random1000 as @a unless entity @s[scores={isRainingWeather2=55..}] at @s run summon marker ~ ~ ~ {Tags:['weather2_node']}
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=1000..}] if entity @s[scores={horrorIndex=50..}] if score @s horrorIndex > @s random1000 as @a unless entity @s[scores={isRainingWeather2=55..}] at @s run function gstools:compat/weather2/comm/summon/thunder
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=1000..}] if entity @s[scores={horrorIndex=50..}] if score @s horrorIndex > @s random100 run weather rain 1000
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=1000..}] if entity @s[scores={horrorIndex=50..}] if score @s horrorIndex > @s random1000 run weather thunder 1000
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=1000..}] run scoreboard players set @s lastWeather2StormSpawn 0

execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s 41 -= @s averageTpsGothicHorror
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s 41 -= @s averageTps
execute as @e[tag=gstools_worker,type=marker,scores={21=..0}] run scoreboard players set @s 41 1
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s lastWeather2StormSpawn += @s 41
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s 41 41

# Sleeping
schedule function gothichorror:effects/sleeping/main 1t append