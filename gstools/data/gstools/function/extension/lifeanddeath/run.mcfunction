# Define
scoreboard objectives add desirePathsLagCount dummy

# Main
say "[alive_command_limit_trace_debug] gstools:extension/lifeanddeath/run"
function lifeanddeath:main
schedule function gstools:extension/lifeanddeath/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunLifeAndDeath 0