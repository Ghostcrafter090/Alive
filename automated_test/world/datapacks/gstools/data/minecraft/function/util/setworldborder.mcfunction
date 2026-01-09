# Define
scoreboard objectives add worldBorderLocation dummy
scoreboard objectives add worldBorderWorker dummy

# Main
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/setworldborder_sub/5

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/setworldborder_sub/9

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/setworldborder_sub/12

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/setworldborder_sub/15

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/setworldborder_sub/18

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/setworldborder_sub/21

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/setworldborder_sub/24

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/setworldborder_sub/27

execute unless entity @e[tag=gstools_worker,type=marker,scores={worldBorderLocation=0..0}] run function gstools:util/setworldborder
