# Define
scoreboard objectives add numberOfEntities dummy
scoreboard objectives add numberOfAnimals dummy
scoreboard objectives add numberOfMonsters dummy
scoreboard objectives add numberOfFish dummy
scoreboard objectives add numberOfGolems dummy
scoreboard objectives add numberOfPillagers dummy
scoreboard objectives add numberOfBosses dummy
scoreboard objectives add numberOfTiles dummy

# Main
execute as @e[tag=!gs_tagged] run function gstools:tagger/dotag
execute store result score @e[type=marker,tag=gstools_worker] numberOfEntities if entity @e

execute store result score @e[type=marker,tag=gstools_worker] numberOfAnimals if entity @e[tag=animal]
execute store result score @e[type=marker,tag=gstools_worker] numberOfMonsters if entity @e[tag=monster]
execute store result score @e[type=marker,tag=gstools_worker] numberOfFish if entity @e[tag=fish]
execute store result score @e[type=marker,tag=gstools_worker] numberOfGolems if entity @e[tag=golem]
execute store result score @e[type=marker,tag=gstools_worker] numberOfPillagers if entity @e[tag=pillager]
execute store result score @e[type=marker,tag=gstools_worker] numberOfBosses if entity @e[tag=boss]
execute store result score @e[type=marker,tag=gstools_worker] numberOfTiles if entity @e[tag=tile]


