# Define
scoreboard objectives add breathingSoundWorker dummy

# Main

function lifeanddeath:disease/effecttypes/sound/consumption

execute as @a run scoreboard players add @s breathingSoundTic 1

execute as @a run function enhancedsurvival:breathing/main_sub/9
execute as @a[scores={breathingSoundWorker=..20}] run scoreboard players set @s breathingSoundWorker 20

execute as @a run function enhancedsurvival:breathing/main_sub/13

execute as @a run function enhancedsurvival:breathing/main_sub/16

execute as @a[tag=!play_disease_sound] run function enhancedsurvival:breathing/main_sub/19

execute as @a if score @s breathingSoundTic >= @s breathingSoundWorker run scoreboard players set @s breathingSoundTic 0

execute as @a[scores={air=..299}] run function enhancedsurvival:breathing/main_sub/24



