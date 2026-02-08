execute as @e[sort=random,limit=20,type=cave_spider] run effect give @s weaving infinite 1
execute as @e[sort=random,limit=20,type=cave_spider] at @s as @e[tag=!tile,distance=0..1] run effect give @s weaving 400 1
execute as @e[sort=random,limit=20,type=cave_spider] at @s as @e[tag=!tile,distance=0..1] run scoreboard players set @s spiderParasiteTime 8000

execute as @e[sort=random,limit=20,scores={spiderParasiteTime=0..}] unless entity @s[nbt={active_effects:[{id:"minecraft:weaving"}]}] run effect give @s minecraft:weaving 150 0
execute as @e[sort=random,limit=20,scores={spiderParasiteTime=0..}] at @s as @e[distance=0.01..1] run scoreboard players set @s spiderParasiteTime 8000
execute as @e[sort=random,limit=20,scores={spiderParasiteTime=0..}] run scoreboard players remove @s spiderParasiteTime 1