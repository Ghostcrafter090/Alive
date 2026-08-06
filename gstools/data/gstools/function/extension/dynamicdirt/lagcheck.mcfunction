# Define
scoreboard objectives add averageTpsDynamicDirt dummy
scoreboard objectives add averageTpsDynamicDirtWorker dummy
scoreboard objectives add averageTpsDynamicDirtWorkerMultTen dummy

# Main
say "[alive_command_limit_trace_debug] gstools:extension/dynamicdirt/lagcheck"
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorker *= @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsDynamicDirtWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorker += @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorker
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirt = @e[type=marker,tag=gstools_worker] averageTpsDynamicDirtWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirt /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicDirt -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsDynamicDirtWorkerMultTen += @e[type=marker,tag=gstools_worker] 1
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsDynamicDirtWorkerMultTen += @e[type=marker,tag=gstools_worker] 1