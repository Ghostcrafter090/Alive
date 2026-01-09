execute at @s run data modify entity @s Owner set from entity @e[tag=walkable,distance=8..,sort=nearest,limit=1] UUID
tag @s add modified