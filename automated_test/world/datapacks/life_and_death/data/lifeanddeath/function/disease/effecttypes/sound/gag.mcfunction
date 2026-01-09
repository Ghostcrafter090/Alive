# Define
scoreboard objectives add gagStrength dummy
scoreboard objectives add gagSoundTic dummy

# Main
execute as @e[tag=is_human] run function lifeanddeath:disease/effecttypes/sound/gag_sub/5

execute as @e[tag=is_human,type=!player,scores={gagStrength=1..}] run scoreboard players add @s gagSoundTic 1

execute as @e[tag=is_human,type=!player,scores={gagStrength=1..1},limit=1,sort=random] if entity @s[scores={gagSoundTic=240..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_gag
execute as @e[tag=is_human,type=!player,scores={gagStrength=2..2},limit=1,sort=random] if entity @s[scores={gagSoundTic=200..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_gag
execute as @e[tag=is_human,type=!player,scores={gagStrength=3..3},limit=1,sort=random] if entity @s[scores={gagSoundTic=160..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_gag
execute as @e[tag=is_human,type=!player,scores={gagStrength=4..4},limit=1,sort=random] if entity @s[scores={gagSoundTic=120..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_gag

execute as @e[tag=play_gag,limit=1,sort=random] run function lifeanddeath:disease/effecttypes/sound/gag_sub/54