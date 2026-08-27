# Define
scoreboard objectives add stormCheckWorkerA dummy
scoreboard objectives add stormCheckWorkerB dummy
scoreboard objectives add stormCheckWorkerC dummy
scoreboard objectives add stormCheckWorkerD dummy
scoreboard objectives add stormCheckWorkerE dummy

# Main
execute store result score @s PosStormX run data get storage gstools:compat weather2.storm.posX 1
execute store result score @s PosStormZ run data get storage gstools:compat weather2.storm.posZ
execute store result score @s stormRange run data get storage gstools:compat weather2.storm.size

scoreboard players operation @s stormCheckWorkerC = @s PosEntityX
scoreboard players operation @s stormCheckWorkerD = @s PosEntityZ

scoreboard players operation @s stormCheckWorkerC -= @s PosStormX
scoreboard players operation @s stormCheckWorkerD -= @s PosStormZ

scoreboard players operation @s stormCheckWorkerC *= @s stormCheckWorkerC
scoreboard players operation @s stormCheckWorkerD *= @s stormCheckWorkerD

scoreboard players operation @s stormCheckWorkerC += @s stormCheckWorkerD

scoreboard players operation @s stormCheckWorkerE = @s stormRange
scoreboard players operation @s stormCheckWorkerE *= @s stormCheckWorkerE

execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s sqrtInput = @s stormCheckWorkerC
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players set @s sqrtPresicion 1
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run function gstools:util/sqrt

execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players add @s affectiveStormCount 1
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA = @s sqrtResult
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA *= @e[tag=gstools_worker,type=marker] 100
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA /= @s stormRange
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA -= @e[tag=gstools_worker,type=marker] 100
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA *= @e[tag=gstools_worker,type=marker] n1

execute if score @s stormCheckWorkerE > @s stormCheckWorkerC store result score @s stormCheckWorkerB run data get storage gstools:compat weather2.storm.attrib_rain
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s stormCheckWorkerB > @s isRainingWeather2 run scoreboard players operation @s isRainingWeather2 = @s stormCheckWorkerB
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC store result score @s stormCheckWorkerB run data get storage gstools:compat weather2.storm.levelCurIntensityStage
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s stormCheckWorkerB > @s stormIntensity run scoreboard players operation @s stormIntensity = @s stormCheckWorkerB
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC store result score @s stormCheckWorkerB run data get storage gstools:compat weather2.storm.isFirenado
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s stormCheckWorkerB > @s isFirenadoing run scoreboard players operation @s isFirenadoing = @s stormCheckWorkerB
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC store result score @s stormCheckWorkerB run data get storage gstools:compat weather2.storm.attrib_waterSpout
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s stormCheckWorkerB > @s isWaterSpouting run scoreboard players operation @s isWaterSpouting = @s stormCheckWorkerB
execute if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s sqrtResult < @s closestStormRange run scoreboard players operation @s closestStormRange = @s sqrtResult

data remove storage gstools:compat weather2.stormDataCache[0]
execute if data storage gstools:compat weather2.stormDataCache[0] run data modify storage gstools:compat weather2.storm set from storage gstools:compat weather2.stormDataCache[0]
execute if data storage gstools:compat weather2.stormDataCache[0] run function gstools:compat/weather2/comm/_check_storm