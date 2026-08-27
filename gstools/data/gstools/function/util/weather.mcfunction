# Define
scoreboard objectives add isRaining dummy
scoreboard objectives add stormIsElectricallyActive dummy

# Main
scoreboard players set @s isRaining 0
scoreboard players set @s stormIsElectricallyActive 0
execute at @s if predicate gstools:is_raining run scoreboard players set @s isRaining 1
execute at @s if predicate gstools:is_electrically_active run scoreboard players set @s stormIsElectricallyActive 1
execute if entity @e[type=marker,tag=gstools_worker,scores={isWeather2Present=1..1}] if entity @s[scores={isRainingWeather2=45..}] run scoreboard players set @s isRaining 1
execute if entity @e[type=marker,tag=gstools_worker,scores={isWeather2Present=1..1}] if entity @s[scores={stormIntensity=400..}] run scoreboard players set @s stormIsElectricallyActive 1

execute if entity @e[type=marker,tag=gstools_worker,scores={isWeather2Present=1..1}] if entity @s[type=player] unless entity @s[scores={isRainingWeather2=45..}] unless entity @s[scores={stormIntensity=400..}] run weather clear 100000
execute if entity @e[type=marker,tag=gstools_worker,scores={isWeather2Present=1..1}] if entity @s[type=player] if entity @s[scores={isRainingWeather2=45..}] unless entity @s[scores={stormIntensity=400..}] run weather rain 100000
execute if entity @e[type=marker,tag=gstools_worker,scores={isWeather2Present=1..1}] if entity @s[type=player] if entity @s[scores={isRainingWeather2=45..}] if entity @s[scores={stormIntensity=400..}] run weather thunder 100000

