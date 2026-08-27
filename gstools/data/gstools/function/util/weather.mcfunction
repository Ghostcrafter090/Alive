# Define
scoreboard objectives add isRaining dummy
scoreboard objectives add stormIsElectricallyActive dummy

# Main
scoreboard players set @s isRaining 0
scoreboard players set @s stormIsElectricallyActive 0
execute as @s at @s if predicate gstools:is_raining run scoreboard players set @s isRaining 1
execute as @s at @s if predicate gstools:is_electrically_active run scoreboard players set @s stormIsElectricallyActive 1
execute as @s 
