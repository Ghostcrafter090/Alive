# Define
scoreboard objectives add lastHorrorIndexGrabTic dummy

# Main
execute unless entity @s[scores={lastHorrorIndexGrabTic=0..}] run function gstools:horror/getindex/work
execute unless entity @s[scores={lastHorrorIndexGrabTic=0..}] run scoreboard players operation @s lastHorrorIndexGrabTic = @e[tag=gstools_worker,type=marker,limit=1] gameTime
execute unless score @s lastHorrorIndexGrabTic = @e[tag=gstools_worker,type=marker,limit=1] gameTime run function gstools:horror/getindex/work
execute unless score @s lastHorrorIndexGrabTic = @e[tag=gstools_worker,type=marker,limit=1] gameTime run scoreboard players operation @s lastHorrorIndexGrabTic = @e[tag=gstools_worker,type=marker,limit=1] gameTime