# Define

# Main
tag @s remove fast_3d_sp_loop
execute store result score @s entityNewX run data get entity @s Pos[0]
execute store result score @s entityNewY run data get entity @s Pos[1]
execute store result score @s entityNewZ run data get entity @s Pos[2]

function gstools:util/random
scoreboard players operation @s randomSigned1000 %= @s range
scoreboard players operation @s entityNewX += @s randomSigned1000

function gstools:util/random
scoreboard players operation @s randomSigned1000 %= @s range
scoreboard players operation @s entityNewY += @s randomSigned1000

function gstools:util/random
scoreboard players operation @s randomSigned1000 %= @s range
scoreboard players operation @s entityNewZ += @s randomSigned1000

execute store result entity @s Pos[0] double 1 run scoreboard players get @s entityNewX
execute store result entity @s Pos[1] double 1 run scoreboard players get @s entityNewY
execute store result entity @s Pos[2] double 1 run scoreboard players get @s entityNewZ
execute at @s unless predicate gstools:mostlyair run tag @s add fast_3d_sp_loop
execute at @s positioned ~ ~1 ~ unless predicate gstools:mostlyair run tag @s add fast_3d_sp_loop
execute if entity @s[tag=fast_3d_sp_loop] at @e[type=marker,tag=fast_sp_3d_return_position,limit=1,sort=nearest] run tp @s ~ ~ ~
execute if entity @s[tag=fast_3d_sp_loop] run function gstools:util/fast_sp_3d/macro