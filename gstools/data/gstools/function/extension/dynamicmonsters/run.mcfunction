# Define
scoreboard objectives add currentlyExecutingDynamicMonsters dummy

# Main
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDynamicMonsters=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension DynamicMonsters.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingDynamicMonsters=1..1,averageTpsDynamicMonstersWorkerMultTen=200..}] run scoreboard players operation @s averageTpsDynamicMonstersWorkerMultTen -= @s 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDynamicMonsters 1
function dynamicmonsters:main
schedule function gstools:extension/dynamicmonsters/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDynamicMonsters 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingDynamicMonsters 0