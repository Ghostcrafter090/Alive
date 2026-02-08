# Define

# Main
function enhancedsurvival:effects/addrenelin
function enhancedsurvival:effects/drowning
function enhancedsurvival:effects/health
function enhancedsurvival:effects/insomnia
function enhancedsurvival:effects/stamina
function enhancedsurvival:effects/thirst

# On Death
execute as @a[scores={death=1..}] run scoreboard players set @s thirst 30
execute as @a[scores={death=1..}] run scoreboard players set @s insomnia 25000