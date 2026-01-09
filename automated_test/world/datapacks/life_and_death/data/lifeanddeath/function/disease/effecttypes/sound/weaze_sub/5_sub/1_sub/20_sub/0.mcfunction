execute if entity @s[scores={poi_max_tier=1..1}] if entity @s[scores={diseaseTime=3000..}] run scoreboard players set @s weazeStrength 3
execute if entity @s[scores={poi_max_tier=2..2}] run function lifeanddeath:disease/effecttypes/sound/weaze_sub/5_sub/1_sub/20_sub/0_sub/1
execute if entity @s[scores={poi_max_tier=3..3}] run function lifeanddeath:disease/effecttypes/sound/weaze_sub/5_sub/1_sub/20_sub/0_sub/3
execute if entity @s[scores={poi_max_tier=4..}] run function lifeanddeath:disease/effecttypes/sound/weaze_sub/5_sub/1_sub/20_sub/0_sub/6