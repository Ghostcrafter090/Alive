# Define
scoreboard objectives add deathGhostBehaviourMode dummy

# Main
execute as @e[type=text_display,tag=death_ghost] unless entity @s[scores={deathGhostBehaviourMode=0..}] run scoreboard players set @s deathGhostBehaviourMode 0

execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=0..0}] run function gothichorror:hallow/ghosts/death/sprite/default