# Define
scoreboard objectives add diseaseHudModCompatibility dummy
scoreboard objectives add enhancedHudModCompatibility dummy

# Main
scoreboard players set @a diseaseHudModCompatibility 0
scoreboard players set @a enhancedHudModCompatibility 0
function lifeanddeath:hud/main
function enhancedsurvival:hud/main

execute as @a[scores={hasDiseaseBoolean=1..1}] if entity @s[scores={diseaseHudModCompatibility=0..0}] unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] run title @s actionbar {"text":"\u0030aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",font:"lifeanddeath:images"}
execute as @a[scores={hasDiseaseBoolean=1..1}] if entity @s[scores={diseaseHudModCompatibility=0..0}] unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] run title @s actionbar {"text":"\u0030aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",font:"lifeanddeath:images"}

execute as @a if entity @s[scores={diseaseHudModCompatibility=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=1..1}] if entity @s[scores={enhancedHudModCompatibility=0..0}] run function gstools:hud/enhancedhud


