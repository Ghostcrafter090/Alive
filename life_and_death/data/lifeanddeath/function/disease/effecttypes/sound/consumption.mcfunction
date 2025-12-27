# Define
scoreboard objectives add consumptionStrength dummy
scoreboard objectives add breathingSoundTic dummy

# Main
execute as @a run function gstools:util/random
execute as @e[tag=is_human] run scoreboard players set @s consumptionStrength 0
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=1..1,with_boolean=1..1,with_max_tier=1..,diseaseTime=4000..}] run scoreboard players set @s consumptionStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=1..1,with_boolean=1..1,with_max_tier=1..,diseaseTime=5000..}] run scoreboard players set @s consumptionStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=1..1,with_boolean=1..1,with_max_tier=1..,diseaseTime=6000..}] run scoreboard players set @s consumptionStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=1..1,with_boolean=1..1,with_max_tier=1..,diseaseTime=7000..}] run scoreboard players set @s consumptionStrength 4

execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=2..2,with_boolean=1..1,with_max_tier=1..,diseaseTime=5000..}] run scoreboard players set @s consumptionStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=2..2,with_boolean=1..1,with_max_tier=1..,diseaseTime=6000..}] run scoreboard players set @s consumptionStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=2..2,with_boolean=1..1,with_max_tier=1..,diseaseTime=7000..}] run scoreboard players set @s consumptionStrength 3

execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=3..3,with_boolean=1..1,with_max_tier=1..,diseaseTime=6000..}] run scoreboard players set @s consumptionStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=3..3,with_boolean=1..1,with_max_tier=1..,diseaseTime=6000..}] run scoreboard players set @s consumptionStrength 2

execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,with_minact_tier=4..,with_boolean=1..1,with_max_tier=1..,diseaseTime=7000..}] run scoreboard players set @s consumptionStrength 1

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=0..1}] as @a[scores={consumptionStrength=0..}] run scoreboard players add @s breathingSoundTic 1

execute if entity @a[scores={random10=5..}] as @a if score @s breathingSoundTic >= @s stamina run function lifeanddeath:disease/effecttypes/sound/consumption/play
execute if entity @a[scores={random10=..4}] as @a if score @s breathingSoundTic >= @s stamina run function lifeanddeath:disease/effecttypes/sound/consumption/playother

execute unless entity @e[tag=gstools_worker,type=marker,scores={enhancedSurvivalLoaded=0..1}] as @a if score @s breathingSoundTic >= @s stamina run scoreboard players set @s breathingSoundTic 0