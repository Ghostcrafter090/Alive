# Define
scoreboard objectives add collapseAccumulate dummy
scoreboard objectives add blockDecayCursorCounter dummy

# Main

execute as @e[type=marker,tag=gstools_worker] store result score @s blockDecayCursorCounter if entity @e[type=marker,tag=gstools_cursor]

# <node:no_compile_mode>
execute if entity @e[tag=gstools_worker,type=marker,scores={blockDecayCursorCounter=..4}] run function blockdecay:_cursor/construct
execute if entity @e[tag=gstools_worker,type=marker,scores={blockDecayCursorCounter=..4}] run function blockdecay:_cursor/construct
execute if entity @e[tag=gstools_worker,type=marker,scores={blockDecayCursorCounter=..4}] run function blockdecay:_cursor/construct
execute if entity @e[tag=gstools_worker,type=marker,scores={blockDecayCursorCounter=..4}] run function blockdecay:_cursor/construct
execute if entity @e[tag=gstools_worker,type=marker,scores={blockDecayCursorCounter=..4}] run function blockdecay:_cursor/construct
# <node:no_compile_mode/>

execute as @e[tag=gstools_cursor,type=marker,limit=5,sort=random] at @s run function blockdecay:decay/at
execute as @e[tag=gstools_cursor,type=marker,limit=5,sort=random] run tag @s add block_decayed

execute as @e[tag=gstools_vertical_cursor,type=marker,limit=5,sort=random] at @s positioned ~ ~1 ~ run function blockdecay:decay/at
execute as @e[tag=gstools_vertical_cursor,type=marker,limit=5,sort=random] run tag @s add block_decayed

execute as @e[tag=gstools_cursor,tag=!block_decayed] run data modify storage blockdecay coordsToDecay append from entity @s Pos
execute as @e[tag=gstools_vertical_cursor,tag=!block_decayed] run data modify storage blockdecay coordsToDecay append from entity @s Pos

execute as @e[tag=wither_skull,type=marker] at @s positioned ~ ~ ~ unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~ ~2 ~ unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~1 ~1 ~ unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~ ~1 ~1 unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~-1 ~1 ~ unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~ ~1 ~-1 unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at

# Note: fixed automated testing for 1.20.1