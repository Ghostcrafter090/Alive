summon marker 0 100 0 {Tags:['gstools_cursor','block_decay_spawned']}
execute as @e[tag=gstools_cursor,tag=block_decay_spawned,tag=!block_decay_cursor_setup] run data modify entity @s Pos set from storage minecraft:blockdecay coordsToDecay[0]
execute as @e[tag=gstools_cursor,tag=block_decay_spawned,tag=!block_decay_cursor_setup] run tag @s add block_decay_cursor_setup
data remove storage minecraft:blockdecay coordsToDecay[0] 
execute as @e[type=marker,tag=gstools_worker] store result score @s blockDecayCursorCounter if entity @e[type=marker,tag=gstools_cursor]
