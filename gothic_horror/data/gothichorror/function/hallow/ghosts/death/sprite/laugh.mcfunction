# Define
scoreboard objectives add deathGhostOpenMouthIndex dummy

# Main
scoreboard players add @s deathGhostOpenMouthIndex 1
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=1..1}] run data modify entity @s text set value '{"text":"n","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=2..2}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=3..3}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=4..4}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=5..5}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=6..6}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=7..7}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=8..8}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=9..9}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=10..10}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=11..11}] run data modify entity @s text set value '{"text":"p","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=12..12}] run data modify entity @s text set value '{"text":"o","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=13..13}] run data modify entity @s text set value '{"text":"n","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=14..}] run scoreboard players set @s deathGhostBehaviourMode 0
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=14..}] run scoreboard players set @s deathGhostOpenMouthIndex 0
