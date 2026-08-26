# Define
scoreboard objectives add currentWindLevel dummy
scoreboard objectives add currentHailLevel dummy
scoreboard objectives add currentHurricaneLevel dummy
scoreboard objectives add currentTornadoLevel dummy
scoreboard objectives add riskCheckIndex dummy

# Main
execute store result score @s PosEntityY run data get entity @s Pos[1]
execute positioned ~ 319 ~ run fill ~1 ~ ~1 ~1 ~ ~-1 air replace expandedweather2dynamics:spc_risk_block
execute positioned ~ 319 ~ run fill ~ ~ ~-1 ~-1 ~ ~-1 air replace expandedweather2dynamics:spc_risk_block
execute positioned ~ 319 ~ run fill ~-1 ~ ~ ~-1 ~ ~1 air replace expandedweather2dynamics:spc_risk_block
execute positioned ~ 319 ~ run fill ~ ~ ~1 ~ ~ ~1 air replace expandedweather2dynamics:spc_risk_block

execute positioned ~ 319 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:0} store result score @s currentHurricaneLevel run data get block ~ ~ ~ Power 1
execute positioned ~ 319 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:1} store result score @s currentTornadoLevel run data get block ~ ~ ~ Power 1
execute positioned ~ 319 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:2} store result score @s currentWindLevel run data get block ~ ~ ~ Power 1
execute positioned ~ 319 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:3} store result score @s currentHailLevel run data get block ~ ~ ~ Power 1

execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=0..0}] positioned ~ 319 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:0} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:0} replace
execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=1..1}] positioned ~ 319 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:1} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:1} replace
execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=2..2}] positioned ~ 319 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:2} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:2} replace
execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=3..3}] positioned ~ 319 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:3} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:3} replace

scoreboard players set @e[tag=gstools_worker,type=marker] isExpandedWeather2DynamicsPresent 1
scoreboard players add @s riskCheckIndex 1
execute if entity @s[scores={riskCheckIndex=4..}] run scoreboard players set @s riskCheckIndex 0

execute if entity @s[scores={currentTornadoLevel=13..}] run scoreboard players set @s _nearSevereWeather 400
execute unless entity @s[scores={currentTornadoLevel=13..}] run scoreboard players remove @s _nearSevereWeather 1
execute if entity @s[scores={currentHurricaneLevel=13..}] run scoreboard players set @s _nearSevereWeather 400
execute unless entity @s[scores={currentHurricaneLevel=13..}] run scoreboard players remove @s _nearSevereWeather 1

execute if score @s _nearSevereWeather >= @e[type=marker,tag=gstools_worker,limit=1] 1 run scoreboard players set @s nearSevereWeather 1
execute unless score @s _nearSevereWeather >= @e[type=marker,tag=gstools_worker,limit=1] 1 run scoreboard players set @s nearSevereWeather 0