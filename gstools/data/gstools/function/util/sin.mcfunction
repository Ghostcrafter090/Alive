# Define
scoreboard objectives add sinInput dummy
scoreboard objectives add sinOutput dummy

# Main
execute as @e[tag=gstools_worker,type=marker] at @s run tp @s ~ ~ ~ 0.0 0.0
execute as @e[tag=gstools_worker,type=marker] store result entity @s Rotation[1] int 1 run scoreboard players get @s sinInput
execute as @e[tag=gstools_worker,type=marker] at @s positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:['sin_worker']}
execute store result score @e[tag=gstools_worker,type=marker] sinOutput run data get entity @e[tag=sin_worker,type=marker,limit=1] Pos[0]
kill @e[type=marker,tag=sin_worker]