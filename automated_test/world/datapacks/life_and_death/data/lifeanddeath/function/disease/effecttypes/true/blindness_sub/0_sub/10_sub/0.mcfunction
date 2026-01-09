execute if entity @s[scores={blin_max_tier=1..1,}] if entity @s[scores={diseaseTime=2000..,hasImmunityTime=290..291}] run effect give @s blindness 1 0
execute if entity @s[scores={blin_max_tier=2..2,}] run function lifeanddeath:disease/effecttypes/true/blindness_sub/0_sub/10_sub/0_sub/1
execute if entity @s[scores={blin_max_tier=3..3,}] run function lifeanddeath:disease/effecttypes/true/blindness_sub/0_sub/10_sub/0_sub/3
execute if entity @s[scores={blin_max_tier=4..,}] run function lifeanddeath:disease/effecttypes/true/blindness_sub/0_sub/10_sub/0_sub/6