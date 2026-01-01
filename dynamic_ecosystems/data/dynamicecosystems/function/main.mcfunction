# Define
scoreboard objectives add collapseAccumulate dummy

# Main
function dynamicecosystems:trees/oak
function dynamicecosystems:trees/spruce
function dynamicecosystems:trees/birch
function dynamicecosystems:trees/jungle

function dynamicecosystems:vines/main
execute if entity @e[tag=gstools_worker,type=marker,scores={ticTenth=1..1}] run function dynamicecosystems:shrubs/main