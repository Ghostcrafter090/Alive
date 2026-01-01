# Define
scoreboard objectives add collapseAccumulate dummy

# Main
function dynamicecosystems:trees/oak
function dynamicecosystems:trees/spruce
function dynamicecosystems:trees/birch
function dynamicecosystems:trees/jungle
function dynamicecosystems:trees/dark_oak
function dynamicecosystems:trees/acacia
function dynamicecosystems:trees/cherry
function dynamicecosystems:trees/pale_oak

function dynamicecosystems:vines/main
execute if entity @e[tag=gstools_worker,type=marker,scores={ticTenth=1..1}] run function dynamicecosystems:shrubs/main