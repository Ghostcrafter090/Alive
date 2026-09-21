# Define
scoreboard objectives add deathGhostBehaviourMode dummy

# Main
execute as @e[type=text_display,tag=death_ghost] unless entity @s[scores={deathGhostBehaviourMode=0..}] run scoreboard players set @s deathGhostBehaviourMode 0

execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=0..0}] run function gothichorror:hallow/ghosts/death/sprite/default
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=1..1}] run function gothichorror:hallow/ghosts/death/sprite/blink
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=2..2}] run function gothichorror:hallow/ghosts/death/sprite/mouth

execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1] run function gstools:util/random
execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1] if entity @s[scores={random1000=..50}] run scoreboard players set @s deathGhostBehaviourMode 1
execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1] if entity @s[scores={random1000=..10}] run scoreboard players set @s deathGhostBehaviourMode 2