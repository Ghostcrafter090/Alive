# Define
scoreboard objectives add desirePathsLagCount dummy
scoreboard objectives add currentlyExecutingEnhancedSurvival dummy

# Main
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingEnhancedSurvival=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension EnhancedSurvival.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingEnhancedSurvival=1..1,averageTpsEnhancedSurvivalWorkerMultTen=261..}] run scoreboard players remove @s averageTpsEnhancedSurvivalWorkerMultTen 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingEnhancedSurvival 1
function enhancedsurvival:main
schedule function gstools:extension/enhancedsurvival/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunEnhancedSurvival 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingEnhancedSurvival 0