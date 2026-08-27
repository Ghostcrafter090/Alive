# Define
scoreboard objectives add _nearSevereWeather dummy
scoreboard objectives add nearSevereWeather dummy
scoreboard objectives add affectiveStormCount dummy

scoreboard objectives add PosEntityX dummy
scoreboard objectives add PosEntityY dummy
scoreboard objectives add PosEntityZ dummy

scoreboard objectives add PosStormX dummy
scoreboard objectives add PosStormY dummy
scoreboard objectives add PosStormZ dummy

scoreboard objectives add stormRange dummy

scoreboard objectives add isRainingWeather2 dummy
scoreboard objectives add stormIntensity dummy
scoreboard objectives add isFirenadoing dummy
scoreboard objectives add closestStormRange dummy
scoreboard objectives add isWaterSpouting dummy

scoreboard objectives add stormCheckWorkerA dummy
scoreboard objectives add stormCheckWorkerB dummy
scoreboard objectives add stormCheckWorkerC dummy
scoreboard objectives add stormCheckWorkerD dummy
scoreboard objectives add stormCheckWorkerE dummy
scoreboard objectives add isCloudlessStorm dummy

scoreboard objectives add grabWeatherDataTic dummy

# Main
scoreboard players add @s grabWeatherDataTic 1

execute if score @s grabWeatherDataTic > @s affectiveStormCount run scoreboard players set @s isRainingWeather2 0
execute if score @s grabWeatherDataTic > @s affectiveStormCount run scoreboard players set @s stormIntensity 0
execute if score @s grabWeatherDataTic > @s affectiveStormCount run scoreboard players set @s isFirenadoing 0
execute if score @s grabWeatherDataTic > @s affectiveStormCount run scoreboard players set @s closestStormRange 100000000
execute if score @s grabWeatherDataTic > @s affectiveStormCount run scoreboard players set @s isWaterSpouting 0

execute if score @s grabWeatherDataTic > @s affectiveStormCount run execute store result score @s PosEntityX run data get entity @s Pos[0]
execute if score @s grabWeatherDataTic > @s affectiveStormCount run execute store result score @s PosEntityZ run data get entity @s Pos[2]

execute if score @s grabWeatherDataTic > @s affectiveStormCount run data modify storage gstools:compat weather2.stormDataCache set from storage weather2:stormdata list

execute if score @s grabWeatherDataTic > @s affectiveStormCount run scoreboard players set @s affectiveStormCount 0
execute if score @s grabWeatherDataTic > @s affectiveStormCount run execute if data storage gstools:compat weather2.stormDataCache[0] run data modify storage gstools:compat weather2.storm set from storage gstools:compat weather2.stormDataCache[0]
execute if score @s grabWeatherDataTic > @s affectiveStormCount run execute if data storage gstools:compat weather2.stormDataCache[0] run function gstools:compat/weather2/comm/_check_storm

execute if score @s grabWeatherDataTic > @s affectiveStormCount run scoreboard players operation @s closestStormRange *= @e[tag=gstools_worker,type=marker] 8
execute if score @s grabWeatherDataTic > @s affectiveStormCount run scoreboard players set @s grabWeatherDataTic 0