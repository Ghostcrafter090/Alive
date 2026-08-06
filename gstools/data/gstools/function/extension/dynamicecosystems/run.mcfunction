# Define

# Main
say "[alive_command_limit_trace_debug] gstools:extension/dynamicecosystems/run"
function dynamicecosystems:main
schedule function gstools:extension/dynamicecosystems/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunDynamicEcosystems 0