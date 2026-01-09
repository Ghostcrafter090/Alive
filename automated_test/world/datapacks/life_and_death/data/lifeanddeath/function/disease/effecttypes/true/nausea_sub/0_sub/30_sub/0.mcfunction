execute if entity @s[scores={nau_max_tier=1..1,}] if entity @s[scores={diseaseTime=4000..,hasImmunityTime=290..291}] run effect give @s nausea 1 0
execute if entity @s[scores={nau_max_tier=2..2,}] run function lifeanddeath:disease/effecttypes/true/nausea_sub/0_sub/30_sub/0_sub/1
execute if entity @s[scores={nau_max_tier=3..3,}] run function lifeanddeath:disease/effecttypes/true/nausea_sub/0_sub/30_sub/0_sub/3
execute if entity @s[scores={nau_max_tier=4..,}] run function lifeanddeath:disease/effecttypes/true/nausea_sub/0_sub/30_sub/0_sub/6