# Define
scoreboard objectives add coughStrength dummy
scoreboard objectives add coughSoundTic dummy

# Main
execute as @e[tag=is_human] run scoreboard players set @s coughStrength 0
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=1..1,weak_boolean=1..1,weak_max_tier=1..1,diseaseTime=1000..}] run scoreboard players set @s coughStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=1..1,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=1000..2000}] run scoreboard players set @s coughStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=1..1,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=2000..}] run scoreboard players set @s coughStrength 1
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=2..2,weak_boolean=1..1,weak_max_tier=1..1,diseaseTime=2000..}] run scoreboard players set @s coughStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=2..2,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=2000..3000}] run scoreboard players set @s coughStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=2..2,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=3000..}] run scoreboard players set @s coughStrength 2
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=3..,weak_boolean=1..1,weak_max_tier=1..1,diseaseTime=3000..}] run scoreboard players set @s coughStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=3..,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=3000..4000}] run scoreboard players set @s coughStrength 3
execute as @e[tag=is_human] if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=3..,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=4000..}] run scoreboard players set @s coughStrength 3

execute as @e[tag=is_human,scores={coughStrength=1..}] run scoreboard players add @s coughSoundTic 1

execute as @e[tag=is_human,scores={coughStrength=1..},limit=1,sort=random] if entity @s[scores={coughSoundTic=1200..}] at @s run playsound 