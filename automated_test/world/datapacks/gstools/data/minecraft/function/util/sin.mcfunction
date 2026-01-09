# Define
scoreboard objectives add sinInput dummy
scoreboard objectives add sinOutput dummy

# Main
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/sin_sub/5
execute store result score @e[tag=gstools_worker,type=marker] sinOutput run data get entity @e[tag=sin_worker,type=marker,limit=1] Pos[0]
kill @e[type=marker,tag=sin_worker]