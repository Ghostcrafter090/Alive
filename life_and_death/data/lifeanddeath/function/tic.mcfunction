# Define
scoreboard objectives add breathingSoundWorker dummy
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] run scoreboard objectives add stamina dummy
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] run scoreboard players set @a stamina 200

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] run function lifeanddeath:disease/effecttypes/sound/consumption

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] as @a run scoreboard players add @s breathingSoundTic 1

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] as @a run scoreboard players operation @s breathingSoundWorker = @s stamina
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] as @a run scoreboard players operation @s breathingSoundWorker /= @e[tag=gstools_worker,type=marker,limit=1] 10
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] as @a[scores={breathingSoundWorker=..20}] run scoreboard players set @s breathingSoundWorker 20

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] as @a if entity @s[scores={random100=..40}] if score @s breathingSoundTic >= @s breathingSoundWorker run function lifeanddeath:disease/effecttypes/sound/consumption/playother

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] as @a if score @s breathingSoundTic >= @s breathingSoundWorker run scoreboard players set @s breathingSoundTic 0