# Define
scoreboard objectives add diseaseRegulatorA dummy
scoreboard objectives add hasDiseaseBoolean dummy
scoreboard objectives add hasDiseaseBooleanD dummy
scoreboard objectives add diseaseTime dummy

scoreboard objectives add slow_minact_tier dummy
scoreboard objectives add slow_boolean dummy
scoreboard objectives add slow_max_tier dummy
scoreboard objectives add minf_minact_tier dummy
scoreboard objectives add minf_boolean dummy
scoreboard objectives add minf_max_tier dummy
scoreboard objectives add nau_minact_tier dummy
scoreboard objectives add nau_boolean dummy
scoreboard objectives add nau_max_tier dummy
scoreboard objectives add blin_minact_tier dummy
scoreboard objectives add blin_boolean dummy
scoreboard objectives add blin_max_tier dummy
scoreboard objectives add hung_minact_tier dummy
scoreboard objectives add hung_boolean dummy
scoreboard objectives add hung_max_tier dummy
scoreboard objectives add weak_minact_tier dummy
scoreboard objectives add weak_boolean dummy
scoreboard objectives add weak_max_tier dummy
scoreboard objectives add poi_minact_tier dummy
scoreboard objectives add poi_boolean dummy
scoreboard objectives add poi_max_tier dummy
scoreboard objectives add with_minact_tier dummy
scoreboard objectives add with_boolean dummy
scoreboard objectives add with_max_tier dummy

scoreboard objectives add hasEatenRottingFlesh minecraft.used:minecraft.rotten_flesh
scoreboard objectives add hasEatenSpiderEye minecraft.used:minecraft.spider_eye

scoreboard objectives add hasImmunityTime dummy

scoreboard objectives add regulateZombieDiseaseEffects dummy

scoreboard objectives add slimeParasiteTime dummy
scoreboard objectives add pillagerParasiteTime dummy
scoreboard objectives add spiderParasiteTime dummy
scoreboard objectives add darkParasiteTime dummy
scoreboard objectives add diseaseSectionRegulator dummy

# Main

scoreboard players add @e[type=marker,tag=gstools_worker] diseaseSectionRegulator 1
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=20..20}] run function lifeanddeath:main_sub/47

execute as @e[type=marker,tag=gstools_worker,scores={averageTps=19..19,diseaseSectionRegulator=3..}] run scoreboard players set @s diseaseSectionRegulator 0
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=19..19,diseaseSectionRegulator=0..0}] run function lifeanddeath:main_sub/53
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=19..19,diseaseSectionRegulator=1..1}] run function lifeanddeath:main_sub/55

execute as @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=5..}] run scoreboard players set @s diseaseSectionRegulator 0
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=0..0}] run function lifeanddeath:disease/diseasea
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=1..1}] run function lifeanddeath:disease/diseaseb
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=2..2}] run function lifeanddeath:disease/diseasec
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=3..3}] run function lifeanddeath:disease/diseased

function lifeanddeath:medecine/main

scoreboard players add @e[tag=gstools_worker,type=marker] diseaseRegulatorA 1
execute as @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=2..}] run scoreboard players set @s diseaseRegulatorA 0

execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] run function lifeanddeath:main_sub/69

# Spreaders
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] run function lifeanddeath:main_sub/95

# Diseasereset
execute if entity @e[scores={timeOfDay=0..1},tag=gstools_worker,type=marker] run function lifeanddeath:main_sub/105
execute if entity @e[scores={timeOfDay=2..3},tag=gstools_worker,type=marker] run function lifeanddeath:main_sub/107
execute if entity @e[scores={timeOfDay=20..21},tag=gstools_worker,type=marker] run function lifeanddeath:main_sub/109

# Parasites
function lifeanddeath:version_conflict/infested_0

# execute as @e[sort=random,limit=20,type=slime] run effect give @s oozing infinite 1
# execute as @e[sort=random,limit=20,type=slime] at @s as @e[distance=0..1,type=!slime,type=!creeper] run effect give @s oozing 400 1
# execute as @e[sort=random,limit=20,type=slime] at @s as @e[distance=0..1,type=!slime,type=!creeper] run scoreboard players set @s slimeParasiteTime 8000

# execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..},type=!slime,type=!creeper] run effect give @s oozing 150 0
# execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..}] at @s as @e[distance=0.01..1,type=!creeper] run scoreboard players set @s slimeParasiteTime 8000
# execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..}] run scoreboard players remove @s slimeParasiteTime 1

# execute as @e[tag=!tile,sort=random,limit=1,nbt={active_effects:[{id:"minecraft:bad_omen"}]}] unless entity @s[scores={pillagerParasiteTime=-6000..}] run scoreboard players set @s pillagerParasiteTime 8000

# execute as @e[sort=random,limit=20,scores={pillagerParasiteTime=0..}] unless entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:raid_omen"}]}] run effect give @s minecraft:bad_omen 150 0
# execute as @e[sort=random,limit=20,scores={pillagerParasiteTime=-3000..}] at @s as @e[distance=0.01..1] run scoreboard players set @s pillagerParasiteTime 8000
# execute as @e[sort=random,limit=20,scores={pillagerParasiteTime=-6000..}] run scoreboard players remove @s pillagerParasiteTime 1

function lifeanddeath:version_conflict/weaving_0

execute as @e[sort=random,limit=20,type=warden] run function lifeanddeath:main_sub/131

execute as @e[sort=random,limit=20,scores={darkParasiteTime=0..}] run function lifeanddeath:main_sub/135

execute as @a[scores={death=1..}] run function lifeanddeath:main_sub/139

 
 