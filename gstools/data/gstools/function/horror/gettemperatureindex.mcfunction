# Define
scoreboard objectives add temperatureHorrorModification dummy
scoreboard objectives add temperatureHorrorModificationWorkerA dummy

# Main
execute at @s run function gstools:compat/sereneseasons/temperature

scoreboard players operation @s temperatureHorrorModification = @s currentTemperature
execute if score @s temperatureHorrorModification >= @e[tag=gstools_worker,type=marker,limit=1] 1 run scoreboard players operation @s temperatureHorrorModification *= @e[tag=gstools_worker,type=marker,limit=1] n1
scoreboard players add @s temperatureHorrorModification 10
scoreboard players operation @s temperatureHorrorModificationWorkerA = @s temperatureHorrorModification
scoreboard players operation @s temperatureHorrorModification *= @s temperatureHorrorModificationWorkerA
scoreboard players operation @s temperatureHorrorModification *= @s temperatureHorrorModificationWorkerA
scoreboard players operation @s temperatureHorrorModification /= @e[tag=gstools_worker,type=marker,limit=1] 100
scoreboard players operation @s temperatureHorrorModificationWorkerA = @s temperatureHorrorModification

execute if score @s temperatureHorrorModificationWorkerA <= @e[tag=gstools_worker,type=marker,limit=1] n1 run scoreboard players operation @s temperatureHorrorModificationWorkerA *= @e[tag=gstools_worker,type=marker,limit=1] n1
scoreboard players operation @s temperatureHorrorModificationWorkerA /= @s temperatureHorrorModification
scoreboard players add @s temperatureHorrorModificationWorkerA 1
scoreboard players operation @s temperatureHorrorModificationWorkerA /= @e[tag=gstools_worker,type=marker,limit=1] 2

scoreboard players operation @s temperatureHorrorModificationWorkerA *= @e[tag=gstools_worker,type=marker,limit=1] 1000
scoreboard players add @s temperatureHorrorModificationWorkerA 1

scoreboard players operation @s temperatureHorrorModification *= @s temperatureHorrorModificationWorkerA
scoreboard players operation @s temperatureHorrorModification /= @e[tag=gstools_worker,type=marker,limit=1] 1000




