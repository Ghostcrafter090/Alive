# Define
scoreboard objectives add gagStrength dummy
scoreboard objectives add gagSoundTic dummy

# Main
execute as @e[tag=is_human] run scoreboard players set @s gagStrength 0
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=1..1,diseaseTime=1000..}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=2..2,diseaseTime=1000..2000}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=2..2,diseaseTime=2000..}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=1000..2000}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=2000..3000}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=3000..}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=1000..2000}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=2000..3000}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=3000..4000}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=1..1,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=4000..}] run scoreboard players set @s gagStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=1..1,diseaseTime=2000..}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=2..2,diseaseTime=2000..3000}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=2..2,diseaseTime=3000..}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=2000..3000}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=3000..4000}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=4000..}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=2000..3000}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=3000..4000}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=4000..5000}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=2..2,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=5000..}] run scoreboard players set @s gagStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=1..1,diseaseTime=3000..}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=2..2,diseaseTime=3000..4000}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=2..2,diseaseTime=4000..}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=3000..4000}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=4000..5000}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=5000..}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=3000..4000}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=4000..5000}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=5000..6000}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=3..3,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=6000..}] run scoreboard players set @s gagStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=1..1,diseaseTime=4000..}] run scoreboard players set @s gagStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=2..2,diseaseTime=4000..5000}] run scoreboard players set @s gagStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=2..2,diseaseTime=5000..}] run scoreboard players set @s gagStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=4000..5000}] run scoreboard players set @s gagStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=5000..6000}] run scoreboard players set @s gagStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=3..3,diseaseTime=6000..}] run scoreboard players set @s gagStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=4000..5000}] run scoreboard players set @s gagStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=5000..6000}] run scoreboard players set @s gagStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=6000..7000}] run scoreboard players set @s gagStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,nau_minact_tier=4..,nau_boolean=1..1,nau_max_tier=4..,diseaseTime=7000..}] run scoreboard players set @s gagStrength 4