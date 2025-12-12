# Define
scoreboard objectives add diseaseTimeN dummy

# Main
execute as @a at @s as @e[tag=!functional,type=!zombie,scores={hasDiseaseBoolean=1..1,diseaseTime=8000..}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players set @s hasDiseaseBoolean 2
scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] diseaseTimeN 5

execute as @a run function lifeanddeath:disease/diseaseb_sub/7

execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] run function lifeanddeath:disease/diseaseb_sub/13

# Spread
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] run function lifeanddeath:disease/diseaseb_sub/39

execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..0}] run scoreboard players set @s hasDiseaseBoolean 1

execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] run function lifeanddeath:disease/diseaseb_sub/66

execute as @a[scores={hasEatenRottingFlesh=1..}] run function lifeanddeath:disease/diseaseb_sub/92

scoreboard players set @a regulateZombieDiseaseEffects 4
scoreboard objectives add regulateZombieDiseaseEffects dummy
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=zombie] run function lifeanddeath:disease/spreaders/zombie