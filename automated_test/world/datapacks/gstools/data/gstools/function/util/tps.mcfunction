# Define
scoreboard objectives add tps dummy
scoreboard objectives add blocksPerSecond dummy
scoreboard objectives add worldBorderPosPrevious dummy
scoreboard objectives add averageTps dummy
scoreboard objectives add averageTpsWorker dummy
scoreboard objectives add averageTpsWorkerMultTen dummy
scoreboard objectives add worldBorderVersionConflict dummy
scoreboard objectives add worldBorderSetLocation dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] worldBorderVersionConflict 0
function gstools:util/version_conflict/worldborder_1
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run function gstools:util/tps_sub/13

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/tps_sub/17

execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run function gstools:util/tps_sub/21

execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run function gstools:util/tps_sub/24

scoreboard players operation @e[type=marker,tag=gstools_worker] tps = @e[type=marker,tag=gstools_worker] 200
scoreboard players operation @e[type=marker,tag=gstools_worker] tps /= @e[type=marker,tag=gstools_worker] blocksPerSecond

function gstools:util/version_conflict/worldborder_0
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run function gstools:util/tps_sub/33

scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorker *= @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorker += @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsWorker

scoreboard players operation @e[type=marker,tag=gstools_worker] averageTps = @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTps /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTps -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsWorkerMultTen += @e[type=marker,tag=gstools_worker] 1
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsWorkerMultTen += @e[type=marker,tag=gstools_worker] 1





