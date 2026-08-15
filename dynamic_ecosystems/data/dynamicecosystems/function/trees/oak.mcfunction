# Define
scoreboard objectives add treeWorkerAliveTime dummy
scoreboard objectives add treeCursorAliveTime dummy
scoreboard objectives add treeSpawnThresholdWorker dummy

# Main
execute as @e[tag=gstools_cursor,type=marker] at @s unless entity @e[tag=is_human,distance=0..30] if block ~ ~-2 ~ oak_leaves positioned ~ ~-7 ~ run function gstools:compat/sereneseasons/temperature
execute as @e[tag=gstools_cursor,type=marker] at @s unless entity @e[tag=is_human,distance=0..30] if block ~ ~-2 ~ oak_leaves if entity @s[scores={currentTemperature=-2..12}] run summon marker ~ ~ ~ {Tags:['oak_tree_worker']}

execute as @e[tag=oak_tree_worker,type=marker] unless entity @s[tag=oak_tree_locating] at @s run summon marker ~ ~ ~ {Tags:['oak_tree_cursor','tree_cursor']}
execute as @e[tag=oak_tree_worker,type=marker] unless entity @s[tag=oak_tree_locating] at @s run tag @s add oak_tree_locating

execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] at @s as @e[tag=oak_tree_cursor,sort=nearest,limit=1] run spreadplayers ~ ~ 1 15 false @s
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:leaves run scoreboard players set @s treeSpawnThresholdWorker 0
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:saplings run scoreboard players set @s treeSpawnThresholdWorker 0
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:logs run scoreboard players set @s treeSpawnThresholdWorker 0
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:planks run scoreboard players set @s treeSpawnThresholdWorker 0
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run scoreboard players add @s treeSpawnThresholdWorker 10
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] at @s if block ~ ~-1 ~ #minecraft:flowers run scoreboard players add @s treeSpawnThresholdWorker 10
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] run scoreboard players add @s treeWorkerAliveTime 10
execute as @e[tag=oak_tree_cursor,type=marker] run scoreboard players add @s treeCursorAliveTime 1

execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] run scoreboard players operation @s treeWorkerAliveTime = @e[tag=gstools_worker,type=marker,limit=1] random100
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] run scoreboard players operation @s treeWorkerAliveTime += @e[tag=gstools_worker,type=marker,limit=1] 20

execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating,scores={treeWorkerAliveTime=100..}] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] run tag @s add oak_tree_cursor_to_kill

execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] if score @s treeWorkerAliveTime < @s treeSpawnThresholdWorker at @s if block ~ ~-1 ~ #minecraft:dirt run fill ~ ~ ~ ~ ~ ~ oak_sapling replace #minecraft:air
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] if score @s treeWorkerAliveTime < @s treeSpawnThresholdWorker at @s if block ~ ~-1 ~ #minecraft:dirt if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say Spawned Oak Tree! [standard]
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] if score @s treeWorkerAliveTime < @s treeSpawnThresholdWorker at @s if block ~ ~-1 ~ #minecraft:dirt run tag @s add oak_tree_cursor_to_kill
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] if score @s treeWorkerAliveTime < @s treeSpawnThresholdWorker at @s if block ~ ~-1 ~ #minecraft:flowers run fill ~ ~-1 ~ ~ ~-1 ~ oak_sapling replace #minecraft:flowers
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] if score @s treeWorkerAliveTime < @s treeSpawnThresholdWorker at @s if block ~ ~-1 ~ #minecraft:flowers if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say Spawned Oak Tree! [flower]
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] as @e[tag=oak_tree_cursor,sort=nearest,limit=1] if score @s treeWorkerAliveTime < @s treeSpawnThresholdWorker at @s if block ~ ~-1 ~ #minecraft:flowers run tag @s add oak_tree_cursor_to_kill
execute as @e[tag=oak_tree_worker,type=marker] if entity @s[tag=oak_tree_locating] if entity @e[tag=oak_tree_cursor_to_kill,sort=nearest,limit=1,distance=0..41] run kill @s
execute as @e[type=marker,tag=oak_tree_cursor_to_kill] run kill @s

