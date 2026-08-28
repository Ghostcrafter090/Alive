tp @s ^ ^ ^1
scoreboard players remove @s rayCastDistance 1
execute if entity @s[scores={rayCastDistance=1..}] at @s if predicate gstools:mostlyair run function gstools:util/ray_cast/process