# Define
scoreboard objectives add isWeather2Present dummy
scoreboard objectives add isExpandedWeather2DynamicsPresent dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] isWeather2Present 1
execute as @e[type=weather2:lightning_bolt] at @s run summon minecraft:lightning_bolt
# execute as @e[type=weather2:lightning_bolt] at @s run say lightning_bolt
execute as @e[type=weather2:lightning_bolt] at @s run kill @s

execute as @a at @s run function gstools:compat/weather2/comm/check_storm