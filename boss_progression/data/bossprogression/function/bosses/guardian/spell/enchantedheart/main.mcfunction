# Define

# Main
execute as @e[type=marker,tag=enchant_heart_of_the_sea_spell] unless entity @s[scores={heartOfTheSeaSpellTic=60..}] at @s run function bossprogression:bosses/guardian/spell/enchantedheart/do