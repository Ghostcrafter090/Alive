# Define
scoreboard objectives add AdrenalineApply minecraft.custom:minecraft.damage_taken

# Main
execute as @a[scores={AdrenalineApply=1..}] run effect give @s strength 20 0
execute as @a[scores={AdrenalineApply=1..}] run effect give @s speed 30 0
execute as @a[scores={AdrenalineApply=1..}] run effect give @s jump_boost 10 0
execute as @a[scores={AdrenalineApply=1..}] run effect give @s haste 25 0
execute as @a[scores={AdrenalineApply=1..}] run scoreboard players set @s AdrenalineApply 0