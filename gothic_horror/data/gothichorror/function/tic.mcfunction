# Define

# Main
execute as @e[scores={hGeneralTic=0..}] run scoreboard players remove @s hGeneralTic 1

execute as @r run function gstools:util/random
execute as @r if score @s random1000 > @s horrorIndex run team modify gothic_ghost color black
execute as @r if score @s random1000 < @s horrorIndex run team modify gothic_ghost color dark_gray

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] run data merge storage minecraft:gothichorror {MotionChange:[0.0d,0.0d,0.0d]}

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] store result storage minecraft:gothichorror MotionChange[0] double 0.01 run scoreboard players get @s vectorX
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] store result storage minecraft:gothichorror MotionChange[1] double 0.01 run scoreboard players get @s vectorY
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] store result storage minecraft:gothichorror MotionChange[2] double 0.01 run scoreboard players get @s vectorZ

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] run data modify entity @s Motion set from storage minecraft:gothichorror MotionChange
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] run tag @s add gothic_ghost_snowball_thrown_setup

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..1] run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 2
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..1] unless entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..1,gamemode=creative] unless entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..1,gamemode=spectator] run damage @e[tag=is_alive,sort=nearest,limit=1,distance=0..1] 0.1 mob_attack by @s
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..1] run tag @s add sound_played
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..1] run kill @s