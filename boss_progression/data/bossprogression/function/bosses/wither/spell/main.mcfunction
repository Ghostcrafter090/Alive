# Define
scoreboard objectives add witherSpellTic dummy

# Main

execute as @e[type=marker,tag=wither_spell] unless entity @s[scores={witherSpellTic=600..}] at @s run function bossprogression:bosses/wither/spell/do