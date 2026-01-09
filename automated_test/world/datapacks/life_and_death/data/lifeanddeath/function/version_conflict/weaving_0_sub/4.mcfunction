execute unless entity @s[nbt={active_effects:[{id:"minecraft:weaving"}]}] run effect give @s minecraft:weaving 150 0
execute at @s as @e[distance=0.01..1] run scoreboard players set @s spiderParasiteTime 8000
scoreboard players remove @s spiderParasiteTime 1