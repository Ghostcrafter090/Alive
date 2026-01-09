execute if entity @s[scores={nau_max_tier=1..1}] if entity @s[scores={diseaseTime=2000..}] run scoreboard players set @s gagStrength 2
execute if entity @s[scores={nau_max_tier=2..2}] run function lifeanddeath:disease/effecttypes/sound/gag_sub/5_sub/1_sub/10_sub/0_sub/1
execute if entity @s[scores={nau_max_tier=3..3}] run function lifeanddeath:disease/effecttypes/sound/gag_sub/5_sub/1_sub/10_sub/0_sub/3
execute if entity @s[scores={nau_max_tier=4..}] run function lifeanddeath:disease/effecttypes/sound/gag_sub/5_sub/1_sub/10_sub/0_sub/6