# Define
scoreboard objectives add lastIsOutsideGrabTic dummy
scoreboard objectives add _actualIsOutside dummy

# Main
scoreboard players operation @s gameTime = @e[tag=gstools_worker,type=marker,limit=1] gameTime
execute unless entity @s[scores={lastIsOutsideGrabTic=0..}] run function gstools:util/is_outside/work
execute unless entity @s[scores={lastIsOutsideGrabTic=0..}] run scoreboard players operation @s _actualIsOutside = @s isOutside
execute unless entity @s[scores={lastIsOutsideGrabTic=0..}] run scoreboard players operation @s lastIsOutsideGrabTic = @s gameTime
execute unless score @s lastIsOutsideGrabTic = @s gameTime run function gstools:util/is_outside/work
execute unless score @s lastIsOutsideGrabTic = @s gameTime run scoreboard players operation @s _actualIsOutside = @s isOutside
execute unless score @s lastIsOutsideGrabTic = @s gameTime run scoreboard players operation @s lastIsOutsideGrabTic = @s gameTime
execute if score @s lastIsOutsideGrabTic = @s gameTime run scoreboard players operation @s isOutside = @s _actualIsOutside