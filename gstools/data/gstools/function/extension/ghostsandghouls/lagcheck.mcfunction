# Define
scoreboard objectives add averageTpsGhostsAndGhouls dummy
scoreboard objectives add averageTpsGhostsAndGhoulsWorker dummy
scoreboard objectives add averageTpsGhostsAndGhoulsWorkerMultTen dummy

# Main
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorker *= @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsGhostsAndGhoulsWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorker += @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorker
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhouls = @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhoulsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhouls /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGhostsAndGhouls -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsGhostsAndGhoulsWorkerMultTen += @e[type=marker,tag=gstools_worker] 3
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsGhostsAndGhoulsWorkerMultTen += @e[type=marker,tag=gstools_worker] 3