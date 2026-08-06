# Define
scoreboard objectives add averageTpsLifeAndDeath dummy
scoreboard objectives add averageTpsLifeAndDeathWorker dummy
scoreboard objectives add averageTpsLifeAndDeathWorkerMultTen dummy

# Main
scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorker *= @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsLifeAndDeathWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorker += @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorker
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeath = @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeathWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeath /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsLifeAndDeath -= @e[type=marker,tag=gstools_worker] 20
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticEigth=1..1}] averageTpsLifeAndDeathWorkerMultTen += @e[type=marker,tag=gstools_worker] 3
execute if entity @e[tag=gstools_worker,type=marker,scores={worldBorderVersionConflict=1..1}] run scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsLifeAndDeathWorkerMultTen += @e[type=marker,tag=gstools_worker] 3