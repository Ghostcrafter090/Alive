# Define
scoreboard objectives add silverfishParasiteImmunity dummy
scoreboard objectives add silverfishParasiteTime dummy

# Main
execute as @e[sort=random,limit=20,type=silverfish] run effect give @s infested infinite 1
execute as @e[sort=random,limit=20,type=silverfish] at @s as @e[tag=!tile,distance=0..1] run effect give @s infested 400 1
execute as @e[sort=random,limit=20,type=silverfish] at @s as @e[tag=!tile,distance=0..1] run scoreboard players set @s silverfishParasiteTime 8000

execute as @e[sort=random,limit=20,scores={silverfishParasiteTime=0..}] unless entity @s[nbt={active_effects:[{id:"minecraft:infested"}]}] run effect give @s minecraft:infested 150 0
execute as @e[sort=random,limit=20,scores={silverfishParasiteTime=0..}] at @s as @e[distance=0.01..1,scores={silverfishParasiteImmunity=..1}] run scoreboard players set @s silverfishParasiteTime 8000
execute as @e[sort=random,limit=20,scores={silverfishParasiteTime=0..}] at @s as @e[distance=0.01..1,scores={silverfishParasiteImmunity=..1}] run scoreboard players set @s silverfishParasiteImmunity 32000
execute as @e[sort=random,limit=20,scores={silverfishParasiteTime=0..}] run scoreboard players remove @s silverfishParasiteTime 1
execute as @e[sort=random,limit=20,scores={silverfishParasiteImmunity=0..}] run scoreboard players remove @s silverfishParasiteImmunity 1