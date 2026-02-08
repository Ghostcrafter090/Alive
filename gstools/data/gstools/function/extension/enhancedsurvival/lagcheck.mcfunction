# Define
scoreboard objectives add averageTpsEnhancedSurvival dummy
scoreboard objectives add averageTpsEnhancedSurvivalWorker dummy
scoreboard objectives add averageTpsEnhancedSurvivalWorkerMultTen dummy

# Main
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorker *= @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsEnhancedSurvivalWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorker += @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorker

scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvival = @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvivalWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvival /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsEnhancedSurvival -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsEnhancedSurvivalWorkerMultTen += @e[type=marker,tag=gstools_worker] 1
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsEnhancedSurvivalWorkerMultTen += @e[type=marker,tag=gstools_worker] 1