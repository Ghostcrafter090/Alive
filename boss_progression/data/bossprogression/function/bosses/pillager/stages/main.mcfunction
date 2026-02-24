# Define
scoreboard objectives add pillagersMining dummy
scoreboard objectives add pillagersKilledCount minecraft.killed:minecraft.pillager

# Main
execute as @a[scores={pillagersKilledCount=20..}] run scoreboard players set @e[type=marker,tag=gstools_worker] pillagersMining 1

execute as @e[tag=gstools_worker,type=marker,scores={pillagersMining=1..1}] run function bossprogression:bosses/pillager/stages/mining/main