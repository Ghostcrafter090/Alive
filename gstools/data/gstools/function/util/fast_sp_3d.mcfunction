# Define
scoreboard objectives add entityCurrentX dummy
scoreboard objectives add entityCurrentY dummy
scoreboard objectives add entityCurrentZ dummy

scoreboard objectives add entityNewX dummy
scoreboard objectives add entityNewY dummy
scoreboard objectives add entityNewZ dummy

scoreboard objectives add range dummy

# Main
summon marker ~ ~ ~ {Tags:['fast_sp_3d_return_position']}
tag @s add random_tp_active

execute store result score @s entityCurrentX run data get entity @s Pos[0]
execute store result score @s entityCurrentY run data get entity @s Pos[1]
execute store result score @s entityCurrentZ run data get entity @s Pos[2]

function gstools:util/fast_sp_3d/macro
kill @e[type=marker,tag=fast_sp_3d_return_position]
tag @s remove random_tp_active
# <node:no_compile_mode>
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
execute at @s positioned ~ ~-1 ~ if predicate gstools:mostlyair run tp @s ~ ~-1 ~
# <node:no_compile_mode/>