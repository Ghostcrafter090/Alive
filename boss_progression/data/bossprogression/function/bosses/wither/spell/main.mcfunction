# Define
scoreboard objectives add witherSpellTic dummy

# Main
function bossprogression:bosses/wither/spell/check

execute as @e[type=marker,tag=wither_spell] unless entity @s[scores={witherSpellTic=1800..}] at @s run function bossprogression:bosses/wither/spell/do