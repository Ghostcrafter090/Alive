# Define
scoreboard objectives add averageTpsDynamicMonsters dummy
scoreboard objectives add averageTpsDynamicMonstersWorker dummy
scoreboard objectives add averageTpsDynamicMonstersWorkerMultTen dummy

# Main
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorker *= @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsDynamicMonstersWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorker += @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorker
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonsters = @e[type=marker,tag=gstools_worker] averageTpsDynamicMonstersWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonsters /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicMonsters -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsDynamicMonstersWorkerMultTen += @e[type=marker,tag=gstools_worker] 1
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsDynamicMonstersWorkerMultTen += @e[type=marker,tag=gstools_worker] 1