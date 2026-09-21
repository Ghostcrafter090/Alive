# Define
scoreboard objectives add entityCurrentX dummy
scoreboard objectives add entityCurrentY dummy
scoreboard objectives add entityCurrentZ dummy

scoreboard objectives add entityNewX dummy
scoreboard objectives add entityNewY dummy
scoreboard objectives add entityNewZ dummy

# Main
summon marker ~ ~ ~ {Tags:['fast_sp_3d_return_position']}
function gstools:util/fast_sp_3d/macro
kill @e[type=marker,tag=fast_sp_3d_return_position]
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
# <node:no_compile_mode/>