# Define
scoreboard objectives add consumptionStrength dummy
scoreboard objectives add breathingSoundTic dummy

# Main
execute as @a run function gstools:util/random
execute as @e[tag=is_human] run function lifeanddeath:disease/effecttypes/sound/consumption_sub/6

execute as @e[tag=is_human] run function lifeanddeath:disease/effecttypes/sound/consumption_sub/12

execute as @e[tag=is_human] run function lifeanddeath:disease/effecttypes/sound/consumption_sub/16

execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2}] if entity @s[scores={with_minact_tier=4..}] if entity @s[scores={with_boolean=1..1}] if entity @s[scores={with_max_tier=1..}] if entity @s[scores={diseaseTime=7000..}] run scoreboard players set @s consumptionStrength 1