execute at @s as @e[tag=cherry_tree_cursor,sort=nearest,limit=1] run spreadplayers ~ ~ 1 15 false @s
execute as @e[tag=cherry_tree_cursor,sort=nearest,limit=1] run function dynamicecosystems:trees/cherry_sub/12_sub/0_sub/1
scoreboard players add @s treeWorkerAliveTime 10