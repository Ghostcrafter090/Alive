# Define
scoreboard objectives add lunarHorrorModification dummy

# Main
# https://www.desmos.com/calculator/8nz1lwy46t
scoreboard players operation @s lunarHorrorModification = @e[type=marker,tag=gstools_worker] dayNumberAsTicks
scoreboard players operation @s lunarHorrorModification %= @e[type=marker,tag=gstools_worker] 192000
scoreboard players operation @s lunarHorrorModification /= @e[type=marker,tag=gstools_worker] 32
scoreboard players remove @s lunarHorrorModification 3000
scoreboard players operation @s lunarHorrorModification *= @s lunarHorrorModification
scoreboard players operation @s lunarHorrorModification *= @e[type=marker,tag=gstools_worker] 2
scoreboard players operation @s lunarHorrorModification /= @e[type=marker,tag=gstools_worker] 500000
scoreboard players remove @s lunarHorrorModification 18

