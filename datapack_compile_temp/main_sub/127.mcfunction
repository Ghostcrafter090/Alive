execute unless entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run effect give @s minecraft:darkness 150 0
execute at @s as @e[distance=0.01..1] unless entity @s[scores={darkParasiteTime=0..}] run scoreboard players set @s darkParasiteTime 8000
scoreboard players remove @s darkParasiteTime 1