# Define
scoreboard objectives add collapseAccumulate dummy

# Main
execute as @e[tag=gstools_cursor,type=marker] at @s run function gstools:compat/sereneseasons/temperature

function dynamicecosystems:trees/oak
function dynamicecosystems:trees/spruce
function dynamicecosystems:trees/birch
function dynamicecosystems:trees/jungle
function dynamicecosystems:trees/dark_oak
function dynamicecosystems:trees/acacia
function dynamicecosystems:trees/cherry
function dynamicecosystems:trees/pale_oak
function dynamicecosystems:trees/mangrove

function dynamicecosystems:vines/main
execute as @e[tag=gstools_cursor] run function dynamicecosystems:seasonal/ice
execute as @e[tag=gstools_cursor_vertical] run function dynamicecosystems:seasonal/ice

execute if entity @e[tag=gstools_worker,type=marker,scores={ticTenth=1..1}] run function dynamicecosystems:shrubs/main