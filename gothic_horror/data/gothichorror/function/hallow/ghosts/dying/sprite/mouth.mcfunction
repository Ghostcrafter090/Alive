# Define
scoreboard objectives add dyingGhostOpenMouthIndex dummy

# Main
scoreboard players add @s dyingGhostOpenMouthIndex 1
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=1..1}] run data modify entity @s text set value '{"text":"3","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=2..2}] run data modify entity @s text set value '{"text":"4","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=3..3}] run data modify entity @s text set value '{"text":"5","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=4..4}] run data modify entity @s text set value '{"text":"5","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=5..5}] run data modify entity @s text set value '{"text":"5","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=6..6}] run data modify entity @s text set value '{"text":"4","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=7..7}] run data modify entity @s text set value '{"text":"3","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=8..}] run scoreboard players set @s dyingGhostBehaviourMode 0
execute as @e[type=text_display,tag=dying_ghost,scores={dyingGhostOpenMouthIndex=8..}] run scoreboard players set @s dyingGhostOpenMouthIndex 0

