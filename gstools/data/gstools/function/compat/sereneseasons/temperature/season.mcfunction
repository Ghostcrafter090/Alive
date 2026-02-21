# Define

# Main
# https://www.desmos.com/calculator/ro5eqx4eid
scoreboard players operation @s seasonalTemperature = @e[tag=gstools_worker,type=marker] currentSeasonDay
scoreboard players operation @s seasonalTemperature *= @e[tag=gstools_worker,type=marker] 106
scoreboard players remove @s seasonalTemperature 366
scoreboard players operation @s seasonalTemperature /= @e[tag=gstools_worker,type=marker] 10

scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] sinInput = @s seasonalTemperature
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s sinInput *= @s 1
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s sinInput *= @s 5732
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s sinInput /= @s 10000
function gstools:util/sin

scoreboard players operation @s seasonalTemperature = @e[tag=gstools_worker,type=marker] sinOutput
scoreboard players operation @s seasonalTemperature *= @e[tag=gstools_worker,type=marker] 12
scoreboard players remove @s seasonalTemperature 2000
scoreboard players operation @s seasonalTemperature /= @e[tag=gstools_worker,type=marker] 1000

execute if entity @s[scores={seasonalTemperature=..0}] run scoreboard players operation @s seasonalTemperature *= @e[tag=gstools_worker,type=marker] 2