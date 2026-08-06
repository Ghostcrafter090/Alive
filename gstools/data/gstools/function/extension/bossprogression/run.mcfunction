# Define
scoreboard objectives add desirePathsLagCount dummy
scoreboard objectives add currentlyExecutingBossProgression dummy

# Main
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingBossProgression=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension BossProgression.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingBossProgression=1..1,averageTpsBossProgressionWorkerMultTen=240..}] run scoreboard players remove @s averageTpsBossProgressionWorkerMultTen 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingBossProgression 1
function bossprogression:main
schedule function gstools:extension/bossprogression/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunBossProgression 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingBossProgression 0