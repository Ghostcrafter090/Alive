# Define
scoreboard objectives add currentWindLevel dummy
scoreboard objectives add currentHailLevel dummy
scoreboard objectives add currentHurricaneLevel dummy
scoreboard objectives add currentTornadoLevel dummy
scoreboard objectives add riskCheckIndex dummy

# Main
execute store result score @s PosEntityY run data get entity @s Pos[1]
execute positioned ~ -64 ~ run fill ~1 ~ ~1 ~1 ~ ~-1 bedrock replace expandedweather2dynamics:spc_risk_block
execute positioned ~ -64 ~ run fill ~ ~ ~-1 ~-1 ~ ~-1 bedrock replace expandedweather2dynamics:spc_risk_block
execute positioned ~ -64 ~ run fill ~-1 ~ ~ ~-1 ~ ~1 bedrock replace expandedweather2dynamics:spc_risk_block
execute positioned ~ -64 ~ run fill ~ ~ ~1 ~ ~ ~1 bedrock replace expandedweather2dynamics:spc_risk_block

execute positioned ~ -64 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:0} store result score @s currentHurricaneLevel run data get block ~ ~ ~ Power 1
execute positioned ~ -64 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:1} store result score @s currentTornadoLevel run data get block ~ ~ ~ Power 1
execute positioned ~ -64 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:2} store result score @s currentWindLevel run data get block ~ ~ ~ Power 1
execute positioned ~ -64 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:3} store result score @s currentHailLevel run data get block ~ ~ ~ Power 1

execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=0..0}] positioned ~ -64 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:0} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:0} destroy
execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=1..1}] positioned ~ -64 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:1} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:1} destroy
execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=2..2}] positioned ~ -64 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:2} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:2} destroy
execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=3..3}] positioned ~ -64 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:3} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:3} destroy

scoreboard players set @e[tag=gstools_worker,type=marker] isExpandedWeather2DynamicsPresent 1
