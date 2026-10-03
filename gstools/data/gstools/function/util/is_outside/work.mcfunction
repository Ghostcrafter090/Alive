# Define
scoreboard objectives add isOutside dummy

# Main
scoreboard players set @s isOutside 0

execute positioned ~ ~ ~ unless entity @s[scores={isOutside=1..1}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~10 ~ unless entity @s[scores={isOutside=2..2}] unless predicate gstools:outside run scoreboard players set @s isOutside 2
execute positioned ~ ~20 ~ unless entity @s[scores={isOutside=2..2}] unless predicate gstools:outside run scoreboard players set @s isOutside 2
execute positioned ~ ~30 ~ unless entity @s[scores={isOutside=2..2}] unless predicate gstools:outside run scoreboard players set @s isOutside 2
execute positioned ~ ~40 ~ unless entity @s[scores={isOutside=2..2}] unless predicate gstools:outside run scoreboard players set @s isOutside 2
execute positioned ~ ~50 ~ unless entity @s[scores={isOutside=2..2}] unless predicate gstools:outside run scoreboard players set @s isOutside 2
execute positioned ~ ~60 ~ unless entity @s[scores={isOutside=2..2}] unless predicate gstools:outside run scoreboard players set @s isOutside 2

execute positioned ~1 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~2 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~3 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~4 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~5 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~6 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~7 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~8 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1

execute positioned ~-1 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~-2 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~-3 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~-4 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~-5 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~-6 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~-7 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~-8 ~ ~ unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1

execute positioned ~ ~ ~1 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~2 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~3 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~4 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~5 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~6 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~7 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~8 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1

execute positioned ~ ~ ~-1 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~-2 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~-3 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~-4 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~-5 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~-6 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~-7 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1
execute positioned ~ ~ ~-8 unless entity @s[scores={isOutside=1..2}] if predicate gstools:outside run scoreboard players set @s isOutside 1

execute if entity @s[scores={isOutside=2..2}] run scoreboard players set @s isOutside 0