# Define
scoreboard objectives add desirePathsLagCount dummy
scoreboard objectives add currentlyExecutingBossProgression dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] doLagCheck 0
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingBossProgression=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension BossProgression.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingBossProgression=1..1,averageTpsBossProgressionWorkerMultTen=261..}] run scoreboard players remove @s averageTpsBossProgressionWorkerMultTen 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingBossProgression 1
function bossprogression:main


execute as @e[tag=gstools_worker,type=marker] unless entity @s[scores={anotherExtensionElseHasRan=1..1}] run scoreboard players set @s doLagCheck 1
execute as @e[tag=gstools_worker,type=marker] if score @s ticTenth > @s random10 run scoreboard players set @s doLagCheck 1

execute if entity @e[tag=gstools_worker,type=marker,scores={doLagCheck=1..1}] run schedule function gstools:extension/blockdecay/lagcheck 1t append

execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunBossProgression 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingBossProgression 0
scoreboard players set @e[tag=gstools_worker,type=marker] anotherExtensionElseHasRan 1