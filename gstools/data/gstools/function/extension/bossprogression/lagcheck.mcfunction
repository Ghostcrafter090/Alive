# Define
scoreboard objectives add averageTpsBossProgression dummy
scoreboard objectives add averageTpsBossProgressionWorker dummy
scoreboard objectives add averageTpsBossProgressionWorkerMultTen dummy

# Main
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorker *= @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsBossProgressionWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorker += @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorker
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgression = @e[type=marker,tag=gstools_worker] averageTpsBossProgressionWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgression /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsBossProgression -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsBossProgressionWorkerMultTen += @e[type=marker,tag=gstools_worker] 3
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsBossProgressionWorkerMultTen += @e[type=marker,tag=gstools_worker] 3