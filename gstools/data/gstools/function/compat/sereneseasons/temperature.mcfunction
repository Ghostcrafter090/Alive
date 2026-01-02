# Define
scoreboard objectives add currentTemperature dummy
scoreboard objectives add biomeTemperature dummy
scoreboard objectives add dayCycleTemperature dummy

scoreboard players set @s biomeTemperature 0
execute at @s if biome ~ ~ ~-30 #gstools:temperature_-0.7 run scoreboard players remove @s biomeTemperature 25
execute at @s if biome ~ ~ ~-30 #gstools:temperature_-0.5 run scoreboard players remove @s biomeTemperature 12
execute at @s if biome ~ ~ ~-30 #gstools:temperature_-0.3 run scoreboard players remove @s biomeTemperature 7
execute at @s if biome ~ ~ ~-30 #gstools:temperature_-0.2 run scoreboard players remove @s biomeTemperature 5
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.0 run scoreboard players add @s biomeTemperature 0
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.05 run scoreboard players add @s biomeTemperature 1
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.2 run scoreboard players add @s biomeTemperature 5
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.25 run scoreboard players add @s biomeTemperature 6
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.3 run scoreboard players add @s biomeTemperature 8
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.5 run scoreboard players add @s biomeTemperature 12
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.6 run scoreboard players add @s biomeTemperature 15
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 18
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.8 run scoreboard players add @s biomeTemperature 20
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.9 run scoreboard players add @s biomeTemperature 22
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.95 run scoreboard players add @s biomeTemperature 24
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 25
execute at @s if biome ~ ~ ~-30 #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 50


execute at @s if biome ~ ~ ~30 #gstools:temperature_-0.7 run scoreboard players remove @s biomeTemperature 25
execute at @s if biome ~ ~ ~30 #gstools:temperature_-0.5 run scoreboard players remove @s biomeTemperature 12
execute at @s if biome ~ ~ ~30 #gstools:temperature_-0.3 run scoreboard players remove @s biomeTemperature 7
execute at @s if biome ~ ~ ~30 #gstools:temperature_-0.2 run scoreboard players remove @s biomeTemperature 5
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.0 run scoreboard players add @s biomeTemperature 0
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.05 run scoreboard players add @s biomeTemperature 1
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.2 run scoreboard players add @s biomeTemperature 5
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.25 run scoreboard players add @s biomeTemperature 6
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.3 run scoreboard players add @s biomeTemperature 8
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.5 run scoreboard players add @s biomeTemperature 12
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.6 run scoreboard players add @s biomeTemperature 15
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 18
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.8 run scoreboard players add @s biomeTemperature 20
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.9 run scoreboard players add @s biomeTemperature 22
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.95 run scoreboard players add @s biomeTemperature 24
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 25
execute at @s if biome ~ ~ ~30 #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 50


execute at @s if biome ~-30 ~ ~ #gstools:temperature_-0.7 run scoreboard players remove @s biomeTemperature 25
execute at @s if biome ~-30 ~ ~ #gstools:temperature_-0.5 run scoreboard players remove @s biomeTemperature 12
execute at @s if biome ~-30 ~ ~ #gstools:temperature_-0.3 run scoreboard players remove @s biomeTemperature 7
execute at @s if biome ~-30 ~ ~ #gstools:temperature_-0.2 run scoreboard players remove @s biomeTemperature 5
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.0 run scoreboard players add @s biomeTemperature 0
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.05 run scoreboard players add @s biomeTemperature 1
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.2 run scoreboard players add @s biomeTemperature 5
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.25 run scoreboard players add @s biomeTemperature 6
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.3 run scoreboard players add @s biomeTemperature 8
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.5 run scoreboard players add @s biomeTemperature 12
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.6 run scoreboard players add @s biomeTemperature 15
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 18
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.8 run scoreboard players add @s biomeTemperature 20
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.9 run scoreboard players add @s biomeTemperature 22
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.95 run scoreboard players add @s biomeTemperature 24
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 25
execute at @s if biome ~-30 ~ ~ #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 50


execute at @s if biome ~30 ~ ~ #gstools:temperature_-0.7 run scoreboard players remove @s biomeTemperature 25
execute at @s if biome ~30 ~ ~ #gstools:temperature_-0.5 run scoreboard players remove @s biomeTemperature 12
execute at @s if biome ~30 ~ ~ #gstools:temperature_-0.3 run scoreboard players remove @s biomeTemperature 7
execute at @s if biome ~30 ~ ~ #gstools:temperature_-0.2 run scoreboard players remove @s biomeTemperature 5
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.0 run scoreboard players add @s biomeTemperature 0
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.05 run scoreboard players add @s biomeTemperature 1
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.2 run scoreboard players add @s biomeTemperature 5
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.25 run scoreboard players add @s biomeTemperature 6
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.3 run scoreboard players add @s biomeTemperature 8
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.5 run scoreboard players add @s biomeTemperature 12
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.6 run scoreboard players add @s biomeTemperature 15
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 18
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.8 run scoreboard players add @s biomeTemperature 20
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.9 run scoreboard players add @s biomeTemperature 22
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.95 run scoreboard players add @s biomeTemperature 24
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 25
execute at @s if biome ~30 ~ ~ #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 50

scoreboard players operation @s biomeTemperature /= @e[tag=gstools_worker,type=marker,limit=1] 4

scoreboard players operation @s dayCycleTemperature = @e[tag=gstools_worker,type=marker,limit=1] timeOfDay

execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=0..2823}] run scoreboard players operation @s dayCycleTemperature /= @e[tag=gstools_worker,type=marker,limit=1] 300
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=2824..6301}] run scoreboard players operation @s dayCycleTemperature /= @e[tag=gstools_worker,type=marker,limit=1] 2000
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=2824..6301}] run scoreboard players add @s dayCycleTemperature 8
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=6301..9333}] run scoreboard players operation @s dayCycleTemperature /= @e[tag=gstools_worker,type=marker,limit=1] n800
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=6301..9333}] run scoreboard players add @s dayCycleTemperature 19
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=9333..16000}] run scoreboard players operation @s dayCycleTemperature /= @e[tag=gstools_worker,type=marker,limit=1] n500
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=9333..16000}] run scoreboard players add @s dayCycleTemperature 26
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=16001..20000}] run scoreboard players operation @s dayCycleTemperature /= @e[tag=gstools_worker,type=marker,limit=1] n1000
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=16001..20000}] run scoreboard players add @s dayCycleTemperature 10
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=20001..22222}] run scoreboard players operation @s dayCycleTemperature /= @e[tag=gstools_worker,type=marker,limit=1] 2000
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=20001..22222}] run scoreboard players remove @s dayCycleTemperature 20
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=22222..24000}] run scoreboard players operation @s dayCycleTemperature /= @e[tag=gstools_worker,type=marker,limit=1] 200
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={timeOfDay=22222..24000}] run scoreboard players remove @s dayCycleTemperature 120

scoreboard players operation @s currentTemperature = @s biomeTemperature
scoreboard players operation @s currentTemperature += @s dayCycleTemperature





