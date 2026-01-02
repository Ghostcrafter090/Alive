# Define
scoreboard objectives add currentTemperature dummy
scoreboard objectives add biomeTemperature dummy
scoreboard objectives add dayCycleTemperature dummy
scoreboard objectives add seasonalTemperature dummy
scoreboard objectives add altitudeTemperature dummy
scoreboard objectives add currentYLevel dummy
scoreboard objectives add altitudeTemperatureWorker dummy

scoreboard players set @s biomeTemperature 0
execute if biome ~ ~ ~-30 #gstools:temperature_-0.7 run scoreboard players remove @s biomeTemperature 25
execute if biome ~ ~ ~-30 #gstools:temperature_-0.5 run scoreboard players remove @s biomeTemperature 12
execute if biome ~ ~ ~-30 #gstools:temperature_-0.3 run scoreboard players remove @s biomeTemperature 7
execute if biome ~ ~ ~-30 #gstools:temperature_-0.2 run scoreboard players remove @s biomeTemperature 5
execute if biome ~ ~ ~-30 #gstools:temperature_0.0 run scoreboard players add @s biomeTemperature 0
execute if biome ~ ~ ~-30 #gstools:temperature_0.05 run scoreboard players add @s biomeTemperature 1
execute if biome ~ ~ ~-30 #gstools:temperature_0.2 run scoreboard players add @s biomeTemperature 5
execute if biome ~ ~ ~-30 #gstools:temperature_0.25 run scoreboard players add @s biomeTemperature 6
execute if biome ~ ~ ~-30 #gstools:temperature_0.3 run scoreboard players add @s biomeTemperature 8
execute if biome ~ ~ ~-30 #gstools:temperature_0.5 run scoreboard players add @s biomeTemperature 12
execute if biome ~ ~ ~-30 #gstools:temperature_0.6 run scoreboard players add @s biomeTemperature 15
execute if biome ~ ~ ~-30 #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 18
execute if biome ~ ~ ~-30 #gstools:temperature_0.8 run scoreboard players add @s biomeTemperature 20
execute if biome ~ ~ ~-30 #gstools:temperature_0.9 run scoreboard players add @s biomeTemperature 22
execute if biome ~ ~ ~-30 #gstools:temperature_0.95 run scoreboard players add @s biomeTemperature 24
execute if biome ~ ~ ~-30 #gstools:temperature_1.0 run scoreboard players add @s biomeTemperature 25
execute if biome ~ ~ ~-30 #gstools:temperature_2.0 run scoreboard players add @s biomeTemperature 50

execute if biome ~ ~ ~30 #gstools:temperature_-0.7 run scoreboard players remove @s biomeTemperature 25
execute if biome ~ ~ ~30 #gstools:temperature_-0.5 run scoreboard players remove @s biomeTemperature 12
execute if biome ~ ~ ~30 #gstools:temperature_-0.3 run scoreboard players remove @s biomeTemperature 7
execute if biome ~ ~ ~30 #gstools:temperature_-0.2 run scoreboard players remove @s biomeTemperature 5
execute if biome ~ ~ ~30 #gstools:temperature_0.0 run scoreboard players add @s biomeTemperature 0
execute if biome ~ ~ ~30 #gstools:temperature_0.05 run scoreboard players add @s biomeTemperature 1
execute if biome ~ ~ ~30 #gstools:temperature_0.2 run scoreboard players add @s biomeTemperature 5
execute if biome ~ ~ ~30 #gstools:temperature_0.25 run scoreboard players add @s biomeTemperature 6
execute if biome ~ ~ ~30 #gstools:temperature_0.3 run scoreboard players add @s biomeTemperature 8
execute if biome ~ ~ ~30 #gstools:temperature_0.5 run scoreboard players add @s biomeTemperature 12
execute if biome ~ ~ ~30 #gstools:temperature_0.6 run scoreboard players add @s biomeTemperature 15
execute if biome ~ ~ ~30 #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 18
execute if biome ~ ~ ~30 #gstools:temperature_0.8 run scoreboard players add @s biomeTemperature 20
execute if biome ~ ~ ~30 #gstools:temperature_0.9 run scoreboard players add @s biomeTemperature 22
execute if biome ~ ~ ~30 #gstools:temperature_0.95 run scoreboard players add @s biomeTemperature 24
execute if biome ~ ~ ~30 #gstools:temperature_1.0 run scoreboard players add @s biomeTemperature 25
execute if biome ~ ~ ~30 #gstools:temperature_2.0 run scoreboard players add @s biomeTemperature 50

execute if biome ~-30 ~ ~ #gstools:temperature_-0.7 run scoreboard players remove @s biomeTemperature 25
execute if biome ~-30 ~ ~ #gstools:temperature_-0.5 run scoreboard players remove @s biomeTemperature 12
execute if biome ~-30 ~ ~ #gstools:temperature_-0.3 run scoreboard players remove @s biomeTemperature 7
execute if biome ~-30 ~ ~ #gstools:temperature_-0.2 run scoreboard players remove @s biomeTemperature 5
execute if biome ~-30 ~ ~ #gstools:temperature_0.0 run scoreboard players add @s biomeTemperature 0
execute if biome ~-30 ~ ~ #gstools:temperature_0.05 run scoreboard players add @s biomeTemperature 1
execute if biome ~-30 ~ ~ #gstools:temperature_0.2 run scoreboard players add @s biomeTemperature 5
execute if biome ~-30 ~ ~ #gstools:temperature_0.25 run scoreboard players add @s biomeTemperature 6
execute if biome ~-30 ~ ~ #gstools:temperature_0.3 run scoreboard players add @s biomeTemperature 8
execute if biome ~-30 ~ ~ #gstools:temperature_0.5 run scoreboard players add @s biomeTemperature 12
execute if biome ~-30 ~ ~ #gstools:temperature_0.6 run scoreboard players add @s biomeTemperature 15
execute if biome ~-30 ~ ~ #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 18
execute if biome ~-30 ~ ~ #gstools:temperature_0.8 run scoreboard players add @s biomeTemperature 20
execute if biome ~-30 ~ ~ #gstools:temperature_0.9 run scoreboard players add @s biomeTemperature 22
execute if biome ~-30 ~ ~ #gstools:temperature_0.95 run scoreboard players add @s biomeTemperature 24
execute if biome ~-30 ~ ~ #gstools:temperature_1.0 run scoreboard players add @s biomeTemperature 25
execute if biome ~-30 ~ ~ #gstools:temperature_2.0 run scoreboard players add @s biomeTemperature 50

