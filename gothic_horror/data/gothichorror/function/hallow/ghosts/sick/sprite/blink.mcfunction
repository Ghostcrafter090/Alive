# Define
scoreboard objectives add sickGhostOpenBlinkIndex dummy
# Main
scoreboard players add @s sickGhostOpenBlinkIndex 1
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenBlinkIndex=1..1}] run data modify entity @s text set value '{"text":"G","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenBlinkIndex=2..2}] run data modify entity @s text set value '{"text":"H","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenBlinkIndex=3..3}] run data modify entity @s text set value '{"text":"I","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenBlinkIndex=4..4}] run data modify entity @s text set value '{"text":"H","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenBlinkIndex=5..5}] run data modify entity @s text set value '{"text":"G","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenBlinkIndex=6..}] run scoreboard players set @s sickGhostBehaviourMode 0
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenBlinkIndex=6..}] run scoreboard players set @s sickGhostOpenBlinkIndex 0