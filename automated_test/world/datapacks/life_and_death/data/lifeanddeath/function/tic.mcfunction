# Define
scoreboard objectives add breathingSoundWorker dummy
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] run function lifeanddeath:tic_sub/2

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] run function lifeanddeath:disease/effecttypes/sound/consumption

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] as @a run scoreboard players add @s breathingSoundTic 1

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] run function lifeanddeath:tic_sub/10

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] as @a if entity @s[scores={random100=..40}] if score @s breathingSoundTic >= @s breathingSoundWorker run function lifeanddeath:disease/effecttypes/sound/consumption/playother

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] as @a if score @s breathingSoundTic >= @s breathingSoundWorker run scoreboard players set @s breathingSoundTic 0