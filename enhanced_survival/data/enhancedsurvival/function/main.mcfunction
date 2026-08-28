# Define

# Main
function enhancedsurvival:effects/addrenelin
function enhancedsurvival:effects/drowning
function enhancedsurvival:effects/health
function enhancedsurvival:effects/insomnia
function enhancedsurvival:effects/stamina
function enhancedsurvival:effects/luck
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvival_disableThirst=1..1}] run function enhancedsurvival:effects/thirst