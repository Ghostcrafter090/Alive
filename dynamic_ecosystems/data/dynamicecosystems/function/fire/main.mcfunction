# Define
scoreboard objectives add autoIgnitionChance dummy
scoreboard objectives add smokeChance dummy

# Main
scoreboard players operation @s smokeChance = @s currentTemperature
scoreboard players operation @s smokeChance -= @e[tag=gstools_worker,type=marker,limit=1] 60
scoreboard players operation @s smokeChance *= @e[tag=gstools_worker,type=marker,limit=1] 8

scoreboard players operation @s autoIgnitionChance = @s currentTemperature
scoreboard players operation @s autoIgnitionChance -= @e[tag=gstools_worker,type=marker,limit=1] 60
scoreboard players operation @s autoIgnitionChance -= @e[tag=gstools_worker,type=marker,limit=1] 15
scoreboard players operation @s autoIgnitionChance *= @e[tag=gstools_worker,type=marker,limit=1] 4

function gstools:util/random

execute if score @s random100 < @s smokeChance at @s run particle smoke ~ ~ ~ 10 10 10 0 30
execute if score @s random100 < @s autoIgnitionChance at @s run particle large_smoke ~ ~ ~ 3 3 3 0 10
execute if score @s random100 < @s autoIgnitionChance at @s run fill ~ ~ ~ ~ ~ ~ fire replace #gstools:air




