# Define

# Main
say "[alive_command_limit_trace_debug] gstools:extension/dynamicmonsters/run"
function dynamicmonsters:main
schedule function gstools:extension/dynamicmonsters/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDynamicMonsters 0