# Define
scoreboard objectives add pillagersMining dummy
scoreboard objectives add pillagersKilledCount minecraft.killed:minecraft.pillager

# Main
execute as @a[scores={pillagersKilledCount=20..}] run scoreboard players set @e[type=marker,tag=gstools_worker] pillagersMining 1

function bossprogression:bosses/pillager/stages/mining