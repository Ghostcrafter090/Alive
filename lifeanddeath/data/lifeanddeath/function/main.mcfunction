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

# Main
function lifeanddeath:disease/diseasea
function lifeanddeath:disease/diseaseb
function lifeanddeath:disease/diseasec
function lifeanddeath:disease/diseased

function lifeanddeath:medecine/main

scoreboard players add @e[tag=gstools_worker,type=marker] diseaseRegulatorA 1
execute as @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=2..}] run scoreboard players set @s diseaseRegulatorA 0

execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_minact_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] slow_minact_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_max_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] slow_max_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_boolean = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] slow_boolean
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_minact_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] minf_minact_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_max_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] minf_max_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_boolean = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] minf_boolean
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_minact_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] nau_minact_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_max_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] nau_max_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_boolean = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] nau_boolean
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_minact_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] blin_minact_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_max_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] blin_max_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_boolean = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] blin_boolean
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_minact_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] hung_minact_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_max_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] hung_max_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_boolean = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] hung_boolean
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_minact_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] weak_minact_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_max_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] weak_max_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_boolean = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] weak_boolean
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_minact_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] poi_minact_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_max_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] poi_max_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_boolean = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] poi_boolean
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_minact_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] with_minact_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_max_tier = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] with_max_tier
execute if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=20,scores={hasDiseaseBoolean=1..2}] at @s as @e[distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_boolean = @e[distance=0..1,scores={hasDiseaseBoolean=1..2}] with_boolean

# Spreaders
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=zombie] run function lifeanddeath:disease/spreaders/zombie
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=drowned] run function lifeanddeath:disease/spreaders/drowned
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=husk] run function lifeanddeath:disease/spreaders/husk
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=wither] run function lifeanddeath:disease/spreaders/wither
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=wither_skull] run function lifeanddeath:disease/spreaders/witherskull
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=wither_skeleton] run function lifeanddeath:disease/spreaders/witherskele
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=zombified_piglin] run function lifeanddeath:disease/spreaders/zombiepig
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=zombie_villager] run function lifeanddeath:disease/spreaders/zombievill

# Diseasereset
execute if entity @e[scores={timeOfDay=0..1},tag=gstools_worker,type=marker] as @a run scoreboard players operation @s hasDiseaseBooleanD = @s hasDiseaseBoolean
execute if entity @e[scores={timeOfDay=0..1},tag=gstools_worker,type=marker] as @a run scoreboard players operation @s diseaseTime = @s diseaseTime
execute if entity @e[scores={timeOfDay=2..3},tag=gstools_worker,type=marker] run scoreboard objectives remove hasDiseaseBoolean
execute if entity @e[scores={timeOfDay=2..3},tag=gstools_worker,type=marker] run scoreboard objectives remove diseaseTime
execute if entity @e[scores={timeOfDay=20..21},tag=gstools_worker,type=marker] as @a run scoreboard players operation @s hasDiseaseBoolean = @s hasDiseaseBooleanD
execute if entity @e[scores={timeOfDay=20..21},tag=gstools_worker,type=marker] as @a run scoreboard players operation @s diseaseTime = @s diseaseTime

# Parasites
execute as @e[sort=random,limit=1,type=silverfish] run effect give @s infested infinite 1
execute as @e[sort=random,limit=20,type=silverfish] at @s as @e[tag=!tile,distance=0..1] run effect give @s infested 400 1

# execute as @e[sort=random,limit=20,type=slime] run effect give @s oozing infinite 1
# execute as @e[sort=random,limit=20,type=slime] at @s as @e[distance=0..1,type=!slime,type=!creeper] run effect give @s oozing 400 1
# execute as @e[sort=random,limit=20,type=slime] at @s as @e[distance=0..1,type=!slime,type=!creeper] run scoreboard players set @s slimeParasiteTime 8000

# execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..},type=!slime,type=!creeper] run effect give @s oozing 150 0
# execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..}] at @s as @e[distance=0.01..1,type=!creeper] run scoreboard players set @s slimeParasiteTime 8000
# execute as @e[sort=random,limit=20,scores={slimeParasiteTime=0..}] run scoreboard players remove @s slimeParasiteTime 1

execute as @e[sort=random,limit=1,nbt={active_effects:[{id:"minecraft:bad_omen"}]}] unless entity @s[scores={pillagerParasiteTime=-6000..}] run scoreboard players set @s pillagerParasiteTime 8000

execute as @e[sort=random,limit=20,scores={pillagerParasiteTime=0..}] unless entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:raid_omen"}]}] run effect give @s minecraft:bad_omen 150 0
execute as @e[sort=random,limit=20,scores={pillagerParasiteTime=-3000..}] at @s as @e[distance=0.01..1] run scoreboard players set @s pillagerParasiteTime 8000
execute as @e[sort=random,limit=20,scores={pillagerParasiteTime=-6000..}] run scoreboard players remove @s pillagerParasiteTime 1

execute as @e[sort=random,limit=20,type=cave_spider] run effect give @s weaving infinite 1
execute as @e[sort=random,limit=20,type=cave_spider] at @s as @e[tag=!tile,distance=0..1] run effect give @s weaving 400 1
execute as @e[sort=random,limit=20,type=cave_spider] at @s as @e[tag=!tile,distance=0..1] run scoreboard players set @s spiderParasiteTime 8000

execute as @e[sort=random,limit=20,scores={spiderParasiteTime=0..}] unless entity @s[nbt={active_effects:[{id:"minecraft:weaving"}]}] run effect give @s minecraft:weaving 150 0
execute as @e[sort=random,limit=20,scores={spiderParasiteTime=0..}] at @s as @e[distance=0.01..1] run scoreboard players set @s spiderParasiteTime 8000
execute as @e[sort=random,limit=20,scores={spiderParasiteTime=0..}] run scoreboard players remove @s spiderParasiteTime 1

execute as @e[sort=random,limit=20,type=warden] run effect give @s darkness infinite 1
execute as @e[sort=random,limit=20,type=warden] at @s as @e[tag=!tile,distance=0..1] run effect give @s darkness 400 1
execute as @e[sort=random,limit=20,type=warden] at @s as @e[tag=!tile,distance=0..1] run scoreboard players set @s darkParasiteTime 8000

execute as @e[sort=random,limit=20,scores={darkParasiteTime=0..}] unless entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run effect give @s minecraft:darkness 150 0
execute as @e[sort=random,limit=20,scores={darkParasiteTime=0..}] at @s as @e[distance=0.01..1] unless entity @s[scores={darkParasiteTime=0..}] run scoreboard players set @s darkParasiteTime 8000
execute as @e[sort=random,limit=20,scores={darkParasiteTime=0..}] run scoreboard players remove @s darkParasiteTime 1

execute as @a[scores={death=1..}] run scoreboard players set @s hasDiseaseBoolean 0
execute as @a[scores={death=1..}] run scoreboard players set @s diseaseTime 0
