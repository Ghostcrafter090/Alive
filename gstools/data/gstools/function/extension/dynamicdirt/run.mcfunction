# Define

# Main
function dynamicdirt:main
schedule function gstools:extension/dynamicdirt/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDynamicDirt 0