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