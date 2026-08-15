# Define
scoreboard objectives add witherSpellTic dummy
scoreboard objectives add enchantedWitherRoseHasBeenSpawned dummy

# Main
execute as @e[type=marker,tag=wither_spell] unless entity @s[scores={witherSpellTic=600..}] at @s run function bossprogression:bosses/wither/spell/do
function bossprogression:bosses/wither/spell/version_conflict/soul_fire_0
execute as @e[type=marker,tag=wither_spell] unless entity @s[scores={soulFireStrictVersionConflict=1..1}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.25 0.1 0.25 0 10 force