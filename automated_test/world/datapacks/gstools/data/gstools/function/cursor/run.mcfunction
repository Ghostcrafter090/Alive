# Define
scoreboard objectives add doRunCursor dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] doRunCursor 0
execute if entity @e[tag=gstools_worker,type=marker,scores={dynamicDirtLoaded=1..1}] run scoreboard players set @e[tag=gstools_worker,type=marker] doRunCursor 1

execute if entity @e[tag=gstools_worker,type=marker,scores={doRunCursor=1..1}] run function gstools:cursor/main