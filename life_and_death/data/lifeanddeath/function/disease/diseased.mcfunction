# Define
scoreboard objectives add timeTillHorny dummy
scoreboard objectives add nearbyHornyEntities dummy

execute as @e[tag=animal,sort=random,limit=1] at @s store result score @s nearbyHornyEntities if entity @e[tag=animal,distance=0..20]
execute as @e[tag=fish,sort=random,limit=1] at @s store result score @s nearbyHornyEntities if entity @e[tag=fish,distance=0..15]

# Main
execute if entity @a[scores={random100=31..35}] if entity @e[type=wither_skeleton,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/witherskele 23t append
execute if entity @a[scores={random100=36..40}] if entity @e[type=piglin,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/zombiepig 24t append
execute if entity @a[scores={random100=41..45}] if entity @e[type=zombie_villager,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/zombievill 25t append

execute as @e[tag=animal,sort=random,limit=10,scores={nearbyHornyEntities=..10}] run scoreboard players add @s timeTillHorny 1
execute as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run data modify entity @s InLove set value 600
execute as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run data modify entity @s Willing set value 1b
execute as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10001..,nearbyHornyEntities=..10}] run scoreboard players set @s timeTillHorny 9000
execute as @e[tag=fish,sort=random,limit=10,scores={nearbyHornyEntities=..10}] run scoreboard players add @s timeTillHorny 1
execute as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run data merge entity @s {InLove:600}
execute as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run data merge entity @s {Willing:1b}
execute as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10001..,nearbyHornyEntities=..10}] run scoreboard players set @s timeTillHorny 9000
