# Define
scoreboard objectives add currentlyExecutingGothicHorror dummy

# Main
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingGothicHorror=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension GothicHorror.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingGothicHorror=1..1,averageTpsGothicHorrorWorkerMultTen=261..}] run scoreboard players remove @s averageTpsGothicHorrorWorkerMultTen 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingGothicHorror 1
function gothichorror:main
schedule function gstools:extension/gothichorror/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunGothicHorror 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingGothicHorror 0