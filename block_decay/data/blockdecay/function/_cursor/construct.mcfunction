# Define
scoreboard objectives add lastBlockDecayPosX dummy
scoreboard objectives add lastBlockDecayPosY dummy
scoreboard objectives add lastBlockDecayPosZ dummy


scoreboard objectives add blockDecayPosX dummy
scoreboard objectives add blockDecayPosY dummy
scoreboard objectives add blockDecayPosZ dummy

summon marker 0 100 0 {Tags:['gstools_cursor','block_decay_spawned']}
execute as @e[tag=gstools_cursor,tag=block_decay_spawned,tag=!block_decay_cursor_setup] run data modify entity @s Pos set from storage minecraft:blockdecay coordsToDecay[0]
execute as @e[tag=gstools_cursor,tag=block_decay_spawned,tag=!block_decay_cursor_setup] run tag @s add block_decay_cursor_setup
execute store result score @e[tag=gstools_worker,type=marker] lastBlockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] lastBlockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] lastBlockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]

data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosX run data get storage minecraft:blockdecay coordsToDecay[0][0]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosY run data get storage minecraft:blockdecay coordsToDecay[0][1]
execute store result score @e[tag=gstools_worker,type=marker] blockDecayPosZ run data get storage minecraft:blockdecay coordsToDecay[0][2]
execute as @e[tag=gstools_worker,type=marker] if score @s blockDecayPosX = @s lastBlockDecayPosX if score @s blockDecayPosY = @s lastBlockDecayPosY if score @s blockDecayPosZ = @s lastBlockDecayPosZ run data remove storage minecraft:blockdecay coordsToDecay[0]

execute as @e[type=marker,tag=gstools_worker] store result score @s blockDecayCursorCounter if entity @e[type=marker,tag=gstools_cursor]
