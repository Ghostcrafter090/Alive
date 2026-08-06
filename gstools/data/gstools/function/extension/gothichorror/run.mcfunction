# Define

# Main
say "[alive_command_limit_trace_debug] gstools:extension/gothichorror/run"
function gothichorror:main
schedule function gstools:extension/gothichorror/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunGothicHorror 0