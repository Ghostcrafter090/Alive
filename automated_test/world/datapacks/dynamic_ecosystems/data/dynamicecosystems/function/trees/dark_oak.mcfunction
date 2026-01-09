# Define
scoreboard objectives add treeWorkerAliveTime dummy
scoreboard objectives add treeCursorAliveTime dummy
scoreboard objectives add treeSpawnThresholdWorker dummy

# Main
execute as @e[tag=gstools_cursor,type=marker] run function dynamicecosystems:trees/dark_oak_sub/6

execute as @e[type=marker,tag=dark_oak_tree_worker] run function dynamicecosystems:trees/dark_oak_sub/9

execute as @e[tag=dark_oak_tree_worker,type=marker] run function dynamicecosystems:trees/dark_oak_sub/12
execute as @e[tag=dark_oak_tree_cursor,type=marker] run scoreboard players add @s treeCursorAliveTime 1

execute as @e[tag=dark_oak_tree_worker,type=marker] run function dynamicecosystems:trees/dark_oak_sub/21

execute as @e[tag=dark_oak_tree_worker,type=marker] if entity @s[tag=dark_oak_tree_locating,scores={treeWorkerAliveTime=100..}] as @e[tag=dark_oak_tree_cursor,sort=nearest,limit=1] run tag @s add dark_oak_tree_cursor_to_kill

execute as @e[tag=dark_oak_tree_worker,type=marker] run function dynamicecosystems:trees/dark_oak_sub/26
execute as @e[type=marker,tag=dark_oak_tree_cursor_to_kill] run kill @s

execute as @e[type=marker,tag=dark_oak_tree_cursor,scores={treeCursorAliveTime=300..}] run kill @s
execute as @e[type=marker,tag=dark_oak_tree_worker,scores={treeWorkerAliveTime=300..}] run kill @s
# execute as @e[type=marker,tag=dark_oak_tree_worker] if entity @s[tag=dark_oak_tree_locating] unless entity @e[tag=dark_oak_tree_cursor,sort=nearest,limit=1,distance=0..21] run say killing 4...
# execute as @e[type=marker,tag=dark_oak_tree_worker] if entity @s[tag=dark_oak_tree_locating] unless entity @e[tag=dark_oak_tree_cursor,sort=nearest,limit=1,distance=0..21] run kill @s
# execute as @e[type=marker,tag=dark_oak_tree_cursor] unless entity @e[tag=dark_oak_tree_worker,sort=nearest,limit=1,distance=0..41] run say killing 5...
# execute as @e[type=marker,tag=dark_oak_tree_cursor] unless entity @e[tag=dark_oak_tree_worker,sort=nearest,limit=1,distance=0..41] run kill @s

