# Define
scoreboard objectives add pillagerStage dummy
scoreboard objectives add pillagersKilledCount minecraft.killed:minecraft.pillager

# Main
scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] pillagerStage 0
execute as @a run scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] pillagerStage += @s pillagersKilledCount
execute as @e[tag=gstools_worker,type=marker,limit=1] run scoreboard players operation @s pillagerStage /= @s 20

execute as @e[tag=gstools_worker,type=marker,scores={pillagerStage=1..}] run schedule function bossprogression:bosses/pillager/stages/mining/main 1t
execute as @e[tag=gstools_worker,type=marker,scores={pillagerStage=2..}] run schedule function bossprogression:bosses/pillager/stages/studying/main 2t