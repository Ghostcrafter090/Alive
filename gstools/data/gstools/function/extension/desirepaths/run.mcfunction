# Define
scoreboard objectives add currentlyExecutingDesirePaths dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] doLagCheck 0
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDesirePaths=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension DesirePaths.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDesirePaths=1..1,averageTpsDesirePathsWorkerMultTen=261..}] run scoreboard players remove @s averageTpsDesirePathsWorkerMultTen 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDesirePaths 1
function desirepaths:main


execute as @e[tag=gstools_worker,type=marker] unless entity @s[scores={anotherExtensionElseHasRan=1..1}] run scoreboard players set @s doLagCheck 1
execute as @e[tag=gstools_worker,type=marker] if score @s ticTenth > @s random10 run scoreboard players set @s doLagCheck 1

execute if entity @e[tag=gstools_worker,type=marker,scores={doLagCheck=1..1}] run schedule function gstools:extension/desirepaths/lagcheck 1t append

execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDesirePaths 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDesirePaths 0
scoreboard players set @e[tag=gstools_worker,type=marker] anotherExtensionElseHasRan 1