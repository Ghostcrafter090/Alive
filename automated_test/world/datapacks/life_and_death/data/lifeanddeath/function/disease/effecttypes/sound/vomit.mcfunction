# Define
scoreboard objectives add vomitStrength dummy
scoreboard objectives add vomitSoundTic dummy

# Main
execute as @e[tag=is_human] run function lifeanddeath:disease/effecttypes/sound/vomit_sub/5

execute as @e[tag=is_human,type=!player,scores={vomitStrength=1..}] run scoreboard players add @s vomitSoundTic 1

execute as @e[tag=is_human,type=!player,scores={vomitStrength=1..1},limit=1,sort=random] if entity @s[scores={vomitSoundTic=3000..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_vomit
execute as @e[tag=is_human,type=!player,scores={vomitStrength=2..2},limit=1,sort=random] if entity @s[scores={vomitSoundTic=1500..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_vomit
execute as @e[tag=is_human,type=!player,scores={vomitStrength=3..3},limit=1,sort=random] if entity @s[scores={vomitSoundTic=1000..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_vomit
execute as @e[tag=is_human,type=!player,scores={vomitStrength=4..4},limit=1,sort=random] if entity @s[scores={vomitSoundTic=800..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze] add play_vomit

execute as @e[tag=play_vomit,limit=1,sort=random] run function lifeanddeath:disease/effecttypes/sound/vomit_sub/54