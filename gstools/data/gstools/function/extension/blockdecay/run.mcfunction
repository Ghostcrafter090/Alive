# Define

# Main

function blockdecay:main
schedule function gstools:extension/blockdecay/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunBlockDecay 0