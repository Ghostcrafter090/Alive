execute at @s as @e[tag=acacia_tree_cursor,sort=nearest,limit=1] run spreadplayers ~ ~ 1 15 false @s
execute as @e[tag=acacia_tree_cursor,sort=nearest,limit=1] run function dynamicecosystems:trees/acacia_sub/12_sub/0_sub/1
scoreboard players add @s treeWorkerAliveTime 10