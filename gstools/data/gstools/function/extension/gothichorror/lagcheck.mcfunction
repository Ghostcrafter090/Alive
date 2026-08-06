# Define
scoreboard objectives add averageTpsGothicHorror dummy
scoreboard objectives add averageTpsGothicHorrorWorker dummy
scoreboard objectives add averageTpsGothicHorrorWorkerMultTen dummy

# Main
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorker *= @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsGothicHorrorWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorker += @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorker
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorror = @e[type=marker,tag=gstools_worker] averageTpsGothicHorrorWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorror /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsGothicHorror -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsGothicHorrorWorkerMultTen += @e[type=marker,tag=gstools_worker] 2
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsGothicHorrorWorkerMultTen += @e[type=marker,tag=gstools_worker] 2