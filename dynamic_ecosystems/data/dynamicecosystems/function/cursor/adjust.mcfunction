# Define

# Main
scoreboard players operation @s currentSeasonDay = @e[tag=gstools_worker,type=marker] currentSeasonDay
scoreboard players operation @e[tag=gstools_worker,type=marker] currentSeasonDay = @e[tag=gstools_chunk_worker,type=marker,sort=nearest,limit=1] seasonAdjustWorker
execute at @s run function gstools:compat/sereneseasons/temperature
scoreboard players operation @e[tag=gstools_worker,type=marker] currentSeasonDay = @s currentSeasonDay

