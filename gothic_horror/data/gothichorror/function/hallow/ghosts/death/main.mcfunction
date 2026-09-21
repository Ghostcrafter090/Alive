# Define
scoreboard objectives add deathGhostBehaviourMode dummy

# Main
execute as @e[type=text_display,tag=death_ghost] unless entity @s[scores={deathGhostBehaviourMode=0..}] run scoreboard players set @s deathGhostBehaviourMode 0

execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=0..0}] run function gothichorror:hallow/ghosts/death/sprite/default
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=1..1}] run function gothichorror:hallow/ghosts/death/sprite/blink
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=2..2}] run function gothichorror:hallow/ghosts/death/sprite/mouth
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=3..3}] run function gothichorror:hallow/ghosts/death/sprite/laugh

execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1,scores={deathGhostBehaviourMode=0..0}] run function gstools:util/random
execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1,scores={deathGhostBehaviourMode=0..0}] if entity @s[scores={random1000=..50}] run scoreboard players set @s deathGhostBehaviourMode 1
execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1,scores={deathGhostBehaviourMode=0..0}] if entity @s[scores={random1000=..15}] run scoreboard players set @s deathGhostBehaviourMode 2
execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1,scores={deathGhostBehaviourMode=0..0}] if entity @s[scores={random1000=..7}] run scoreboard players set @s deathGhostBehaviourMode 3

# AI
execute as @r run function gstools:horror/getindex
execute as @r run function gstools:util/random
execute as @r run function gstools:util/is_outside
execute as @r run function gstools:util/light_level
execute as @r if score @s horrorIndex > @s random100 unless entity @e[type=text_display,tag=death_ghost,distance=0..30,limit=1] run summon 