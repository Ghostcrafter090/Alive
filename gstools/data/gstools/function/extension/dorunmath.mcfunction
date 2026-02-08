# scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerB = @e[tag=gstools_worker,type=marker] 20
# scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerB -= @e[tag=gstools_worker,type=marker] globalTicWorkerA
# scoreboard players add @e[tag=gstools_worker,type=marker] globalTicWorkerB 1
# scoreboard players set @e[tag=gstools_worker,type=marker] globalTicWorkerA 20
# scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA /= @e[tag=gstools_worker,type=marker] globalTicWorkerB
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA /= @e[tag=gstools_worker,type=marker] 2
scoreboard players set @e[tag=gstools_worker,type=marker] globalTicWorkerB 11
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerB -= @e[tag=gstools_worker,type=marker] globalTicWorkerA
scoreboard players set @e[tag=gstools_worker,type=marker] globalTicWorkerC 10
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerC /= @e[tag=gstools_worker,type=marker] globalTicWorkerB
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA += @e[tag=gstools_worker,type=marker] globalTicWorkerC
