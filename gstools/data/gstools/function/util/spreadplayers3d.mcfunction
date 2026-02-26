# Define
scoreboard objectives add entityCurrentX dummy
scoreboard objectives add entityCurrentY dummy
scoreboard objectives add entityCurrentZ dummy

scoreboard objectives add entityNewX dummy
scoreboard objectives add entityNewY dummy
scoreboard objectives add entityNewZ dummy

scoreboard objectives add range dummy

# Main
execute unless entity @s[scores={range=0..}] run scoreboard players set @s range 20
execute unless entity @s[tag=spreadplayers_3d,type=marker,limit=1] at @s run summon marker ~ ~ ~ {Tags:['spreadplayers_3d']}
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] store result score @s entityCurrentX run data get entity @s Pos[0]
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] store result score @s entityCurrentY run data get entity @s Pos[1]
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] store result score @s entityCurrentZ run data get entity @s Pos[2]

execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s entityNewX = @s entityCurrentX
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s entityNewY = @s entityCurrentY
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s entityNewZ = @s entityCurrentZ

scoreboard players operation @e[tag=spreadplayers_3d,type=marker,limit=1] range = @s range
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run function gstools:util/random
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 %= @s range
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 *= @s randomNegate
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s entityNewX += @s randomSigned1000

scoreboard players operation @e[tag=spreadplayers_3d,type=marker,limit=1] range = @s range
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run function gstools:util/random
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 %= @e[tag=gstools_worker,type=marker] 127
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] if score @s range < @e[tag=gstools_worker,type=marker,limit=1] 127 run scoreboard players operation @s randomSigned1000 %= @e[tag=gstools_worker,type=marker] range
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 *= @s randomNegate
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s entityNewY += @s randomSigned1000

scoreboard players operation @e[tag=spreadplayers_3d,type=marker,limit=1] range = @s range
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run function gstools:util/random
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 %= @s range
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 *= @s randomNegate
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s entityNewZ += @s randomSigned1000

execute as @e[tag=spreadplayers_3d,type=marker,limit=1] store result entity @s Pos[0] double 1 run scoreboard players get @s entityCurrentX
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get @s entityCurrentY
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] store result entity @s Pos[2] double 1 run scoreboard players get @s entityCurrentZ

function gstools:util/spreadplayers3d/findsurface