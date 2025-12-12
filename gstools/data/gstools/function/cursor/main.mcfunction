# Define
scoreboard objectives add numberOfCursors dummy
scoreboard objectives add numberOfPlayers dummy
# Main
execute as @a at @s unless entity @e[tag=gstools_cursor,type=marker,distance=0..200] run summon marker ~ 100 ~ {Tags:['gstools_cursor']}

execute as @a at @s store result score @s numberOfCursors if entity @e[tag=gstools_cursor,type=marker,distance=0..200]
execute as @a at @s store result score @s numberOfPlayers if entity @a[distance=0..400]

execute as @a at @s if score @s numberOfCursors > @s numberOfPlayers run kill @e[tag=gstools_cursor,type=marker,limit=1,sort=random,distance=0..400]

execute as @a at @s as @e[type=marker,tag=gstools_cursor] run spreadplayers ~ ~ 3 200 false @s
execute as @e[tag=gstools_cursor,type=marker] at @s run function gstools:cursor/dovertical
