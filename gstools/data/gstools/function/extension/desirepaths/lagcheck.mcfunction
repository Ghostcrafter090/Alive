# Define
scoreboard objectives add averageTpsDesirePaths dummy
scoreboard objectives add averageTpsDesirePathsWorker dummy
scoreboard objectives add averageTpsDesirePathsWorkerMultTen dummy

# Main
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorker *= @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsDesirePathsWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorker += @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorker
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePaths = @e[type=marker,tag=gstools_worker] averageTpsDesirePathsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePaths /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDesirePaths -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsDesirePathsWorkerMultTen += @e[type=marker,tag=gstools_worker] 1
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsDesirePathsWorkerMultTen += @e[type=marker,tag=gstools_worker] 1