scoreboard players add @s magmaCubeSize 1
execute store result entity @s Size int 1 run scoreboard players get @s magmaCubeSize
scoreboard players set @s magmaCubeUpdateTic 0