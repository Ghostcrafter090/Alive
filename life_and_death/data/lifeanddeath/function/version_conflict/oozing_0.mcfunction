# Define
scoreboard objectives add slimeParasiteImmunity dummy
scoreboard objectives add slimeParasiteTime dummy

# Main
execute as @e[sort=random,limit=20,type=slime] at @s as @e[tag=!tile,distance=0..1] run scoreboard players set @s slimeParasiteTime 8000

execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..},type=!slime] unless entity @s[nbt={active_effects:[{id:"minecraft:oozing"}]}] run effect give @s minecraft:oozing 150 0
execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..}] at @s as @e[distance=0.01..1,scores={slimeParasiteImmunity=..1}] run scoreboard players set @s slimeParasiteTime 8000
execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..}] at @s as @e[distance=0.01..1,scores={slimeParasiteImmunity=..1}] run scoreboard players set @s slimeParasiteImmunity 32000
execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..}] run scoreboard players remove @s slimeParasiteTime 1
execute as @e[sort=random,limit=20,scores={slimeParasiteImmunity=0..}] run scoreboard players remove @s slimeParasiteImmunity 1