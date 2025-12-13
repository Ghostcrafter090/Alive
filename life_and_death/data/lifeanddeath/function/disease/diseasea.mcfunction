# Define

# Main
execute as @a at @s if entity @e[tag=!functional,distance=0..80,scores={hasDiseaseBoolean=1..2,slow_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/slowness
execute as @a at @s if entity @e[tag=!functional,distance=0..80,scores={hasDiseaseBoolean=1..2,minf_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/miningfat
execute as @a at @s if entity @e[tag=!functional,distance=0..80,scores={hasDiseaseBoolean=1..2,nau_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/nausea
execute as @a at @s if entity @e[tag=!functional,distance=0..80,scores={hasDiseaseBoolean=1..2,blin_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/blindness
execute as @a at @s if entity @e[tag=!functional,distance=0..80,scores={hasDiseaseBoolean=1..2,hung_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/hunger
execute as @a at @s if entity @e[tag=!functional,distance=0..80,scores={hasDiseaseBoolean=1..2,weak_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/weakness
execute as @a at @s if entity @e[tag=!functional,distance=0..80,scores={hasDiseaseBoolean=1..2,poi_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/poison
execute as @a at @s if entity @e[tag=!functional,distance=0..80,scores={hasDiseaseBoolean=1..2,with_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/wither
execute as @a[gamemode=creative] run scoreboard players set @s hasDiseaseBoolean 0
execute as @a[gamemode=creative] run scoreboard players set @s diseaseTime -25