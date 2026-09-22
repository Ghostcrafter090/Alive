# Define
scoreboard objectives add sickGhostOpenMouthIndex dummy

# Main
scoreboard players add @s sickGhostOpenMouthIndex 1
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=1..1}] run data modify entity @s text set value '{"text":"J","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=2..2}] run data modify entity @s text set value '{"text":"K","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=3..3}] run data modify entity @s text set value '{"text":"L","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=4..4}] run data modify entity @s text set value '{"text":"K","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=5..5}] run data modify entity @s text set value '{"text":"L","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=6..6}] run data modify entity @s text set value '{"text":"K","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=7..7}] run data modify entity @s text set value '{"text":"L","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=8..8}] run data modify entity @s text set value '{"text":"K","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=9..9}] run data modify entity @s text set value '{"text":"L","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=10..10}] run data modify entity @s text set value '{"text":"K","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=11..11}] run data modify entity @s text set value '{"text":"L","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=12..12}] run data modify entity @s text set value '{"text":"K","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=13..13}] run data modify entity @s text set value '{"text":"J","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=14..}] run scoreboard players set @s sickGhostBehaviourMode 0
execute as @e[type=text_display,tag=sick_ghost,scores={sickGhostOpenMouthIndex=14..}] run scoreboard players set @s sickGhostOpenMouthIndex 0
