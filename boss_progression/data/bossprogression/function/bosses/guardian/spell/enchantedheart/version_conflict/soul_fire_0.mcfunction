# Define
scoreboard objectives add soulFireStrictVersionConflict dummy

# Main
execute if entity @s[scores={heartOfTheSeaSpellTic=30..}] run setblock ~ ~ ~ soul_fire strict
scoreboard players set @s soulFireStrictVersionConflict 1