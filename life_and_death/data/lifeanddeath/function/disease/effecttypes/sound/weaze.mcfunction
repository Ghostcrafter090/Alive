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

execute as @e[tag=is_human,type=!player,scores={weazeStrength=1..}] run scoreboard players add @s weazeSoundTic 1

execute as @e[tag=is_human,type=!player,scores={weazeStrength=1..1},limit=1,sort=random] if entity @s[scores={weazeSoundTic=240..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_gag] add play_weaze
execute as @e[tag=is_human,type=!player,scores={weazeStrength=2..2},limit=1,sort=random] if entity @s[scores={weazeSoundTic=200..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_gag] add play_weaze
execute as @e[tag=is_human,type=!player,scores={weazeStrength=3..3},limit=1,sort=random] if entity @s[scores={weazeSoundTic=160..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_gag] add play_weaze
execute as @e[tag=is_human,type=!player,scores={weazeStrength=4..4},limit=1,sort=random] if entity @s[scores={weazeSoundTic=120..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_gag] add play_weaze

execute as @e[tag=play_weaze,limit=1,sort=random] at @s run playsound lifeanddeath.player.cough.hard player @a ~ ~ ~ 1
execute as @e[tag=play_weaze,limit=1,sort=random] at @s run scoreboard players set @s coughSoundTic 0
execute as @e[tag=play_weaze,limit=1,sort=random] at @s run scoreboard players set @s weazeSoundTic 0
execute as @e[tag=play_weaze,limit=1,sort=random] at @s run tag @s remove play_weaze