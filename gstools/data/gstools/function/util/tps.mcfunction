# Define
scoreboard objectives add tps dummy
scoreboard objectives add blocksPerSecond dummy
scoreboard objectives add averageTps dummy
scoreboard objectives add averageTpsWorker dummy
scoreboard objectives add averageTpsWorkerMultTen dummy

# Main
execute store result score @e[type=marker,tag=gstools_worker] blocksPerSecond run worldborder get
worldborder set 59999968
scoreboard players operation @e[type=marker,tag=gstools_worker] tps = @e[type=marker,tag=gstools_worker] 59999968
scoreboard players operation @e[type=marker,tag=gstools_worker] tps -= @e[type=marker,tag=gstools_worker] blocksPerSecond
scoreboard players operation @e[type=marker,tag=gstools_worker] blocksPerSecond = @e[type=marker,tag=gstools_worker] tps

scoreboard players operation @e[type=marker,tag=gstools_worker] tps = @e[type=marker,tag=gstools_worker] 200
scoreboard players operation @e[type=marker,tag=gstools_worker] tps /= @e[type=marker,tag=gstools_worker] blocksPerSecond
worldborder set 59997968 10

scoreboard players set @e[type=marker,tag=gstools_worker] averageTpsWorker 200
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorker *= @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen = @e[type=marker,tag=gstools_worker] tps
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={tps=21..}] averageTpsWorkerMultTen = @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen += @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorker += @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorker /= @e[type=marker,tag=gstools_worker] 201
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen = @e[type=marker,tag=gstools_worker] averageTpsWorker

scoreboard players operation @e[type=marker,tag=gstools_worker] averageTps = @e[type=marker,tag=gstools_worker] averageTpsWorkerMultTen
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTps /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] averageTps -= @e[type=marker,tag=gstools_worker] 20
scoreboard players operation @e[type=marker,tag=gstools_worker,scores={ticTenth=1..1}] averageTpsWorkerMultTen += @e[type=marker,tag=gstools_worker] 1






