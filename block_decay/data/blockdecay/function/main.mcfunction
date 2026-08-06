# Define
scoreboard objectives add collapseAccumulate dummy
scoreboard objectives add blockDecayCursorCounter dummy

# Main

execute as @e[type=marker,tag=gstools_worker]

execute as @e[tag=gstools_cursor,type=marker] at @s run function blockdecay:decay/at
execute as @e[tag=gstools_vertical_cursor,type=marker] at @s positioned ~ ~1 ~ run function blockdecay:decay/at

execute as @e[tag=wither_skull,type=marker] at @s positioned ~ ~ ~ unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~ ~2 ~ unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~1 ~1 ~ unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~ ~1 ~1 unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~-1 ~1 ~ unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at
execute as @e[tag=wither_skull,type=marker] at @s positioned ~ ~1 ~-1 unless block ~ ~-1 ~ #gstools:air run function blockdecay:decay/at

# Note: fixed automated testing for 1.20.1