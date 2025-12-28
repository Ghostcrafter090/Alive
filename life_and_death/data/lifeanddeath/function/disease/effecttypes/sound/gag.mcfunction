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

execute as @e[tag=is_human,type=!player,scores={gagStrength=1..}] run scoreboard players add @s gagSoundTic 1

execute as @e[tag=is_human,type=!player,scores={gagStrength=1..1},limit=1,sort=random] if entity @s[scores={gagSoundTic=240..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_gag
execute as @e[tag=is_human,type=!player,scores={gagStrength=2..2},limit=1,sort=random] if entity @s[scores={gagSoundTic=200..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_gag
execute as @e[tag=is_human,type=!player,scores={gagStrength=3..3},limit=1,sort=random] if entity @s[scores={gagSoundTic=160..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_gag
execute as @e[tag=is_human,type=!player,scores={gagStrength=4..4},limit=1,sort=random] if entity @s[scores={gagSoundTic=120..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_gag

execute as @e[tag=play_gag,limit=1,sort=random] at @s run playsound lifeanddeath.player.gag player @a ~ ~ ~ 1
execute as @e[tag=play_gag,limit=1,sort=random] at @s run scoreboard players set @s coughSoundTic 0
execute as @e[tag=play_gag,limit=1,sort=random] at @s run scoreboard players set @s gagSoundTic 0
execute as @e[tag=play_gag,limit=1,sort=random] at @s run scoreboard players remove @s breathingSoundTic 40
execute as @e[tag=play_gag,limit=1,sort=random] at @s run tag @s remove play_gag