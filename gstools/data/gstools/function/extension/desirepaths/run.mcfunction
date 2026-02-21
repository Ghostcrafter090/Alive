# Define

# Main
function desirepaths:main
schedule function gstools:extension/desirepaths/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDesirePaths 0