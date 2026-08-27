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


# Main
execute store result score @s PosEntityX run data get entity @s Pos[0]
execute store result score @s PosEntityZ run data get entity @s Pos[2]

scoreboard players set @s affectiveStormCount 0
execute if data storage weather2:stormdata list[0] run data modify storage gstools:compat weather2.storm set from storage weather2:stormdata list[0]
execute if data storage weather2:stormdata list[0] run function gstools:compat/weather2/comm/_check_storm

