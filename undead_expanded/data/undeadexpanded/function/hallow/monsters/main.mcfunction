# Define
scoreboard objectives add undeadRiseTick dummy
scoreboard objectives add monstersAreActive dummy

# Main
execute unless entity @a[tag=is_agro_targeted] as @a run scoreboard players set @s monstersAreActive 0
execute unless entity @a[tag=is_agro_targeted] as @a[scores={horrorIndex=100..}] if entity @e[type=marker,tag=gstools_worker,scores={timeOfDay=14000..}] run scoreboard players set @s monstersAreActive 1
execute unless entity @a[tag=is_agro_targeted] as @a[scores={monstersAreActive=1..}] run scoreboard players add @s undeadRiseTick 1
execute unless entity @a[tag=is_agro_targeted] as @a[scores={monstersAreActive=1..}] if entity @s[scores={undeadRiseTick=1000..}] run function gstools:util/random
execute unless entity @a[tag=is_agro_targeted] as @a[scores={monstersAreActive=1..}] if entity @s[scores={undeadRiseTick=1000..}] if entity @s[scores={random1000=..300}] at @s run summon zombie ~ ~10 ~ {Tags:['undead_to_random_tp']}
execute unless entity @a[tag=is_agro_targeted] as @a[scores={monstersAreActive=1..}] if entity @s[scores={undeadRiseTick=1000..}] if entity @s[scores={random1000=301..600}] at @s run summon skeleton ~ ~10 ~ {Tags:['undead_to_random_tp']}
execute unless entity @a[tag=is_agro_targeted] as @a[scores={monstersAreActive=1..}] if entity @s[scores={undeadRiseTick=1000..}] if entity @s[scores={random1000=601..700}] at @s run summon stray ~ ~10 ~ {Tags:['undead_to_random_tp']}
execute unless entity @a[tag=is_agro_targeted] as @a[scores={monstersAreActive=1..}] if entity @s[scores={undeadRiseTick=1000..}] if entity @s[scores={random1000=701..800}] at @s run summon husk ~ ~10 ~ {Tags:['undead_to_random_tp']}
execute unless entity @a[tag=is_agro_targeted] as @a[scores={monstersAreActive=1..}] if entity @s[scores={undeadRiseTick=1000..}] run scoreboard players set @s undeadRiseTick 0
execute unless entity @a[tag=is_agro_targeted] as @e[type=#minecraft:undead,tag=undead_to_random_tp] run scoreboard players set @s _spreadRange 35
execute unless entity @a[tag=is_agro_targeted] as @e[type=#minecraft:undead,tag=undead_to_random_tp] at @s run function gstools:cursor/fast_spread
execute unless entity @a[tag=is_agro_targeted] as @e[type=#minecraft:undead,tag=undead_to_random_tp] at @s run tag @s remove undead_to_random_tp