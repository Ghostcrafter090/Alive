# Define

# Main
function enhancedsurvival:effects/addrenelin
function enhancedsurvival:effects/drowning
function enhancedsurvival:effects/health
function enhancedsurvival:effects/insomnia
function enhancedsurvival:effects/stamina
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvival_disableThirst=1..1}] run function enhancedsurvival:effects/thirst

# On Death
execute as @a[scores={death=1..}] run scoreboard players set @s thirst 30
execute as @a[scores={death=1..}] run scoreboard players set @s insomnia 25000