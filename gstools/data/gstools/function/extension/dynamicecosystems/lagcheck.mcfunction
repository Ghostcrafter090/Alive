# Define
scoreboard objectives add averageTpsDynamicEcosystems dummy
scoreboard objectives add averageTpsDynamicEcosystemsWorker dummy
scoreboard objectives add averageTpsDynamicEcosystemsWorkerMultTen dummy

# Main
say "[alive_command_limit_trace_debug] gstools:extension/dynamicecosystems/lagcheck"
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorker *= @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsDynamicEcosystemsWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorker += @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorker
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystems = @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystemsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystems /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsDynamicEcosystems -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsDynamicEcosystemsWorkerMultTen += @e[type=marker,tag=gstools_worker] 1
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsDynamicEcosystemsWorkerMultTen += @e[type=marker,tag=gstools_worker] 1