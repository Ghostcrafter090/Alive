execute at @s run tp @s ~ ~ ~ 0.0 0.0
execute store result entity @s Rotation[1] int 1 run scoreboard players get @s sinInput
execute at @s positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:['sin_worker']}