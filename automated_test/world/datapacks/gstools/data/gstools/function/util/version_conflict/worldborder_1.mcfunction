# Define

# Main
execute store result score @e[tag=gstools_worker,type=marker] blocksPerSecond run stopwatch query alive:tps 200
scoreboard players set @e[tag=gstools_worker,type=marker] worldBorderVersionConflict 1