# Define
scoreboard objectives add AdrenalineApply minecraft.custom:minecraft.damage_taken

# Main
execute as @a[scores={AdrenalineApply=1..}] run effect give @s strength 30
execute as @a[scores={AdrenalineApply=1..}] run effect give @s speed 30
execute as @a[scores={AdrenalineApply=1..}] run effect give @s jump_boost 30
execute as @a[scores={AdrenalineApply=1..}] run scoreboard players set @s AdrenalineApply 0