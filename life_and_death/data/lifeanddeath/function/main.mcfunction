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
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=20..20}] run schedule function lifeanddeath:disease/diseasea 1t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=20..20}] run schedule function lifeanddeath:disease/diseaseb 2t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=20..20}] run schedule function lifeanddeath:disease/diseasec 3t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=20..20}] run schedule function lifeanddeath:disease/diseased 4t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[type=marker,tag=gstools_worker,scores={averageTps=19..19,diseaseSectionRegulator=3..}] run scoreboard players set @s diseaseSectionRegulator 0
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=19..19,diseaseSectionRegulator=0..0}] run schedule function lifeanddeath:disease/diseasea 5t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=19..19,diseaseSectionRegulator=0..0}] run schedule function lifeanddeath:disease/diseaseb 6t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=19..19,diseaseSectionRegulator=1..1}] run schedule function lifeanddeath:disease/diseasec 7t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=19..19,diseaseSectionRegulator=1..1}] run schedule function lifeanddeath:disease/diseased 8t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=5..}] run scoreboard players set @s diseaseSectionRegulator 0
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=0..0}] run schedule function lifeanddeath:disease/diseasea 9t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=1..1}] run schedule function lifeanddeath:disease/diseaseb 10t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=2..2}] run schedule function lifeanddeath:disease/diseasec 11t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={averageTps=..18,diseaseSectionRegulator=3..3}] run schedule function lifeanddeath:disease/diseased 12t append

schedule function lifeanddeath:medecine/main 13t

scoreboard players add @e[tag=gstools_worker,type=marker] diseaseRegulatorA 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=2..}] run scoreboard players set @s diseaseRegulatorA 0

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_minact_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] slow_minact_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_max_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] slow_max_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_boolean = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] slow_boolean
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_minact_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] minf_minact_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_max_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] minf_max_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_boolean = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] minf_boolean
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_minact_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] nau_minact_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_max_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] nau_max_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_boolean = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] nau_boolean
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_minact_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] blin_minact_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_max_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] blin_max_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_boolean = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] blin_boolean
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_minact_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] hung_minact_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_max_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] hung_max_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_boolean = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] hung_boolean
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_minact_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] weak_minact_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_max_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] weak_max_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_boolean = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] weak_boolean
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_minact_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] poi_minact_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_max_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] poi_max_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_boolean = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] poi_boolean
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_minact_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] with_minact_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_max_tier = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] with_max_tier
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={diseaseRegulatorA=1..1}] as @e[sort=random,limit=5,scores={hasDiseaseBoolean=1..2}] at @s as @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_boolean = @e[limit=1,sort=nearest,distance=0..1,scores={hasDiseaseBoolean=1..2}] with_boolean

# Spreaders
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=zombie,limit=1] run schedule function lifeanddeath:disease/spreaders/zombie 14t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=drowned,limit=1] run schedule function lifeanddeath:disease/spreaders/drowned 15t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=husk,limit=1] run schedule function lifeanddeath:disease/spreaders/husk 16t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=wither,limit=1] run schedule function lifeanddeath:disease/spreaders/wither 17t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=wither_skull,limit=1] run schedule function lifeanddeath:disease/spreaders/witherskull 18t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=wither_skeleton,limit=1] run schedule function lifeanddeath:disease/spreaders/witherskele 19t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=zombified_piglin,limit=1] run schedule function lifeanddeath:disease/spreaders/zombiepig 20t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=zombie_villager,limit=1] run schedule function lifeanddeath:disease/spreaders/zombievill 21t append

# Diseasereset
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[scores={timeOfDay=0..1},tag=gstools_worker,type=marker] as @a run scoreboard players operation @s hasDiseaseBooleanD = @s hasDiseaseBoolean
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[scores={timeOfDay=0..1},tag=gstools_worker,type=marker] as @a run scoreboard players operation @s diseaseTime = @s diseaseTime
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[scores={timeOfDay=2..3},tag=gstools_worker,type=marker] run scoreboard objectives remove hasDiseaseBoolean
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[scores={timeOfDay=2..3},tag=gstools_worker,type=marker] run scoreboard objectives remove diseaseTime
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[scores={timeOfDay=20..21},tag=gstools_worker,type=marker] as @a run scoreboard players operation @s hasDiseaseBoolean = @s hasDiseaseBooleanD
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[scores={timeOfDay=20..21},tag=gstools_worker,type=marker] as @a run scoreboard players operation @s diseaseTime = @s diseaseTime

# Parasites
schedule function lifeanddeath:version_conflict/infested_0 22t append

# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,type=slime] run effect give @s oozing infinite 1
# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,type=slime] at @s as @e[limit=1,sort=nearest,distance=0..1,type=!slime,type=!creeper] run effect give @s oozing 400 1
# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,type=slime] at @s as @e[limit=1,sort=nearest,distance=0..1,type=!slime,type=!creeper] run scoreboard players set @s slimeParasiteTime 8000

# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,scores={slimeParasiteTime=0..},type=!slime,type=!creeper] run effect give @s oozing 150 0
# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,scores={slimeParasiteTime=0..}] at @s as @e[distance=0.01..1,type=!creeper] run scoreboard players set @s slimeParasiteTime 8000
# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,scores={slimeParasiteTime=0..}] run scoreboard players remove @s slimeParasiteTime 1

# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[tag=!tile,sort=random,limit=1,nbt={active_effects:[{id:"minecraft:bad_omen"}]}] unless entity @s[scores={pillagerParasiteTime=-6000..}] run scoreboard players set @s pillagerParasiteTime 8000

# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,scores={pillagerParasiteTime=0..}] unless entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:raid_omen"}]}] run effect give @s minecraft:bad_omen 150 0
# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,scores={pillagerParasiteTime=-3000..}] at @s as @e[distance=0.01..1] run scoreboard players set @s pillagerParasiteTime 8000
# execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,scores={pillagerParasiteTime=-6000..}] run scoreboard players remove @s pillagerParasiteTime 1

schedule function lifeanddeath:version_conflict/weaving_0 23t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,type=warden] run effect give @s darkness infinite 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,type=warden] at @s as @e[type=!warden,tag=!tile,limit=1,sort=nearest,distance=0..1] run effect give @s darkness 400 1
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,type=warden] at @s as @e[type=!warden,tag=!tile,limit=1,sort=nearest,distance=0..1] run scoreboard players set @s darkParasiteTime 8000

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,scores={darkParasiteTime=0..}] unless entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run effect give @s minecraft:darkness 150 0
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,scores={darkParasiteTime=0..}] at @s as @e[distance=0.01..1] unless entity @s[scores={darkParasiteTime=0..}] run scoreboard players set @s darkParasiteTime 8000
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @e[sort=random,limit=20,scores={darkParasiteTime=0..}] run scoreboard players remove @s darkParasiteTime 1