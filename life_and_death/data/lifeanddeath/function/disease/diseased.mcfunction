# Define
scoreboard objectives add timeTillHorny dummy
scoreboard objectives add nearbyHornyEntities dummy
scoreboard objectives add turtleEggCount dummy
scoreboard objectives add entityInLove dummy

execute as @e[tag=animal,sort=random,limit=1] at @s store result score @s nearbyHornyEntities if entity @e[tag=animal,distance=0..20]
execute as @e[tag=fish,sort=random,limit=1] at @s store result score @s nearbyHornyEntities if entity @e[tag=fish,distance=0..15]

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={random100=31..35}] if entity @e[type=wither_skeleton,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/witherskele 23t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={random100=36..40}] if entity @e[type=piglin,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/zombiepig 24t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={random100=41..45}] if entity @e[type=zombie_villager,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/zombievill 25t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[tag=animal,sort=random,limit=10,scores={nearbyHornyEntities=..10}] run scoreboard players add @s timeTillHorny 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run data modify entity @s InLove set value 600
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run data modify entity @s Willing set value 1b
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10001..,nearbyHornyEntities=..10}] run scoreboard players set @s timeTillHorny 9000

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[tag=fish,sort=random,limit=10,scores={nearbyHornyEntities=..10}] run scoreboard players add @s timeTillHorny 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run data merge entity @s {InLove:600}
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run data merge entity @s {Willing:1b}
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run scoreboard players add @s turtleEggCount 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10001..,nearbyHornyEntities=..10}] run scoreboard players set @s timeTillHorny 9000

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={nearbyHornyEntities=..10}] run scoreboard players add @s timeTillHorny 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=10000..,nearbyHornyEntities=..10}] run data merge entity @s {InLove:600}
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=10001..,nearbyHornyEntities=..10}] run scoreboard players set @s timeTillHorny 9000

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle] store result score @s entityInLove run data get entity @s InLove 1

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={entityInLove=1..}] at @s if entity @e[type=turtle,distance=1..2,scores={entityInLove=1..}] run function gstools:util/random
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={entityInLove=1..}] at @s if entity @e[type=turtle,distance=1..2,scores={entityInLove=1..}] run scoreboard players operation @s turtleEggCount += @s random10

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=1..}] if entity @s[nbt={HasEgg:0b}] run scoreboard players remove @s turtleEggCount 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=1..}] if entity @s[nbt={HasEgg:0b}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [Alive] Impregnated Turtle...
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=1..}] if entity @s[nbt={HasEgg:0b}] run data merge entity @s {HasEgg:1b}
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=1..}] if entity @s[nbt={HasEgg:1b}] run scoreboard players set @s timeTillHorny 9500
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=..0}] if entity @s[nbt={HasEgg:1b}] run scoreboard players set @s timeTillHorny 0

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=1..}] if entity @s[nbt={has_egg:0b}] run scoreboard players remove @s turtleEggCount 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=1..}] if entity @s[nbt={has_egg:0b}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [Alive] Impregnated Turtle...
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=1..}] if entity @s[nbt={has_egg:0b}] run data merge entity @s {has_egg:1b}
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=1..}] if entity @s[nbt={has_egg:0b}] run scoreboard players set @s timeTillHorny 9500
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableBreeding=1..1}] as @e[type=turtle,sort=random,limit=10,scores={timeTillHorny=9800..,nearbyHornyEntities=..10,turtleEggCount=..0}] if entity @s[nbt={has_egg:0b}] run scoreboard players set @s timeTillHorny 0

execute as @e[type=turtle,sort=random,limit=1] at @s if block ~ ~-1 ~ clay run fill ~ ~-1 ~ ~ ~-1 ~ sand replace clay
execute as @e[type=turtle,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run fill ~ ~-1 ~ ~ ~-1 ~ clay replace #minecraft:dirt
 