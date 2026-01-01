# Define
scoreboard objectives add timeTillHorny dummy

# Main
execute if entity @a[scores={random100=31..35}] if entity @e[type=wither_skeleton,limit=3,sort=random] run function lifeanddeath:disease/spreaders/witherskele
execute if entity @a[scores={random100=36..40}] if entity @e[type=piglin,limit=3,sort=random] run function lifeanddeath:disease/spreaders/zombiepig
execute if entity @a[scores={random100=41..45}] if entity @e[type=zombie_villager,limit=3,sort=random] run function lifeanddeath:disease/spreaders/zombievill

execute as @a at @s as @e[tag=animal,sort=random,limit=10] run scoreboard players add @s timeTillHorny 1
execute as @a at @s as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10000..}] run data modify entity @s InLove set value 600
execute as @a at @s as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10000..}] run data modify entity @s Willing set value 1b
execute as @a at @s as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10001..}] run scoreboard players set @s timeTillHorny 9000
execute as @a at @s as @e[tag=fish,sort=random,limit=10] run scoreboard players add @s timeTillHorny 1
execute as @a at @s as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10000..}] run data merge entity @s {InLove:600}
execute as @a at @s as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10000..}] run data merge entity @s {Willing:1b}
execute as @a at @s as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10001..}] run scoreboard players set @s timeTillHorny 9000
