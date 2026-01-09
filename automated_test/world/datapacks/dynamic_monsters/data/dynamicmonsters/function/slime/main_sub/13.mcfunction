scoreboard players remove @s slimeSize 1
execute store result entity @s Size int 1 run scoreboard players get @s slimeSize
scoreboard players set @s slimeNegate 0