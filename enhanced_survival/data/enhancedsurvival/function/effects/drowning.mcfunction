# Define
scoreboard objectives add air air

# Main
execute as @a[scores={air=..50}] run effect give @s nausea 10 10
execute as @a[scores={air=40..40}] run effect give @s blindness 1 10
execute as @a[scores={air=25..25}] run effect give @s blindness 1 10
execute as @a[scores={air=20..20}] run effect give @s blindness 1 10
execute as @a[scores={air=12..12}] run effect give @s blindness 1 10
execute as @a[scores={air=6..6}] run effect give @s blindness 1 10
execute as @a[scores={air=3..3}] run effect give @s blindness 1 10
execute as @a[scores={air=..2}] run effect give @s blindness 1 10

execute as @a[scores={air=25..25}] run scoreboard players remove @s stamina 4

execute as @a[scores={air=..5}] run scoreboard players add @s thirst 1

execute as @a[scores={air=..5}] run scoreboard players add @s[scores={insomnia=..40000}] insomnia 100

execute as @a[scores={air=..5}] run scoreboard players set @s hasDiseaseBoolean 1
execute as @a[scores={air=..5}] run scoreboard players set @s nau_boolean 1
execute as @a[scores={air=..5}] run scoreboard players set @s weak_boolean 1
execute as @a[scores={air=..5}] run scoreboard players set @s weak_max_tier 1
execute as @a[scores={air=..5}] run scoreboard players set @s nau_max_tier 4
execute as @a[scores={air=..5}] run scoreboard players set @s weak_minact_tier 3
execute as @a[scores={air=..5}] run scoreboard players set @s nau_minact_tier 1