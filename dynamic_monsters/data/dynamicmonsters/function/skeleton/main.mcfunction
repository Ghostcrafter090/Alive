# Define
scoreboard objectives add DeathTime dummy

# Main
execute as @e[type=skeleton] run function dynamicmonsters:skeleton/run
execute as @e[type=stray] run function dynamicmonsters:skeleton/run
execute as @e[type=bogged] run function dynamicmonsters:skeleton/run
