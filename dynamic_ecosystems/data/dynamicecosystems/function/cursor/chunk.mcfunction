# Define

# Main
scoreboard players operation @s seasonAdjustWorker = @e[tag=gstools_worker,type=marker] seasonAdjustWorker
scoreboard players operation @s averageTps = @e[tag=gstools_worker,type=marker] cursorTic
scoreboard players operation @s averageTps -= @s cursorTic
scoreboard players operation @e[tag=gstools_worker,type=marker] averageTps -= @e[tag=gstools_worker,type=marker] 21
scoreboard players operation @s averageTps *= @e[tag=gstools_worker,type=marker] averageTps
scoreboard players operation @e[tag=gstools_worker,type=marker] averageTps += @e[tag=gstools_worker,type=marker] 21
scoreboard players operation @s averageTps *= @e[tag=gstools_worker,type=marker] n1
scoreboard players operation @s seasonAdjustWorker -= @s averageTps
scoreboard players operation @s seasonAdjustWorker /= @s 16
scoreboard players operation @s seasonAdjustWorker *= @s 10
scoreboard players operation @s seasonAdjustWorker /= @s 24000
scoreboard players operation @s seasonAdjustWorker %= @s 60

