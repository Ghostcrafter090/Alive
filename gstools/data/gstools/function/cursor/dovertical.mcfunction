# Define
scoreboard objectives add verticalCursorWorker dummy

# Main
summon marker ~ ~ ~ {Tags:['gstools_vertical_cursor','notmoved']}
execute store result score @s maximumCursorY run data get entity @s Pos[1] 1
scoreboard players operation @s verticalCursorWorker = @s maximumCursorY

function gstools:util/random
scoreboard players operation @s verticalCursorWorker -= @e[tag=gstools_worker,type=marker,limit=1] random10

execute as @e[tag=gstools_vertical_cursor] if entity @s[tag=notmoved] store result entity @s Pos[1] int 1 run scoreboard players get @e[type=marker,tag=gstools_cursor,limit=1,sort=nearest] verticalCursorWorker
execute as @e[tag=gstools_vertical_cursor] if entity @s[tag=notmoved] run tag @s remove notmoved

summon marker ~ ~ ~ {Tags:['gstools_vertical_cursor','notmoved']}
execute store result score @s maximumCursorY run data get entity @s Pos[1] 1
scoreboard players operation @s verticalCursorWorker = @s maximumCursorY

function gstools:util/random
scoreboard players operation @s verticalCursorWorker -= @e[tag=gstools_worker,type=marker,limit=1] random100

execute as @e[tag=gstools_vertical_cursor] if entity @s[tag=notmoved] store result entity @s Pos[1] int 1 run scoreboard players get @e[type=marker,tag=gstools_cursor,limit=1,sort=nearest] verticalCursorWorker
execute as @e[tag=gstools_vertical_cursor] if entity @s[tag=notmoved] run tag @s remove notmoved