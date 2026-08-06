# Define
scoreboard objectives add desirePathsLagCount dummy

# Main
function bossprogression:main
schedule function gstools:extension/bossprogression/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunBossProgression 0