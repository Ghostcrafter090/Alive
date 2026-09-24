# Define

# Main
execute as @e[type=text_display,tag=death_ghost] run function gstools:util/random
execute as @e[type=text_display,tag=death_ghost,scores={random10=0..0}] run data modify entity @s text set value '{"text":"a","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={random10=1..1}] run data modify entity @s text set value '{"text":"b","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={random10=2..2}] run data modify entity @s text set value '{"text":"c","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={random10=3..3}] run data modify entity @s text set value '{"text":"d","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={random10=4..4}] run data modify entity @s text set value '{"text":"e","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={random10=5..5}] run data modify entity @s text set value '{"text":"f","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={random10=6..6}] run data modify entity @s text set value '{"text":"g","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={random10=7..7}] run data modify entity @s text set value '{"text":"h","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={random10=8..8}] run data modify entity @s text set value '{"text":"i","font":"gothichorror:images"}'
execute as @e[type=text_display,tag=death_ghost,scores={random10=9..9}] run data modify entity @s text set value '{"text":"j","font":"gothichorror:images"}'