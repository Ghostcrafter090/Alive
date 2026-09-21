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
execute as @r if score @s horrorIndex > @s random1000 at @s unless entity @e[type=text_display,tag=death_ghost,distance=0..30,limit=1] run summon text_display ~ ~ ~ {view_range:100f,glow_color_override:1b,width:4f,height:4f,billboard:"center",Tags:["death_ghost"],brightness:{sky:15,block:15},text:'{"text":"a","font":"gothichorror:images"}',background:16711680}
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] run scoreboard players set @s range 100
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] at @s run function gstools:util/fast_sp_3d
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] at @s run function gstools:util/light_level
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] if entity @s[scores={lightLevel=8..}] run kill @s
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] run tag @s add death_ghost_setup