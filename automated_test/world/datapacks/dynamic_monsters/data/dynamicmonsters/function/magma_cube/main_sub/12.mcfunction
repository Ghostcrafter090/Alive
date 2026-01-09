scoreboard players remove @s magmaCubeSize 1
execute store result entity @s Size int 1 run scoreboard players get @s magmaCubeSize
scoreboard players set @s magmaCubeSizeNegationWorker 0