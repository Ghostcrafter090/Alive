# Define
scoreboard objectives add lastCurrentTemperatureGrabTic dummy
scoreboard objectives add _actualCurrentTemperature dummy

# Main
scoreboard players operation @s gameTime = @e[tag=gstools_worker,type=marker,limit=1] gameTime
execute unless entity @s[type=player] unless entity @s[type=marker] run scoreboard players operation @s gameTime /= @e[tag=gstools_worker,type=marker,limit=1] 20
execute unless entity @s[scores={lastCurrentTemperatureGrabTic=0..}] run function gstools:compat/sereneseasons/temperature/work
execute unless entity @s[scores={lastCurrentTemperatureGrabTic=0..}] run scoreboard players operation @s _actualCurrentTemperature = @s currentTemperature
execute unless entity @s[scores={lastCurrentTemperatureGrabTic=0..}] run scoreboard players operation @s lastCurrentTemperatureGrabTic = @s gameTime
execute unless score @s lastCurrentTemperatureGrabTic = @s gameTime run function gstools:compat/sereneseasons/temperature/work
execute unless score @s lastCurrentTemperatureGrabTic = @s gameTime run scoreboard players operation @s _actualCurrentTemperature = @s currentTemperature
execute unless score @s lastCurrentTemperatureGrabTic = @s gameTime run scoreboard players operation @s lastCurrentTemperatureGrabTic = @s gameTime
execute if score @s lastCurrentTemperatureGrabTic = @s gameTime run scoreboard players operation @s currentTemperature = @s _actualCurrentTemperature