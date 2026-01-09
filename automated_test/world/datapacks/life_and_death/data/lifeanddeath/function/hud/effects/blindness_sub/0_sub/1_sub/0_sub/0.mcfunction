execute if entity @s[scores={blin_max_tier=1..1}] if entity @s[scores={diseaseTime=1000..}] run attribute @s gstools:disease_effect_blindness base set 9
execute if entity @s[scores={blin_max_tier=2..2}] run function lifeanddeath:hud/effects/blindness_sub/0_sub/1_sub/0_sub/0_sub/1
execute if entity @s[scores={blin_max_tier=3..3}] run function lifeanddeath:hud/effects/blindness_sub/0_sub/1_sub/0_sub/0_sub/3
execute if entity @s[scores={blin_max_tier=4..}] run function lifeanddeath:hud/effects/blindness_sub/0_sub/1_sub/0_sub/0_sub/6