# Define

# Main
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..20}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..19}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..18}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..17}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..16}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..15}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..14}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..13}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..12}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..11}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..10}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..9}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..8}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..7}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..6}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..5}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..4}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..3}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..2}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill
execute if entity @e[type=marker,scores={averageTpsDesirePaths=..1}] as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill

scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun -= @e[tag=gstools_worker,type=marker,limit=1] desirePathsTicRate
execute if score @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun > @e[tag=gstools_worker,type=marker,limit=1] desirePathsTicRate run function desirepaths:path