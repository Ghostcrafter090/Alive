# Define
scoreboard objectives add witherSpellTic dummy
scoreboard objectives add enchantedWitherRoseHasBeenSpawned dummy

# Main
execute as @e[type=marker,tag=wither_spell] unless entity @s[scores={witherSpellTic=600..}] at @s run function bossprogression:bosses/wither/spell/do
execute as @e[type=marker,tag=wither_spell] at @s run setblock ~ ~ ~ soul_fire strict