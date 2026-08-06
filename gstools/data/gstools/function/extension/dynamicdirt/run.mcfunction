# Define
scoreboard objectives add currentlyExecutingDynamicDirt dummy

# Main
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDynamicDirt=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension DynamicDirt.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDynamicDirt=1..1,averageTpsDynamicDirtWorkerMultTen=200..}] run scoreboard players operation @s averageTpsDynamicDirtWorkerMultTen -= @s 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDynamicDirt 1
function dynamicdirt:main
schedule function gstools:extension/dynamicdirt/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDynamicDirt 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDynamicDirt 0