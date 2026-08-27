# Define
scoreboard objectives add stormCheckWorkerA dummy
scoreboard objectives add stormCheckWorkerB dummy
scoreboard objectives add stormCheckWorkerC dummy
scoreboard objectives add stormCheckWorkerD dummy

# Main
execute store result score @s PosStormX run data get storage gstools:compat weather2.storm.PosX
execute store result score @s PosStormZ run data get storage gstools:compat weather2.storm.PosZ
execute store result score @s stormRange run data get storage gstools:compat weather2.storm.maxSize

scoreboard players operation @s stormCheckWorkerC = @s PosEntityX
scoreboard players operation @s stormCheckWorkerD = @s PosEntityZ

scoreboard players operation @s stormCheckWorkerC -= @s stormCheckWorkerC
scoreboard players operation @s stormCheckWorkerD -= @s stormCheckWorkerD

scoreboard players operation @s stormCheckWorkerC *= @s stormCheckWorkerC
scoreboard players operation @s stormCheckWorkerD *= @s stormCheckWorkerD

scoreboard players operation @s stormCheckWorkerC += @s stormCheckWorkerD
scoreboard players operation @s sqrtInput = @s stormCheckWorkerC
function gstools:util/sqrt

execute if score @s sqrtResult < @s stormRange run scoreboard players add @s affectiveStormCount 1
execute if score @s sqrtResult < @s stormRange run scoreboard players operation @s stormCheckWorkerA = @s sqrtResult
execute if score @s sqrtResult < @s stormRange run scoreboard players operation @s stormCheckWorkerA *= @e[tag=gstools_worker,type=marker] 100
execute if score @s sqrtResult < @s stormRange run scoreboard players operation @s stormCheckWorkerA /= @s stormRange
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB run data get storage weather2:stormdata attrib_rain
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB if score @s stormCheckWorkerB > @s isRainingWeather2 run scoreboard players operation @s isRainingWeather2 = @s stormCheckWorkerB
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB run data get storage weather2:stormdata levelCurIntensityStage
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB if score @s stormCheckWorkerB > @s stormIntensity run scoreboard players operation @s stormIntensity = @s stormCheckWorkerB
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB run data get storage weather2:stormdata isFirenado
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB if score @s stormCheckWorkerB > @s isFirenadoing run scoreboard players operation @s isFirenadoing = @s stormCheckWorkerB
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB run data get storage weather2:stormdata attrib_waterSpout
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB if score @s stormCheckWorkerB > @s isWaterSpouting run scoreboard players operation @s isWaterSpouting = @s stormCheckWorkerB
execute if score @s sqrtResult < @s stormRange store result score @s stormCheckWorkerB if score @s sqrtResult > @s closestStormRange run scoreboard players operation @s closestStormRange = @s sqrtResult

data remove storage weather2:stormdata list[0]
execute if data storage weather2:stormdata list[0] run data modify storage gstools:compat weather2.storm set from storage weather2:stormdata list[0]
execute if data storage weather2:stormdata list[0] run function gstools:compat/weather2/_check_storm