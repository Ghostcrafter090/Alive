# Define

# Main
say "[alive_command_limit_trace_debug] gstools:extension/blockdecay/run"

function blockdecay:main
schedule function gstools:extension/blockdecay/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunBlockDecay 0