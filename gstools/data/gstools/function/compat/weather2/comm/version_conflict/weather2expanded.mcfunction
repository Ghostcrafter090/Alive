# Define
scoreboard objectives add _currentWindLevel dummy
scoreboard objectives add _currentHailLevel dummy
scoreboard objectives add _currentHurricaneLevel dummy
scoreboard objectives add _currentTornadoLevel dummy
scoreboard objectives add _currentWindUpdate dummy
scoreboard objectives add _currentHailUpdate dummy
scoreboard objectives add _currentHurricaneUpdate dummy
scoreboard objectives add _currentTornadoUpdate dummy
scoreboard objectives add _maxWindKph dummy
scoreboard objectives add _maxWindUpdate dummy

scoreboard objectives add currentWindLevel dummy
scoreboard objectives add currentHailLevel dummy
scoreboard objectives add currentHurricaneLevel dummy
scoreboard objectives add currentTornadoLevel dummy
scoreboard objectives add riskCheckIndex dummy
scoreboard objectives add maxWindKph dummy

# Main
execute store result score @s PosEntityY run data get entity @s Pos[1]
execute positioned ~ -64 ~ run fill ~1 ~ ~1 ~1 ~ ~-1 air replace expandedweather2dynamics:spc_risk_block
execute positioned ~ -64 ~ run fill ~ ~ ~-1 ~-1 ~ ~-1 air replace expandedweather2dynamics:spc_risk_block
execute positioned ~ -64 ~ run fill ~-1 ~ ~ ~-1 ~ ~1 air replace expandedweather2dynamics:spc_risk_block
execute positioned ~ -64 ~ run fill ~ ~ ~1 ~ ~ ~1 air replace expandedweather2dynamics:spc_risk_block

execute if entity @s[scores={riskCheckIndex=1..1}] positioned ~ -64 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:0} store result score @s _currentHurricaneLevel run data get block ~ ~ ~ Power 1
execute if entity @s[scores={riskCheckIndex=3..3}] positioned ~ -64 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:1} store result score @s _currentTornadoLevel run data get block ~ ~ ~ Power 1
execute if entity @s[scores={riskCheckIndex=5..5}] positioned ~ -64 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:2} store result score @s _currentWindLevel run data get block ~ ~ ~ Power 1
execute if entity @s[scores={riskCheckIndex=7..7}] positioned ~ -64 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:3} store result score @s _currentHailLevel run data get block ~ ~ ~ Power 1

execute if entity @s positioned ~ -64 ~ if block ~ ~ ~ expandedweather2dynamics:spc_risk_block store result score @s _maxWindKph run data get block ~ ~ ~ MaxWindMph 1

execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=0..1}] positioned ~ -64 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:0} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:0} destroy
execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=2..3}] positioned ~ -64 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:1} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:1} destroy
execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=4..5}] positioned ~ -64 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:2} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:2} destroy
execute if entity @s[scores={PosEntityY=-50..,riskCheckIndex=6..7}] positioned ~ -64 ~ unless block ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:3} run fill ~ ~ ~ ~ ~ ~ expandedweather2dynamics:spc_risk_block{Mode:3} destroy

execute if entity @s[scores={PosEntityY=-55..,riskCheckIndex=0..7}] positioned ~ -64 ~ run kill @e[type=item,nbt={Item:{id:"expandedweather2dynamics:spc_risk_block"}},distance=0..1]

scoreboard players set @e[tag=gstools_worker,type=marker] isExpandedWeather2DynamicsPresent 1
scoreboard players add @s riskCheckIndex 1
execute if entity @s[scores={riskCheckIndex=8..}] run scoreboard players set @s riskCheckIndex 0

scoreboard players operation @s _maxWindKph *= @e[tag=gstools_worker,type=marker] 16
scoreboard players operation @s _maxWindKph /= @e[tag=gstools_worker,type=marker] 10

execute if entity @s[scores={_currentHailLevel=1..}] run scoreboard players operation @s currentHailLevel = @s _currentHailLevel
execute if entity @s[scores={_currentHailLevel=1..}] run scoreboard players set @s _currentHailUpdate 200

execute if entity @s[scores={_currentWindLevel=1..}] run scoreboard players operation @s currentWindLevel = @s _currentWindLevel
execute if entity @s[scores={_currentWindLevel=1..}] run scoreboard players set @s _currentWindUpdate 200

execute if entity @s[scores={_currentTornadoLevel=1..}] run scoreboard players operation @s currentTornadoLevel = @s _currentTornadoLevel
execute if entity @s[scores={_currentTornadoLevel=1..}] run scoreboard players set @s _currentTornadoUpdate 200

execute if entity @s[scores={_currentHurricaneLevel=1..}] run scoreboard players operation @s currentHurricaneLevel = @s _currentHurricaneLevel
execute if entity @s[scores={_currentHurricaneLevel=1..}] run scoreboard players set @s _currentHurricaneUpdate 200

execute if entity @s[scores={_maxWindKph=1..}] run scoreboard players operation @s maxWindKph = @s _maxWindKph
execute if entity @s[scores={_maxWindKph=1..}] run scoreboard players set @s _maxWindUpdate 200

scoreboard players remove @s _currentHailUpdate 1
scoreboard players remove @s _currentWindUpdate 1
scoreboard players remove @s _currentTornadoUpdate 1
scoreboard players remove @s _currentHurricaneUpdate 1
scoreboard players remove @s _maxWindUpdate 1

execute if entity @s[scores={_currentHailUpdate=..0}] run scoreboard players set @s currentHailLevel 0
execute if entity @s[scores={_currentWindUpdate=..0}] run scoreboard players set @s currentWindLevel 0
execute if entity @s[scores={_currentTornadoUpdate=..0}] run scoreboard players set @s currentTornadoLevel 0
execute if entity @s[scores={_currentHurricaneUpdate=..0}] run scoreboard players set @s currentHurricaneLevel 0
execute if entity @s[scores={_maxWindUpdate=..0}] run scoreboard players set @s maxWindKph 0

execute if entity @s[scores={currentTornadoLevel=1..}] run scoreboard players set @s _nearSevereWeather 200
execute unless entity @s[scores={currentTornadoLevel=1..}] run scoreboard players remove @s _nearSevereWeather 1

execute if entity @s[scores={maxWindKph=72..}] run scoreboard players set @s _nearSevereWeather 200
execute unless entity @s[scores={maxWindKph=72..}] run scoreboard players remove @s _nearSevereWeather 1

execute if score @s _nearSevereWeather >= @e[type=marker,tag=gstools_worker,limit=1] 1 run scoreboard players set @s nearSevereWeather 1
execute unless score @s _nearSevereWeather >= @e[type=marker,tag=gstools_worker,limit=1] 1 run scoreboard players set @s nearSevereWeather 0

