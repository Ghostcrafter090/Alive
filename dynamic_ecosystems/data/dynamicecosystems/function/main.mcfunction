# Define
scoreboard objectives add collapseAccumulate dummy
scoreboard objectives add seasonAdjustWorker dummy
scoreboard objectives add treeCursorCount dummy

# Main
execute as @e[tag=gstools_cursor,type=marker,tag=!spread_from_self] at @s run function gstools:compat/sereneseasons/temperature
execute as @e[tag=gstools_vertical_cursor,type=marker,tag=!spread_from_self] at @s run function gstools:compat/sereneseasons/temperature
execute if entity @e[tag=gstools_cursor,type=marker,tag=spread_from_self] run scoreboard players operation @e[tag=gstools_worker,type=marker] seasonAdjustWorker = @e[tag=gstools_worker,type=marker] currentSeasonDay
execute if entity @e[tag=gstools_cursor,type=marker,tag=spread_from_self] run scoreboard players operation @e[tag=gstools_worker,type=marker] seasonAdjustWorker *= @e[tag=gstools_worker,type=marker] 24000
execute if entity @e[tag=gstools_cursor,type=marker,tag=spread_from_self] run scoreboard players operation @e[tag=gstools_worker,type=marker] seasonAdjustWorker *= @e[tag=gstools_worker,type=marker] 16
execute if entity @e[tag=gstools_cursor,type=marker,tag=spread_from_self] run scoreboard players operation @e[tag=gstools_worker,type=marker] seasonAdjustWorker /= @e[tag=gstools_worker,type=marker] 10
execute if entity @e[tag=gstools_cursor,type=marker,tag=spread_from_self] as @e[tag=gstools_chunk_worker] run function dynamicecosystems:cursor/chunk
execute as @e[tag=gstools_cursor,type=marker,tag=spread_from_self] run function dynamicecosystems:cursor/adjust

function dynamicecosystems:trees/oak
function dynamicecosystems:trees/spruce
function dynamicecosystems:trees/birch
function dynamicecosystems:trees/jungle
function dynamicecosystems:trees/dark_oak
function dynamicecosystems:trees/acacia
function dynamicecosystems:trees/cherry
function dynamicecosystems:trees/pale_oak
function dynamicecosystems:trees/mangrove

execute store result score @e[tag=gstools_worker,type=marker] treeCursorCount if entity @e[type=marker,tag=tree_cursor]
execute if entity @e[tag=gstools_worker,type=marker,scores={treeCursorCount=200..}] run kill @e[tag=tree_cursor,type=marker,limit=100,sort=random]

function dynamicecosystems:vines/main
execute if entity @e[tag=gstools_worker,type=marker,scores={sereneSeasonsIsLoaded=1..1}] as @e[tag=gstools_cursor] run function dynamicecosystems:seasonal/ice
execute if entity @e[tag=gstools_worker,type=marker,scores={sereneSeasonsIsLoaded=1..1}] as @e[tag=gstools_vertical_cursor] run function dynamicecosystems:seasonal/ice

execute as @e[tag=gstools_cursor] run function dynamicecosystems:fire/main
execute as @e[tag=gstools_vertical_cursor] run function dynamicecosystems:fire/main

execute if entity @e[tag=gstools_worker,type=marker,scores={ticTenth=1..1}] run function dynamicecosystems:shrubs/main

execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~1 ~ #dynamicdirt:air run fill ~ ~ ~ ~ ~ ~ grass_block replace dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~ ~ #dynamicdirt:air run fill ~ ~-1 ~ ~ ~-1 ~ grass_block replace dirt