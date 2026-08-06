# Define

# Main
say "[alive_command_limit_trace_debug] gstools:extension/dynamicdirt/run"
function dynamicdirt:main
schedule function gstools:extension/dynamicdirt/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDynamicDirt 0