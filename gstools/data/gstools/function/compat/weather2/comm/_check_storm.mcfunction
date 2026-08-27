# Define

# Main
execute store result score @s isCloudlessStorm run data get storage gstools:compat weather2.storm.cloudlessStorm 1
execute unless entity @s[scores={isCloudlessStorm=1..1}] store result score @s isCloudlessStorm run data get storage gstools:compat weather2.storm.levelStormIntensityMax 1
execute if entity @s[scores={isCloudlessStorm=1..}] store result score @s PosStormX run data get storage gstools:compat weather2.storm.posX 1
execute if entity @s[scores={isCloudlessStorm=1..}] store result score @s PosStormZ run data get storage gstools:compat weather2.storm.posZ 1
execute if entity @s[scores={isCloudlessStorm=1..}] store result score @s stormRange run data get storage gstools:compat weather2.storm.size 1

execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerC = @s PosEntityX
execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerD = @s PosEntityZ

execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerC /= @e[tag=gstools_worker,type=marker] 8
execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerD /= @e[tag=gstools_worker,type=marker] 8

execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s PosStormX /= @e[tag=gstools_worker,type=marker] 8
execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s PosStormZ /= @e[tag=gstools_worker,type=marker] 8

execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerC -= @s PosStormX
execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerD -= @s PosStormZ

execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerC *= @s stormCheckWorkerC
execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerD *= @s stormCheckWorkerD

execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerC += @s stormCheckWorkerD

execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerE = @s stormRange
execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerE /= @e[tag=gstools_worker,type=marker] 8
execute if entity @s[scores={isCloudlessStorm=1..}] run scoreboard players operation @s stormCheckWorkerE *= @s stormCheckWorkerE

execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s sqrtResult = @s stormCheckWorkerC
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s sqrtResult *= @e[tag=gstools_worker,type=marker] 100
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s sqrtResult /= @s stormCheckWorkerE
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s sqrtResult *= @s stormRange
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s sqrtResult /= @e[tag=gstools_worker,type=marker] 100

execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players add @s affectiveStormCount 1
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA = @s stormCheckWorkerC
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA *= @e[tag=gstools_worker,type=marker] 100
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA /= @s stormCheckWorkerE
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA -= @e[tag=gstools_worker,type=marker] 100
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerA *= @e[tag=gstools_worker,type=marker] n1

execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC store result score @s stormCheckWorkerB run data get storage gstools:compat weather2.storm.attrib_rain
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s stormCheckWorkerB > @s isRainingWeather2 run scoreboard players operation @s isRainingWeather2 = @s stormCheckWorkerB
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC store result score @s stormCheckWorkerB run data get storage gstools:compat weather2.storm.levelCurIntensityStage
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s stormCheckWorkerB > @s stormIntensity run scoreboard players operation @s stormIntensity = @s stormCheckWorkerB
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC store result score @s stormCheckWorkerB run data get storage gstools:compat weather2.storm.isFirenado
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s stormCheckWorkerB > @s isFirenadoing run scoreboard players operation @s isFirenadoing = @s stormCheckWorkerB
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC store result score @s stormCheckWorkerB run data get storage gstools:compat weather2.storm.attrib_waterSpout
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC run scoreboard players operation @s stormCheckWorkerB *= @s stormCheckWorkerA
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s stormCheckWorkerB > @s isWaterSpouting run scoreboard players operation @s isWaterSpouting = @s stormCheckWorkerB
execute if entity @s[scores={isCloudlessStorm=1..}] if score @s stormCheckWorkerE > @s stormCheckWorkerC if score @s sqrtResult < @s closestStormRange run scoreboard players operation @s closestStormRange = @s sqrtResult

data remove storage gstools:compat weather2.stormDataCache[0]
execute if data storage gstools:compat weather2.stormDataCache[0] run data modify storage gstools:compat weather2.storm set from storage gstools:compat weather2.stormDataCache[0]
execute if data storage gstools:compat weather2.stormDataCache[0] run function gstools:compat/weather2/comm/_check_storm