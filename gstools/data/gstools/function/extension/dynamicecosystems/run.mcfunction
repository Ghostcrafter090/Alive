# Define
scoreboard objectives add currentlyExecutingDynamicEcosystems dummy

# Main
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDynamicEcosystems=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension DynamicEcosystems.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDynamicEcosystems=1..1,averageTpsDynamicEcosystemsWorkerMultTen=240..}] run scoreboard players remove @s averageTpsDynamicEcosystemsWorkerMultTen 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDynamicEcosystems 1
function dynamicecosystems:main
schedule function gstools:extension/dynamicecosystems/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDynamicEcosystems 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDynamicEcosystems 0