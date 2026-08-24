# Define
scoreboard objectives add _nearSevereWeather dummy
scoreboard objectives add nearSevereWeather dummy
scoreboard objectives add PosEntityY dummy

# Main
execute store result score @s PosEntityY run data get entity @s Pos[1]
execute positioned ~ -64 ~ run fill ~1 ~ ~1 ~1 ~ ~-1 bedrock replace weather2:tornado_sensor
execute positioned ~ -64 ~ run fill ~ ~ ~-1 ~-1 ~ ~-1 bedrock replace weather2:tornado_sensor
execute positioned ~ -64 ~ run fill ~-1 ~ ~ ~-1 ~ ~1 bedrock replace weather2:tornado_sensor
execute positioned ~ -64 ~ run fill ~ ~ ~1 ~ ~ ~1 bedrock replace weather2:tornado_sensor
execute positioned ~ -64 ~ if block ~ ~ ~ weather2:tornado_sensor[powered=false] run scoreboard players remove @s _nearSevereWeather 0
execute positioned ~ -64 ~ if block ~ ~ ~ weather2:tornado_sensor[powered=true] run scoreboard players set @s _nearSevereWeather 10
execute if entity @s[scores={PosEntityY=-50..}] positioned ~ -64 ~ unless block ~ ~ ~ weather2:tornado_sensor run fill ~ ~ ~ ~ ~ ~ weather2:tornado_sensor destroy
execute if score @s _nearSevereWeather >= @e[type=marker,tag=gstools_worker,limit=1] 1 run scoreboard players set @s nearSevereWeather 1
execute unless score @s _nearSevereWeather >= @e[type=marker,tag=gstools_worker,limit=1] 1 run scoreboard players set @s nearSevereWeather 0