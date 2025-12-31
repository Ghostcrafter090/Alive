# Define
scoreboard objectives add numberOfCursors dummy
scoreboard objectives add numberOfPlayers dummy
scoreboard objectives add cursorTicSpeed dummy

# Main
execute as @a at @s unless entity @e[tag=gstools_cursor,type=marker,distance=0..200] run summon marker ~ 100 ~ {Tags:['gstools_cursor']}

execute as @a at @s store result score @s numberOfCursors if entity @e[tag=gstools_cursor,type=marker,distance=0..200]
execute as @a at @s store result score @s numberOfPlayers if entity @a[distance=0..400]

execute store result score @e[tag=gstools_worker,type=marker] cursorTicSpeed run gamerule randomTickSpeed
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s cursorTicSpeed /= @s 3
execute as @a run scoreboard players operation @s numberOfPlayers *= @e[tag=gstools_worker,type=marker] cursorTicSpeed

execute as @a at @s if score @s numberOfCursors > @s numberOfPlayers run kill @e[tag=gstools_cursor,type=marker,limit=1,sort=random,distance=0..400]

execute as @a at @s as @e[type=marker,tag=gstools_cursor] run spreadplayers ~ ~ 3 200 false @s
kill @e[type=marker,tag=gstools_vertical_cursor]
execute as @e[tag=gstools_cursor,type=marker] at @s run function gstools:cursor/dovertical
