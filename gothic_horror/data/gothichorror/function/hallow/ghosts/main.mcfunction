# Define
scoreboard objectives add deathGhostCount dummy
scoreboard objectives add dyingGhostCount dummy

# Main
schedule function gothichorror:hallow/ghosts/death/main 1t append
schedule function gothichorror:hallow/ghosts/dying/main 2t append

execute store result score @e[type=marker,tag=gstools_worker] deathGhostCount if entity @e[type=text_display,tag=death_ghost]
execute store result score @e[type=marker,tag=gstools_worker] dyingGhostCount if entity @e[type=text_display,tag=dying_ghost]

execute if entity @e[type=marker,tag=gstools_worker,scores={deathGhostCount=30..}] as @e[type=text_display,tag=death_ghost,limit=1,sort=random] at @s unless entity @p[distance=0..50] run kill @s
execute if entity @e[type=marker,tag=gstools_worker,scores={dyingGhostCount=30..}] as @e[type=text_display,tag=dying_ghost,limit=1,sort=random] at @s unless entity @p[distance=0..50] run kill @s
