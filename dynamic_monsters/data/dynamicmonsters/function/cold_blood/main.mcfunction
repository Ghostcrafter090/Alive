# Define
scoreboard objectives add coldBloodTemperature dummy
scoreboard objectives add coldBloodTemperatureWorker dummy

# Main
execute as @e[tag=cold_blooded,limit=6,sort=random] run function dynamicmonsters:cold_blood/setup

execute as @e[tag=cold_blooded,limit=6,sort=random] run function dynamicmonsters:cold_blood/run