execute if biome ~30 ~ ~ #gstools:temperature_-0.7 run scoreboard players remove @s biomeTemperature 25
execute if biome ~30 ~ ~ #gstools:temperature_-0.5 run scoreboard players remove @s biomeTemperature 12
execute if biome ~30 ~ ~ #gstools:temperature_-0.3 run scoreboard players remove @s biomeTemperature 7
execute if biome ~30 ~ ~ #gstools:temperature_-0.2 run scoreboard players remove @s biomeTemperature 5
execute if biome ~30 ~ ~ #gstools:temperature_0.0 run scoreboard players add @s biomeTemperature 0
execute if biome ~30 ~ ~ #gstools:temperature_0.05 run scoreboard players add @s biomeTemperature 1
execute if biome ~30 ~ ~ #gstools:temperature_0.2 run scoreboard players add @s biomeTemperature 5
execute if biome ~30 ~ ~ #gstools:temperature_0.25 run scoreboard players add @s biomeTemperature 6
execute if biome ~30 ~ ~ #gstools:temperature_0.3 run scoreboard players add @s biomeTemperature 8
execute if biome ~30 ~ ~ #gstools:temperature_0.5 run scoreboard players add @s biomeTemperature 12
execute if biome ~30 ~ ~ #gstools:temperature_0.6 run scoreboard players add @s biomeTemperature 15
execute if biome ~30 ~ ~ #gstools:temperature_0.7 run scoreboard players add @s biomeTemperature 18
execute if biome ~30 ~ ~ #gstools:temperature_0.8 run scoreboard players add @s biomeTemperature 20
execute if biome ~30 ~ ~ #gstools:temperature_0.9 run scoreboard players add @s biomeTemperature 22
execute if biome ~30 ~ ~ #gstools:temperature_0.95 run scoreboard players add @s biomeTemperature 24
execute if biome ~30 ~ ~ #gstools:temperature_1.0 run scoreboard players add @s biomeTemperature 25
execute if biome ~30 ~ ~ #gstools:temperature_2.0 run scoreboard players add @s biomeTemperature 50

scoreboard players operation @s biomeTemperature /= @e[tag=gstools_worker,type=marker,limit=1] 4

scoreboard players operation @s dayCycleTemperature = @e[tag=gstools_worker,type=marker,limit=1] timeOfDay

# https://www.desmos.com/calculator/t8rxuh8pdn
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

# https://www.desmos.com/calculator/ro5eqx4eid
scoreboard players operation @s seasonalTemperature = @e[tag=gstools_worker,type=marker] currentSeasonDay
scoreboard players operation @s seasonalTemperature *= @e[tag=gstools_worker,type=marker] 106
scoreboard players remove @s seasonalTemperature 366
scoreboard players operation @s seasonalTemperature /= @e[tag=gstools_worker,type=marker] 1000

scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] sinInput = @s seasonalTemperature
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s sinInput *= @s 100
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s sinInput *= @s 5732
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s sinInput /= @s 10000
function gstools:util/sin

scoreboard players operation @s seasonalTemperature *= @e[tag=gstools_worker,type=marker] 12
scoreboard players remove @s seasonalTemperature 2

# https://www.desmos.com/calculator/m7fe74jlos
execute store result score @s currentYLevel run data get entity @s Pos[1]

scoreboard players operation @s altitudeTemperature = @s currentYLevel
scoreboard players remove @s altitudeTemperature 148
scoreboard players operation @s altitudeTemperatureWorker = @s altitudeTemperature
scoreboard players operation @s altitudeTemperatureWorker *= @s altitudeTemperature
scoreboard players operation @s altitudeTemperatureWorker *= @s altitudeTemperature
scoreboard players operation @s altitudeTemperature = @s altitudeTemperatureWorker
scoreboard players operation @s altitudeTemperature *= @e[tag=gstools_worker,type=marker] n34

scoreboard players operation @s altitudeTemperatureWorker = @s currentYLevel
scoreboard players add @s altitudeTemperatureWorker 1
scoreboard players operation @s altitudeTemperatureWorker *= @e[tag=gstools_worker,type=marker] n1577390

scoreboard players operation @s altitudeTemperature += @s altitudeTemperatureWorker
scoreboard players operation @s altitudeTemperature /= @e[tag=gstools_worker,type=marker] 10000000
scoreboard players add @s altitudeTemperature 8

scoreboard players operation @s currentTemperature = @s biomeTemperature
scoreboard players operation @s currentTemperature += @s dayCycleTemperature
scoreboard players operation @s currentTemperature += @s seasonalTemperature
scoreboard players operation @s currentTemperature += @s altitudeTemperature



