# Define
scoreboard objectives add averageTpsBlockDecay dummy
scoreboard objectives add averageTpsBlockDecayWorker dummy
scoreboard objectives add averageTpsBlockDecayWorkerMultTen dummy

# Main
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorker *= @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsBlockDecayWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorker += @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorker

scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecay = @e[type=marker,tag=gstools_worker] averageTpsBlockDecayWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecay /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBlockDecay -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsBlockDecayWorkerMultTen += @e[type=marker,tag=gstools_worker] 1
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsBlockDecayWorkerMultTen += @e[type=marker,tag=gstools_worker] 1