execute as @e[type=marker,tag=oak_tree_cursor,scores={treeCursorAliveTime=300..}] run kill @s
execute as @e[type=marker,tag=oak_tree_worker,scores={treeWorkerAliveTime=300..}] run kill @s
#execute as @e[type=marker,tag=oak_tree_worker] if entity @s[tag=oak_tree_locating] unless entity @e[tag=oak_tree_cursor,sort=nearest,limit=1,distance=0..21] run say killing 4...
#execute as @e[type=marker,tag=oak_tree_worker] if entity @s[tag=oak_tree_locating] unless entity @e[tag=oak_tree_cursor,sort=nearest,limit=1,distance=0..21] run kill @s
#execute as @e[type=marker,tag=oak_tree_cursor] unless entity @e[tag=oak_tree_worker,sort=nearest,limit=1,distance=0..41] run say killing 5...
#execute as @e[type=marker,tag=oak_tree_cursor] unless entity @e[tag=oak_tree_worker,sort=nearest,limit=1,distance=0..41] run kill @s

execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~1 ~ ~ oak_sapling run fill ~ ~ ~ ~ ~ ~ air replace
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~1 ~ ~ oak_sapling run place feature oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~1 ~ ~ oak_sapling run fill ~1 ~ ~ ~1 ~ ~ air replace oak_sapling
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~-1 ~ ~ oak_sapling run fill ~ ~ ~ ~ ~ ~ air replace
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~-1 ~ ~ oak_sapling run place feature oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~-1 ~ ~ oak_sapling run fill ~-1 ~ ~ ~-1 ~ ~ air replace oak_sapling
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~1 oak_sapling run fill ~ ~ ~ ~ ~ ~ air replace
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~1 oak_sapling run place feature oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~1 oak_sapling run fill ~ ~ ~1 ~ ~ ~1 air replace oak_sapling
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~-1 oak_sapling run fill ~ ~ ~ ~ ~ ~ air replace
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~-1 oak_sapling run place feature oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=..850}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~-1 oak_sapling run fill ~ ~ ~-1 ~ ~ ~-1 air replace oak_sapling

execute if entity @e[tag=gstools_worker,scores={random1000=851..900}] as @e[tag=gstools_cursor] at @s if block ~1 ~ ~ oak_sapling run place feature swamp_oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=851..900}] as @e[tag=gstools_cursor] at @s if block ~1 ~ ~ oak_sapling run fill ~1 ~ ~ ~1 ~ ~ air replace oak_sapling
execute if entity @e[tag=gstools_worker,scores={random1000=851..900}] as @e[tag=gstools_cursor] at @s if block ~-1 ~ ~ oak_sapling run place feature swamp_oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=851..900}] as @e[tag=gstools_cursor] at @s if block ~-1 ~ ~ oak_sapling run fill ~-1 ~ ~ ~-1 ~ ~ air replace oak_sapling
execute if entity @e[tag=gstools_worker,scores={random1000=851..900}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~1 oak_sapling run place feature swamp_oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=851..900}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~1 oak_sapling run fill ~ ~ ~1 ~ ~ ~1 air replace oak_sapling
execute if entity @e[tag=gstools_worker,scores={random1000=851..900}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~-1 oak_sapling run place feature swamp_oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=851..900}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~-1 oak_sapling run fill ~ ~ ~-1 ~ ~ ~-1 air replace oak_sapling

execute if entity @e[tag=gstools_worker,scores={random1000=901..}] as @e[tag=gstools_cursor] at @s if block ~1 ~ ~ oak_sapling run place feature fancy_oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=901..}] as @e[tag=gstools_cursor] at @s if block ~1 ~ ~ oak_sapling run fill ~1 ~ ~ ~1 ~ ~ air replace oak_sapling
execute if entity @e[tag=gstools_worker,scores={random1000=901..}] as @e[tag=gstools_cursor] at @s if block ~-1 ~ ~ oak_sapling run place feature fancy_oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=901..}] as @e[tag=gstools_cursor] at @s if block ~-1 ~ ~ oak_sapling run fill ~-1 ~ ~ ~-1 ~ ~ air replace oak_sapling
execute if entity @e[tag=gstools_worker,scores={random1000=901..}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~1 oak_sapling run place feature fancy_oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=901..}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~1 oak_sapling run fill ~ ~ ~1 ~ ~ ~1 air replace oak_sapling
execute if entity @e[tag=gstools_worker,scores={random1000=901..}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~-1 oak_sapling run place feature fancy_oak ~ ~ ~
execute if entity @e[tag=gstools_worker,scores={random1000=901..}] as @e[tag=gstools_cursor] at @s if block ~ ~ ~-1 oak_sapling run fill ~ ~ ~-1 ~ ~ ~-1 air replace oak_sapling
 

