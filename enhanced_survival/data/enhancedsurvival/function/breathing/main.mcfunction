# Define
scoreboard objectives add breathingSoundWorker dummy

# Main

function lifeanddeath:disease/effecttypes/sound/consumption

execute as @a run scoreboard players add @s breathingSoundTic 1

execute as @a run scoreboard players operation @s breathingSoundWorker = @s stamina
execute as @a run scoreboard players operation @s breathingSoundWorker /= @e[tag=gstools_worker,type=marker,limit=1] 10
execute as @a[scores={breathingSoundWorker=..20}] run scoreboard players set @s breathingSoundWorker 20

execute as @a if entity @s[scores={hasDiseaseBoolean=1..1}] if entity @s[scores={random100=41..}] if score @s breathingSoundTic >= @s breathingSoundWorker run function enhancedsurvival:breathing/play
execute as @a unless entity @s[scores={hasDiseaseBoolean=1..1}] if score @s breathingSoundTic >= @s breathingSoundWorker run function enhancedsurvival:breathing/play

execute as @a if entity @s[scores={hasDiseaseBoolean=1..1}] if entity @s[scores={random100=41..}] if score @s breathingSoundTic >= @s breathingSoundWorker run function lifeanddeath:disease/effecttypes/sound/consumption/play
execute as @a if entity @s[scores={hasDiseaseBoolean=1..1}] if entity @s[scores={random100=..40}] if score @s breathingSoundTic >= @s breathingSoundWorker run function lifeanddeath:disease/effecttypes/sound/consumption/playother

execute as @a[tag=!play_disease_sound] if entity @s[scores={hasDiseaseBoolean=1..1}] if entity @s[scores={random100=..40}] if score @s breathingSoundTic >= @s breathingSoundWorker run function enhancedsurvival:breathing/play
execute as @a[tag=!play_disease_sound] if entity @s[scores={hasDiseaseBoolean=1..1}] if entity @s[scores={random100=..40}] if score @s breathingSoundTic >= @s breathingSoundWorker run function lifeanddeath:disease/effecttypes/sound/consumption/play

execute as @a if score @s breathingSoundTic >= @s breathingSoundWorker run scoreboard players set @s breathingSoundTic 0