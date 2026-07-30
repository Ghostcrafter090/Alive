# Define
scoreboard objectives add allHallowsEveIndex dummy

# Main
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s allHallowsEveIndex = @s currentSeasonDay
