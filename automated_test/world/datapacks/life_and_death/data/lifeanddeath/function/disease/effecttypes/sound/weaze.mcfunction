# Define
scoreboard objectives add weazeStrength dummy
scoreboard objectives add weazeSoundTic dummy

# Main
execute as @e[tag=is_human] run function lifeanddeath:disease/effecttypes/sound/weaze_sub/5

execute as @e[tag=is_human,type=!player,scores={weazeStrength=1..}] run scoreboard players add @s weazeSoundTic 1

execute as @e[tag=is_human,type=!player,scores={weazeStrength=1..1},limit=1,sort=random] if entity @s[scores={weazeSoundTic=240..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_gag] add play_weaze
execute as @e[tag=is_human,type=!player,scores={weazeStrength=2..2},limit=1,sort=random] if entity @s[scores={weazeSoundTic=200..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_gag] add play_weaze
execute as @e[tag=is_human,type=!player,scores={weazeStrength=3..3},limit=1,sort=random] if entity @s[scores={weazeSoundTic=160..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_gag] add play_weaze
execute as @e[tag=is_human,type=!player,scores={weazeStrength=4..4},limit=1,sort=random] if entity @s[scores={weazeSoundTic=120..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_gag] add play_weaze

execute as @e[tag=play_weaze,limit=1,sort=random] run function lifeanddeath:disease/effecttypes/sound/weaze_sub/54