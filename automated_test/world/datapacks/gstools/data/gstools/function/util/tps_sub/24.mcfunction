scoreboard players operation @e[type=marker,tag=gstools_worker] tps = @e[type=marker,tag=gstools_worker] worldBorderPosPrevious
scoreboard players operation @e[type=marker,tag=gstools_worker] tps -= @e[type=marker,tag=gstools_worker] blocksPerSecond
scoreboard players operation @e[type=marker,tag=gstools_worker] tps *= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @e[type=marker,tag=gstools_worker] blocksPerSecond = @e[type=marker,tag=gstools_worker] tps