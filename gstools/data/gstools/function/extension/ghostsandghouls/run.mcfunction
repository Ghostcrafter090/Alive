# Define
scoreboard objectives add currentlyExecutingGhostsAndGhouls dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] doLagCheck 0
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingGhostsAndGhouls=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension GhostsAndGhouls.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingGhostsAndGhouls=1..1,averageTpsGhostsAndGhoulsWorkerMultTen=261..}] run scoreboard players remove @s averageTpsGhostsAndGhoulsWorkerMultTen 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingGhostsAndGhouls 1
function ghostsandghouls:main


execute as @e[tag=gstools_worker,type=marker] unless entity @s[scores={anotherExtensionElseHasRan=1..1}] run scoreboard players set @s doLagCheck 1
execute as @e[tag=gstools_worker,type=marker] if score @s ticTenth > @s random10 run scoreboard players set @s doLagCheck 1

execute if entity @e[tag=gstools_worker,type=marker,scores={doLagCheck=1..1}] run schedule function gstools:extension/ghostsandghouls/lagcheck 1t append

execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunGhostsAndGhouls 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingGhostsAndGhouls 0
scoreboard players set @e[tag=gstools_worker,type=marker] anotherExtensionElseHasRan 1