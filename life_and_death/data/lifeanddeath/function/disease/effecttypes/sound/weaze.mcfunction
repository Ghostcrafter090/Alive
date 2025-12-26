# Define
scoreboard objectives add weazeStrength dummy
scoreboard objectives add weazeSoundTic dummy

# Main
execute as @e[tag=is_human] run scoreboard players set @s weazeStrength 0
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=1..1,diseaseTime=1000..}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=2..2,diseaseTime=1000..2000}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=2..2,diseaseTime=2000..}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=1000..2000}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=2000..3000}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=3000..}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=1000..2000}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=2000..3000}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=3000..4000}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=1..1,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=4000..}] run scoreboard players set @s weazeStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=1..1,diseaseTime=2000..}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=2..2,diseaseTime=2000..3000}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=2..2,diseaseTime=3000..}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=2000..3000}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=3000..4000}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=4000..}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=2000..3000}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=3000..4000}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=4000..5000}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=2..2,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=5000..}] run scoreboard players set @s weazeStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=1..1,diseaseTime=3000..}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=2..2,diseaseTime=3000..4000}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=2..2,diseaseTime=4000..}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=3000..4000}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=4000..5000}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=5000..}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=3000..4000}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=4000..5000}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=5000..6000}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=3..3,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=6000..}] run scoreboard players set @s weazeStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=1..1,diseaseTime=4000..}] run scoreboard players set @s weazeStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=2..2,diseaseTime=4000..5000}] run scoreboard players set @s weazeStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=2..2,diseaseTime=5000..}] run scoreboard players set @s weazeStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=4000..5000}] run scoreboard players set @s weazeStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=5000..6000}] run scoreboard players set @s weazeStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=3..3,diseaseTime=6000..}] run scoreboard players set @s weazeStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=4000..5000}] run scoreboard players set @s weazeStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=5000..6000}] run scoreboard players set @s weazeStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=6000..7000}] run scoreboard players set @s weazeStrength 4
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,poi_minact_tier=4..,poi_boolean=1..1,poi_max_tier=4..,diseaseTime=7000..}] run scoreboard players set @s weazeStrength 4