# Define
scoreboard objectives add desirePathsLagCount dummy

# Main
function enhancedsurvival:main
schedule function gstools:extension/enhancedsurvival/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunEnhancedSurvival 0