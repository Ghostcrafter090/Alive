# Define
scoreboard objectives add currentlyExecutingDesirePaths dummy

# Main
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDesirePaths=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension DesirePaths.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDesirePaths=1..1}] run scoreboard players operation @s averageTpsDesirePathsWorkerMultTen /= @s 2
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDesirePaths=1..1}] run scoreboard players operation @s averageTpsDesirePathsWorkerMultTen += @s 40
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDesirePaths 1
function desirepaths:main
schedule function gstools:extension/desirepaths/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDesirePaths 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDesirePaths 0