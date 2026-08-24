# Define
scoreboard objectives add nearSevereWeather dummy
scoreboard objectives add PosEntityY dummy

# Main
execute store result score @s PosEntityY run data get entity @s Pos[1]
execute at @s positioned ~ -64 ~ run fill ~1 ~ ~1 ~1 ~ ~-1 bedrock replace weather2:tornado_sensor
execute at @s positioned ~ -64 ~ run fill ~ ~ ~-1 ~-1 ~ ~-1 bedrock replace weather2:tornado_sensor
execute at @s positioned ~ -64 ~ run fill ~-1 ~ ~ ~-1 ~ ~1 bedrock replace weather2:tornado_sensor
execute at @s positioned ~ -64 ~ run fill ~ ~ ~1 ~ ~ ~1 bedrock replace weather2:tornado_sensor
execute if entity @e[tag=gstools_worker,type=marker,scores={ticSecond=1..1}] at @s positioned ~ -64 ~ if block ~ ~ ~ weather2:tornado_sensor[powered=false] run scoreboard players set @s nearSevereWeather 0
execute at @s positioned ~ -64 ~ if block ~ ~ ~ weather2:tornado_sensor[powered=true] run scoreboard players set @s nearSevereWeather 1
execute if entity @s[scores={PosEntityY=-50..}] at @s positioned ~ -64 ~ unless block ~ ~ ~ weather2:tornado_sensor run fill ~ ~ ~ ~ ~ ~ weather2:tornado_sensor destroy