# Define
scoreboard objectives add averageTpsUndeadExpanded dummy
scoreboard objectives add averageTpsUndeadExpandedWorker dummy
scoreboard objectives add averageTpsUndeadExpandedWorkerMultTen dummy

# Main
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorker *= @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsUndeadExpandedWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorker += @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorker
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpanded = @e[type=marker,tag=gstools_worker] averageTpsUndeadExpandedWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpanded /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsUndeadExpanded -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsUndeadExpandedWorkerMultTen += @e[type=marker,tag=gstools_worker] 3
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsUndeadExpandedWorkerMultTen += @e[type=marker,tag=gstools_worker] 3