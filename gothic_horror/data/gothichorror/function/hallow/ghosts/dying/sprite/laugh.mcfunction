# Define
scoreboard objectives add dyingGhostOpenMouthIndex dummy

# Main
scoreboard players add @s dyingGhostOpenMouthIndex 1
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=1..1}] run data modify entity @s text set value '{"text":"n","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=2..2}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=3..3}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=4..4}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=5..5}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=6..6}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=7..7}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=8..8}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=9..9}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=10..10}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=11..11}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=12..12}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=13..13}] run data modify entity @s text set value '{"text":"n","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=14..}] run scoreboard players set @s dyingGhostBehaviourMode 0
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=14..}] run scoreboard players set @s dyingGhostOpenMouthIndex 0
