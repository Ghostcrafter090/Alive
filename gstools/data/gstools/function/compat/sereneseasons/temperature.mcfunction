# Define
scoreboard objectives add currentTemperature dummy
scoreboard objectives add biomeTemperature dummy
scoreboard objectives add dayCycleTemperature dummy
scoreboard objectives add seasonalTemperature dummy
scoreboard objectives add altitudeTemperature dummy
scoreboard objectives add currentYLevel dummy
scoreboard objectives add altitudeTemperatureWorker dummy
scoreboard objectives add currentXLevel dummy
scoreboard objectives add currentZLevel dummy
scoreboard objectives add currentXLevelOld dummy
scoreboard objectives add currentZLevelOld dummy

execute store result score @s currentXLevel run data get entity @s Pos[0] 1
execute store result score @s currentZLevel run data get entity @s Pos[2] 1
execute unless score @s currentXLevel = @s currentXLevelOld run function gstools:compat/sereneseasons/temperature/biome
execute unless score @s currentZLevel = @s currentZLevelOld run function gstools:compat/sereneseasons/temperature/biome

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
scoreboard players operation @s seasonalTemperature /= @e[tag=gstools_worker,type=marker] 10

scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] sinInput = @s seasonalTemperature
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s sinInput *= @s 1
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s sinInput *= @s 5732
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s sinInput /= @s 10000
function gstools:util/sin

scoreboard players operation @s seasonalTemperature = @e[tag=gstools_worker,type=marker] sinOutput
scoreboard players operation @s seasonalTemperature *= @e[tag=gstools_worker,type=marker] 12
scoreboard players remove @s seasonalTemperature 2000
scoreboard players operation @s seasonalTemperature /= @e[tag=gstools_worker,type=marker] 1000

execute if entity @s[scores={seasonalTemperature=..0}] run scoreboard players operation @s seasonalTemperature *= @e[tag=gstools_worker,type=marker] 2

# https://www.desmos.com/calculator/5dxgxorxrb
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

execute if entity @e[type=marker,tag=gstools_worker,limit=1,scores={bossProgressionLoaded=1..1}] if entity @e[type=marker,tag=gstools_worker,limit=1,scores={enchantedWitherRoseHasBeenSpawned=1..1}] unless entity @e[type=marker,tag=gstools_worker,limit=1,scores={witherHasBeenKilled=1..1}] run scoreboard players operation @s currentTemperature += @e[tag=gstools_worker,type=marker,limit=1] currentTemperatureWitherModif

