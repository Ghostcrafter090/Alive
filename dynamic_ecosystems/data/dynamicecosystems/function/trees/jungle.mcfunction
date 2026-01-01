# Define
scoreboard objectives add treeWorkerAliveTime dummy
scoreboard objectives add treeCursorAliveTime dummy
scoreboard objectives add treeSpawnThresholdWorker dummy

# Main
execute as @e[tag=gstools_cursor,type=marker] at @s if block ~ ~-2 ~ jungle_leaves run summon marker ~ ~ ~ {Tags:['jungle_tree_worker']}

execute as @e[type=marker,tag=jungle_tree_worker] unless entity @s[tag=jungle_tree_locating] at @s run summon marker ~ ~ ~ {Tags:['jungle_tree_cursor']}
execute as @e[type=marker,tag=jungle_tree_worker] unless entity @s[tag=jungle_tree_locating] at @s run tag @s add jungle_tree_locating

execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] at @s as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] run spreadplayers ~ ~ 1 15 false @s
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:leaves run scoreboard players set @s treeSpawnThresholdWorker 0
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:saplings run scoreboard players set @s treeSpawnThresholdWorker 0
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:logs run scoreboard players set @s treeSpawnThresholdWorker 0
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:planks run scoreboard players set @s treeSpawnThresholdWorker 0
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run scoreboard players add @s treeSpawnThresholdWorker 1
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] run scoreboard players add @s treeWorkerAliveTime 10
execute as @e[tag=jungle_tree_cursor,type=marker] run scoreboard players add @s treeCursorAliveTime 10

execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] run scoreboard players operation @s treeWorkerAliveTime = @e[tag=gstools_worker,type=marker,limit=1] random100
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] run scoreboard players operation @s treeWorkerAliveTime += @e[tag=gstools_worker,type=marker,limit=1] 20

execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating,scores={treeWorkerAliveTime=300..}] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] run tag @s add jungle_tree_cursor_to_kill

execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] if score @s treeWorkerAliveTime < @s treeSpawnThresholdWorker at @s if block ~ ~-1 ~ #minecraft:dirt run fill ~ ~ ~ ~ ~ ~ jungle_sapling replace #minecraft:air
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] if score @s treeWorkerAliveTime < @s treeSpawnThresholdWorker at @s if block ~ ~-1 ~ #minecraft:dirt run say jungle sapling spawned!
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] as @e[tag=jungle_tree_cursor,sort=nearest,limit=1] if score @s treeWorkerAliveTime < @s treeSpawnThresholdWorker at @s if block ~ ~-1 ~ #minecraft:dirt run tag @s add jungle_tree_cursor_to_kill
execute as @e[tag=jungle_tree_worker,type=marker] if entity @s[tag=jungle_tree_locating] if entity @e[tag=jungle_tree_cursor_to_kill,sort=nearest,limit=1,distance=0..41] run kill @s
execute as @e[type=marker,tag=jungle_tree_cursor_to_kill] run kill @s

execute as @e[type=marker,tag=jungle_tree_cursor,scores={treeCursorAliveTime=500..}] run kill @s
execute as @e[type=marker,tag=jungle_tree_worker,scores={treeWorkerAliveTime=500..}] run kill @s
# execute as @e[type=marker,tag=jungle_tree_worker] if entity @s[tag=jungle_tree_locating] unless entity @e[tag=jungle_tree_cursor,sort=nearest,limit=1,distance=0..21] run say killing 4...
# execute as @e[type=marker,tag=jungle_tree_worker] if entity @s[tag=jungle_tree_locating] unless entity @e[tag=jungle_tree_cursor,sort=nearest,limit=1,distance=0..21] run kill @s
# execute as @e[type=marker,tag=jungle_tree_cursor] unless entity @e[tag=jungle_tree_worker,sort=nearest,limit=1,distance=0..41] run say killing 5...
# execute as @e[type=marker,tag=jungle_tree_cursor] unless entity @e[tag=jungle_tree_worker,sort=nearest,limit=1,distance=0..41] run kill @s

