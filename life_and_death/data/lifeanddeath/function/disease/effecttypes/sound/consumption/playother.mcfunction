# Define
tag @a remove play_disease_sound

execute as @a[scores={random100=34..40},limit=1,sort=random] if entity @s[scores={coughStrength=3..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_cough_medium
execute as @a[scores={random100=29..33},limit=1,sort=random] if entity @s[scores={coughStrength=2..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_cough_light
execute as @a[scores={random100=20..28},limit=1,sort=random] if entity @s[scores={coughStrength=1..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_cough_light

execute as @a[scores={random100=27..29},limit=1,sort=random] if entity @s[scores={weazeStrength=4..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_weaze
execute as @a[scores={random100=24..27},limit=1,sort=random] if entity @s[scores={weazeStrength=3..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_weaze
execute as @a[scores={random100=21..23},limit=1,sort=random] if entity @s[scores={weazeStrength=2..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_weaze
execute as @a[scores={random100=20..20},limit=1,sort=random] if entity @s[scores={weazeStrength=1..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_weaze

execute as @a[scores={random100=18..19},limit=1,sort=random] if entity @s[scores={gagStrength=4..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_gag
execute as @a[scores={random100=15..17},limit=1,sort=random] if entity @s[scores={gagStrength=3..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_gag
execute as @a[scores={random100=13..14},limit=1,sort=random] if entity @s[scores={gagStrength=2..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_gag
execute as @a[scores={random100=12..12},limit=1,sort=random] if entity @s[scores={gagStrength=1..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_gag

execute as @a[scores={random100=4..4},limit=1,sort=random] if entity @s[scores={vomitStrength=4..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_vomit
execute as @a[scores={random100=3..3},limit=1,sort=random] if entity @s[scores={vomitStrength=3..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_vomit
execute as @a[scores={random100=2..2},limit=1,sort=random] if entity @s[scores={vomitStrength=2..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_vomit
execute as @a[scores={random100=1..1},limit=1,sort=random] if entity @s[scores={vomitStrength=1..}] at @s run tag @s[tag=!play_cough_light,tag=!play_cough_medium,tag=!play_weaze,tag=!play_gag,tag=!play_vomit] add play_vomit

execute if entity @a[tag=play_cough_light] run tag @s add play_disease_sound
execute if entity @a[tag=play_cough_medium] run tag @s add play_disease_sound
execute if entity @a[tag=play_weaze] run tag @s add play_disease_sound
execute if entity @a[tag=play_gag] run tag @s add play_disease_sound
execute if entity @a[tag=play_vomit] run tag @s add play_disease_sound

