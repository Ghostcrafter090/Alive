# Define
scoreboard objectives add deathGhostOpenBlinkIndex dummy
# Main
scoreboard players add @s deathGhostOpenBlinkIndex 1
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenBlinkIndex=1..1}] run data modify entity @s text set value '{"text":"g","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenBlinkIndex=2..2}] run data modify entity @s text set value '{"text":"h","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenBlinkIndex=3..3}] run data modify entity @s text set value '{"text":"i","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenBlinkIndex=4..4}] run data modify entity @s text set value '{"text":"h","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenBlinkIndex=5..5}] run data modify entity @s text set value '{"text":"g","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenBlinkIndex=6..}] run scoreboard players set @s deathGhostBehaviourMode 0