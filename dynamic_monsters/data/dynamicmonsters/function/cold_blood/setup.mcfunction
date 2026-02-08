# Define

# Main
execute if entity @s[tag=!spider_setup] at @s run function gstools:compat/sereneseasons/temperature
execute if entity @s[tag=!spider_setup] run scoreboard players operation @s coldBloodTemperatureWorker = @s currentTemperature
execute if entity @s[tag=!spider_setup] run scoreboard players operation @s coldBloodTemperatureWorker *= @e[type=marker,tag=gstools_worker,limit=1] 10000
execute if entity @s[tag=!spider_setup] run tag @s add spider_setup