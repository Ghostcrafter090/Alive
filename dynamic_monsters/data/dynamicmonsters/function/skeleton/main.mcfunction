# Define
scoreboard objectives add DeathTime dummy

# Main
say "[alive_command_limit_trace_debug] dynamicmonsters:skeleton/main"
execute as @e[type=skeleton,sort=random,limit=10] run function dynamicmonsters:skeleton/run
execute as @e[type=stray,sort=random,limit=10] run function dynamicmonsters:skeleton/run
function dynamicmonsters:skeleton/version_conflict/bogged_0
function dynamicmonsters:skeleton/version_conflict/parched_0
