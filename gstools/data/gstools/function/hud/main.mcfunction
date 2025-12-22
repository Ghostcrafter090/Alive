# Define
scoreboard objectives add diseaseHudModCompatibility dummy
scoreboard objectives add enhancedHudModCompatibility dummy
scoreboard objectives add diseaseHudVersionConflict dummy
scoreboard objectives add enhancedHudActive dummy

# Main
scoreboard players set @a diseaseHudModCompatibility 0
scoreboard players set @a enhancedHudModCompatibility 0
function lifeanddeath:hud/main
function enhancedsurvival:hud/main

scoreboard players set @e[tag=gstools_worker,type=marker] diseaseHudVersionConflict 1
function gstools:hud/version_conflict/diseasehud_0

scoreboard players set @e[tag=gstools_worker,type=marker] enhancedHudActive 0
execute as @a if entity @s[scores={diseaseHudModCompatibility=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] if entity @s[scores={enhancedHudModCompatibility=0..0}] run function gstools:hud/enhancedhud
execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedHudActive=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseHudVersionConflict=1..1}] run function gstools:hud/version_conflict/diseasehud_1