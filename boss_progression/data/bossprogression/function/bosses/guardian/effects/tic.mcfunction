execute if entity @e[tag=gstools_worker,type=marker,scores={random100=50..}] as @e[type=minecraft:squid,sort=random,limit=10] at @s run fill ~ ~2 ~ ~ ~ ~ water[level=2] replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=50..}] as @e[type=dolphin,sort=random,limit=10] at @s run fill ~ ~2 ~ ~ ~ ~ water[level=2] replace #minecraft:air
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=50..}] as @e[type=guardian,sort=random,limit=10] at @s run fill ~ ~2 ~ ~ ~ ~ water[level=2] replace #minecraft:air
execute as @e[tag=fish,type=!dolphin,type=!guardian,type=!squid,sort=random,limit=2] at @s run fill ~ ~2 ~ ~ ~ ~ water[level=2] replace #minecraft:air
