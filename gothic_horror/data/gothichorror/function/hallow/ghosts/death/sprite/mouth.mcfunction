# Define
scoreboard objectives add deathGhostOpenMouthIndex dummy
# Main
scoreboard players add @s deathGhostOpenMouthIndex 1
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=1..1}] run data modify entity @s text set value '{"text":"j","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=2..2}] run data modify entity @s text set value '{"text":"k","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostOpenMouthIndex=3..3}] run data modify entity @s text set value '{"text":"l","font":"gothichorror:images"}'