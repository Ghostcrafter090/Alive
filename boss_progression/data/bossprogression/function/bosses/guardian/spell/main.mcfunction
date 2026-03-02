# Define
scoreboard objectives add guardianSpellTic dummy
scoreboard objectives add crownOfTheSeaHasBeenSpawned dummy

# Main
execute as @e[type=marker,tag=guardian_spell] unless entity @s[scores={guardianSpellTic=600..}] at @s run function bossprogression:bosses/guardian/spell/do