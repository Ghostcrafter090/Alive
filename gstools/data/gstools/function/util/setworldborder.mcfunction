# Define
scoreboard objectives add worldBorderLocation dummy
scoreboard objectives add worldBorderWorker dummy

# Main
scoreboard players add $worldBorderCommand worldBorderSetLocation 1
execute as @e[tag=gstools_worker,type=marker] store result score @s worldBorderLocation run worldborder get
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s worldBorderLocation -= @s worldBorderSetLocation
execute as @e[tag=gstools_worker,type=marker] run scoreboard players remove @s worldBorderLocation 24

execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation <= @s n1000000 run worldborder add 1000000
execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation >= @s 1000000 run worldborder add -1000000

execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation <= @s n100000 run worldborder add 100000
execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation >= @s 100000 run worldborder add -100000

execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation <= @s n10000 run worldborder add 10000
execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation >= @s 10000 run worldborder add -10000

execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation <= @s n1000 run worldborder add 1000
execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation >= @s 1000 run worldborder add -1000

execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation <= @s n100 run worldborder add 100
execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation >= @s 100 run worldborder add -100

execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation <= @s n10 run worldborder add 10
execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation >= @s 10 run worldborder add -10

execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation <= @s n1 run worldborder add 1
execute as @e[tag=gstools_worker,type=marker] if score @s worldBorderLocation >= @s 1 run worldborder add -1

scoreboard players set $worldBorderCommand worldBorderWorker 1000
execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderLocation=-1..1}] if score $worldBorderCommand worldBorderSetLocation < $worldBorderCommand worldBorderWorker run function gstools:util/setworldborder