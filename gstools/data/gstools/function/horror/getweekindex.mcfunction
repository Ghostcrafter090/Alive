# Define
scoreboard objectives add weekHorrorModification dummy

# Main
# https://www.desmos.com/calculator/8nz1lwy46t
scoreboard players operation @s weekHorrorModification = @e[type=marker,tag=gstools_worker] dayNumberAsTicks
scoreboard players operation @s weekHorrorModification %= @e[type=marker,tag=gstools_worker] 72000
scoreboard players operation @s weekHorrorModification /= @e[type=marker,tag=gstools_worker] 12
scoreboard players remove @s weekHorrorModification 3000
scoreboard players operation @s weekHorrorModification *= @s weekHorrorModification
scoreboard players operation @s weekHorrorModification *= @e[type=marker,tag=gstools_worker] 2
scoreboard players operation @s weekHorrorModification /= @e[type=marker,tag=gstools_worker] 500000
scoreboard players remove @s weekHorrorModification 18
scoreboard players operation @s weekHorrorModification /= @e[type=marker,tag=gstools_worker] 2

