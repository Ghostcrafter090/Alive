# Define
scoreboard objectives add breathingSoundWorker dummy

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=0..0}] as @a run scoreboard players add @s breathingSoundTic 1

execute as @a run scoreboard players operation @s breathingSoundWorker = @s stamina
execute as @a run scoreboard players operation @s breathingSoundWorker /= @e[tag=gstools_worker,type=marker,limit=1] 5

execute if entity @a[scores={random10=5..}] as @a if score @s breathingSoundTic >= @s breathingSoundWorker run function lifeanddeath:disease/effecttypes/sound/consumption/play
execute if entity @a[scores={random10=..4}] as @a if score @s breathingSoundTic >= @s breathingSoundWorker run function lifeanddeath:disease/effecttypes/sound/consumption/playother

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=0..0}] as @a if score @s breathingSoundTic >= @s breathingSoundWorker run scoreboard players set @s breathingSoundTic 0