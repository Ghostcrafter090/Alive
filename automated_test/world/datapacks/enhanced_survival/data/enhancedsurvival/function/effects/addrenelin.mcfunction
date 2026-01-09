# Define
scoreboard objectives add AdrenalineApply minecraft.custom:minecraft.damage_taken

# Main
execute as @a[scores={AdrenalineApply=1..}] run function enhancedsurvival:effects/addrenelin_sub/4