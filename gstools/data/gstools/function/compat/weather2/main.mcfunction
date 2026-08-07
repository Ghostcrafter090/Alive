# Define
scoreboard objectives add isWeather2Present dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] isWeather2Present 1
execute as @e[type=weather2:lightning_bolt] at @s run summon minecraft:lightning_bolt
execute as @e[type=weather2:lightning_bolt] at @s run say lightning_bolt
execute as @e[type=weather2:lightning_bolt] at @s run kill @s