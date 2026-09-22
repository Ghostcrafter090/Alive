# Define
scoreboard objectives add dyingGhostOpenBlinkIndex dummy
# Main
scoreboard players add @s dyingGhostOpenBlinkIndex 1
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenBlinkIndex=1..1}] run data modify entity @s text set value '{"text":"k","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenBlinkIndex=2..2}] run data modify entity @s text set value '{"text":"l","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenBlinkIndex=3..3}] run data modify entity @s text set value '{"text":"m","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenBlinkIndex=4..4}] run data modify entity @s text set value '{"text":"l","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenBlinkIndex=5..5}] run data modify entity @s text set value '{"text":"k","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenBlinkIndex=6..}] run scoreboard players set @s dyingGhostBehaviourMode 0
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenBlinkIndex=6..}] run scoreboard players set @s dyingGhostOpenBlinkIndex 0
