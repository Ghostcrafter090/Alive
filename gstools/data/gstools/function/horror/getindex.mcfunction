# Define
scoreboard objectives add lastHorrorIndexGrabTic dummy
scoreboard objectives add _actualHorrorIndex dummy

# Main
scoreboard players operation @s gameTime = @e[tag=gstools_worker,type=marker,limit=1] gameTime
execute unless entity @s[type=player] run scoreboard players operation @s gameTime /= @e[tag=gstools_worker,type=marker,limit=1] 20
execute unless entity @s[scores={lastHorrorIndexGrabTic=0..}] run function gstools:horror/getindex/work
execute unless entity @s[scores={lastHorrorIndexGrabTic=0..}] run scoreboard players operation @s _actualHorrorIndex = @s horrorIndex
execute unless entity @s[scores={lastHorrorIndexGrabTic=0..}] run scoreboard players operation @s lastHorrorIndexGrabTic = @s gameTime
execute unless score @s lastHorrorIndexGrabTic = @s gameTime run function gstools:horror/getindex/work
execute unless score @s lastHorrorIndexGrabTic = @s gameTime run scoreboard players operation @s _actualHorrorIndex = @s horrorIndex
execute unless score @s lastHorrorIndexGrabTic = @s gameTime run scoreboard players operation @s lastHorrorIndexGrabTic = @s gameTime
execute if score @s lastHorrorIndexGrabTic = @s gameTime run scoreboard players operation @s horrorIndex = @s _actualHorrorIndex