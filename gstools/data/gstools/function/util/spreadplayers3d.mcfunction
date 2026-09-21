# Define
scoreboard objectives add entityCurrentX dummy
scoreboard objectives add entityCurrentY dummy
scoreboard objectives add entityCurrentZ dummy

scoreboard objectives add entityNewX dummy
scoreboard objectives add entityNewY dummy
scoreboard objectives add entityNewZ dummy

scoreboard objectives add range dummy
scoreboard objectives add doReverseFind dummy

# Main
kill @e[tag=spreadplayers_3d,type=marker]
kill @e[tag=spreadplayers_3d_og_location,type=marker]
execute unless entity @s[scores={range=0..}] run scoreboard players set @s range 20
execute unless entity @e[tag=spreadplayers_3d,type=marker,limit=1] run summon marker ~ ~ ~ {Tags:['spreadplayers_3d']}
execute unless entity @e[tag=spreadplayers_3d,type=marker,limit=1] run summon marker ~ ~ ~ {Tags:['spreadplayers_3d_og_location']}
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
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 %= @s range
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 *= @s randomNegate
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s entityNewY += @s randomSigned1000

scoreboard players operation @e[tag=spreadplayers_3d,type=marker,limit=1] range = @s range
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run function gstools:util/random
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 %= @s range
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s randomSigned1000 *= @s randomNegate
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] run scoreboard players operation @s entityNewZ += @s randomSigned1000

execute as @e[tag=spreadplayers_3d,type=marker,limit=1] store result entity @s Pos[0] double 1 run scoreboard players get @s entityNewX
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get @s entityNewY
execute as @e[tag=spreadplayers_3d,type=marker,limit=1] store result entity @s Pos[2] double 1 run scoreboard players get @s entityNewZ

scoreboard players set @e[tag=spreadplayers_3d,type=marker,limit=1] loopCount 0
execute unless entity @s[scores={doReverseFind=1..1}] as @e[tag=spreadplayers_3d,type=marker,limit=1] run function gstools:util/spreadplayers3d/findsurface
execute if entity @s[scores={doReverseFind=1..1}] as @e[tag=spreadplayers_3d,type=marker,limit=1] run function gstools:util/spreadplayers3d/findsurface_reverse
execute at @e[tag=spreadplayers_3d,type=marker,limit=1] run tp @s ~ ~ ~
execute at @e[tag=spreadplayers_3d,type=marker,limit=1] run particle large_smoke ~ ~ ~ 0 0 0 0.1 100 force
kill @e[tag=spreadplayers_3d,type=marker]

execute unless entity @s[scores={doReverseFind=1..1}] at @s if predicate gstools:spreadplayers_nether run tag @s remove to_spreadplayers_3d

execute if entity @s[scores={doReverseFind=1..1}] at @s run function gstools:util/is_outside
execute if entity @s[scores={doReverseFind=1..1}] at @s if predicate gstools:mostlyair unless entity @s[scores={isOutside=1..1}] run tag @s remove to_spreadplayers_3d
execute if entity @s[scores={doReverseFind=1..1}] at @s unless predicate gstools:mostlyair run tag @s add to_spreadplayers_3d
execute if entity @s[scores={doReverseFind=1..1}] as @s if entity @s[scores={isOutside=1..1}] run tag @s add to_spreadplayers_3d
execute if entity @s[tag=to_spreadplayers_3d] at @e[tag=spreadplayers_3d_og_location,type=marker,limit=1] run tp @s ~ ~ ~
execute if entity @s[tag=to_spreadplayers_3d] unless entity @s[scores={doReverseFind=1..1}] run schedule function gstools:util/spreadplayers3d/macro 1t append
execute if entity @s[tag=to_spreadplayers_3d] if entity @s[scores={doReverseFind=1..1}] run schedule function gstools:util/spreadplayers3d/macro_underground 1t append
kill @e[tag=spreadplayers_3d_og_location,type=marker]