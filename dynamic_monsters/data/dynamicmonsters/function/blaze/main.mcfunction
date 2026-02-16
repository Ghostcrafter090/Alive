# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={random1000=..4}] as @e[type=blaze,sort=random,limit=1] at @s run damage @s 0.0001 minecraft:mob_attack by @e[tag=!tile,type=!blaze,sort=nearest,distance=1..,limit=1] from @e[tag=!tile,tag=!nether,type=!creeper,sort=nearest,distance=1..,limit=1]