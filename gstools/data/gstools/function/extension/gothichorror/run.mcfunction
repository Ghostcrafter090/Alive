# Define
scoreboard objectives add currentlyExecutingGothicHorror dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] doLagCheck 0
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingGothicHorror=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension GothicHorror.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingGothicHorror=1..1,averageTpsGothicHorrorWorkerMultTen=261..}] run scoreboard players remove @s averageTpsGothicHorrorWorkerMultTen 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingGothicHorror 1
function gothichorror:main


execute as @e[tag=gstools_worker,type=marker] unless entity @s[scores={anotherExtensionElseHasRan=1..1}] run scoreboard players set @s doLagCheck 1
execute as @e[tag=gstools_worker,type=marker] if score @s ticTenth > @s random10 run scoreboard players set @s doLagCheck 1

execute if entity @e[tag=gstools_worker,type=marker,scores={doLagCheck=1..1}] run schedule function gstools:extension/gothichorror/lagcheck 1t append

execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunGothicHorror 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingGothicHorror 0
scoreboard players set @e[tag=gstools_worker,type=marker] anotherExtensionElseHasRan 1