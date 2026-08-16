# Define
scoreboard objectives add numberOfWalkingEntities dummy
scoreboard objectives add numberOfTimesToRun dummy
scoreboard objectives add entityVerticalMotion dummy

# Main
scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfWalkingEntities = @e[tag=gstools_worker,type=marker,limit=1] numberOfAnimals
scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfWalkingEntities += @e[tag=gstools_worker,type=marker,limit=1] numberOfMonsters
scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfWalkingEntities += @e[tag=gstools_worker,type=marker,limit=1] numberOfGolems
scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun = @e[tag=gstools_worker,type=marker,limit=1] numberOfWalkingEntities
execute if entity @e[type=marker,tag=gstools_worker,scores={desirePaths_pathRate=1..}] run scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun /= @e[tag=gstools_worker,type=marker,limit=1] desirePaths_pathRate
execute if entity @e[type=marker,tag=gstools_worker,scores={desirePaths_pathRate=1..}] run scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun *= @e[tag=gstools_worker,type=marker,limit=1] 20

execute as @e[tag=animal,tag=!walkable] run tag @s add walkable
execute as @e[tag=monster,tag=!walkable] run tag @s add walkable
execute as @e[tag=golem,tag=!walkable] run tag @s add walkable
execute as @a[tag=!walkable] run tag @s add walkable

# scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun /= @e[tag=gstools_worker,type=marker,limit=1] 20

execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={randomSigned10=..0}] run scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun /= @e[tag=gstools_worker,type=marker,limit=1] random100

execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random

execute unless score @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun > @e[tag=gstools_worker,type=marker,limit=1] desirePathsTicRate if score @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun > @e[tag=gstools_worker,type=marker,limit=1] random100 run function desirepaths:path
execute if score @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun > @e[tag=gstools_worker,type=marker,limit=1] desirePathsTicRate run function desirepaths:path

execute as @a at @s as @e[tag=walkable,type=!bat,type=!parrot,type=!phantom,type=!bee,type=!chicken,limit=100,sort=nearest] store result score @s entityVerticalMotion run data get entity @s Motion[1] 100
execute as @a at @s as @a store result score @s entityVerticalMotion run data get entity @s Motion[1] 100

execute unless entity @e[type=marker,tag=gstools_worker,scores={desirePaths_disableFallRateTrampleBoost=1..1}] as @e[tag=walkable,type=!bat,type=!parrot,type=!phantom,type=!bee,type=!chicken,scores={entityVerticalMotion=..-50}] run function desirepaths:dofill