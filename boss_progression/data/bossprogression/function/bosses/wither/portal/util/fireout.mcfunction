# Define
# Main
say "[alive_command_limit_trace_debug] bossprogression:bosses/wither/portal/util/fireout"
execute as @e[tag=wither_fire] at @s run fill ~ ~ ~ ~ ~ ~ air replace fire
execute as @e[tag=wither_fire] run tag @s remove wither_fire