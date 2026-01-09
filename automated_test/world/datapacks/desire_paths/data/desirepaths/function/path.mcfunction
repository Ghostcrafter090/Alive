# Define

# Main
execute as @e[tag=walkable,sort=random,limit=1] at @s run function desirepaths:dofill

scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun -= @e[tag=gstools_worker,type=marker,limit=1] desirePathsTicRate
execute if score @e[tag=gstools_worker,type=marker,limit=1] numberOfTimesToRun > @e[tag=gstools_worker,type=marker,limit=1] desirePathsTicRate run function desirepaths:path