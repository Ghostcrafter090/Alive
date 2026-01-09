# Define
scoreboard objectives add coughStrength dummy
scoreboard objectives add coughSoundTic dummy

# Main
execute as @e[tag=is_human] run function lifeanddeath:disease/effecttypes/sound/cough_sub/5

execute as @e[tag=is_human,type=!player,scores={coughStrength=1..}] run scoreboard players add @s coughSoundTic 1

execute as @e[tag=is_human,type=!player,scores={coughStrength=1..1},limit=1,sort=random] if entity @s[scores={coughSoundTic=120..}] at @s run tag @s add play_cough_light
execute as @e[tag=is_human,type=!player,scores={coughStrength=2..2},limit=1,sort=random] if entity @s[scores={coughSoundTic=80..}] at @s run tag @s add play_cough_light
execute as @e[tag=is_human,type=!player,scores={coughStrength=3..3},limit=1,sort=random] if entity @s[scores={coughSoundTic=120..}] at @s run tag @s[tag=!play_cough_light] add play_cough_medium
execute as @e[tag=is_human,type=!player,scores={coughStrength=2..2},limit=1,sort=random] if entity @s[scores={coughSoundTic=80..}] at @s run tag @s[tag=!play_cough_medium] add play_cough_light
execute as @e[tag=is_human,type=!player,scores={coughStrength=3..3},limit=1,sort=random] if entity @s[scores={coughSoundTic=40..}] at @s run tag @s[tag=!play_cough_light] add play_cough_medium

execute as @e[tag=play_cough_light] at @s run playsound lifeanddeath.player.cough.light player @a ~ ~ ~ 1
execute as @e[tag=play_cough_medium] at @s run playsound lifeanddeath.player.cough.medium player @a ~ ~ ~ 1
scoreboard players remove @a[tag=play_cough_light] breathingSoundTic 30
scoreboard players remove @a[tag=play_cough_medium] breathingSoundTic 50
execute as @e[tag=play_cough_light] at @s run tag @s remove play_cough_light
execute as @e[tag=play_cough_medium] at @s run tag @s remove play_cough_medium
 

execute as @e[tag=is_human,type=!player,scores={coughStrength=1..},limit=1,sort=random] if entity @s[scores={coughSoundTic=120..}] run scoreboard players set @s coughSoundTic 0
execute as @e[tag=is_human,type=!player,scores={coughStrength=2..},limit=1,sort=random] if entity @s[scores={coughSoundTic=80..}] run scoreboard players set @s coughSoundTic 0
execute as @e[tag=is_human,type=!player,scores={coughStrength=3..},limit=1,sort=random] if entity @s[scores={coughSoundTic=40..}] run scoreboard players set @s coughSoundTic 0