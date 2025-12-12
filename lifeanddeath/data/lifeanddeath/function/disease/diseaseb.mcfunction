# Define
scoreboard objectives add diseaseTimeN dummy

# Main
execute as @a at @s as @e[tag=!functional,type=!zombie,scores={hasDiseaseBoolean=1..1,diseaseTime=8000..}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players set @s hasDiseaseBoolean 2
scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] diseaseTimeN 5

execute as @a at @s as @e[tag=!functional,type=!zombie,scores={hasDiseaseBoolean=1..1}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players add @s diseaseTime 1
execute as @a at @s as @e[tag=!functional,type=!zombie,scores={hasDiseaseBoolean=2..2}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players operation @s diseaseTime -= @e[tag=gstools_worker,type=marker,limit=1] diseaseTimeN
execute as @a at @s as @e[tag=!functional,type=!zombie,scores={hasDiseaseBoolean=1..2}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players add @s hasImmunityTime 1
execute as @a at @s as @e[tag=!functional,type=!zombie,scores={hasDiseaseBoolean=2..2,diseaseTime=..-6}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players set @s hasDiseaseBoolean 0
execute as @a at @s as @e[tag=!functional,type=!zombie,scores={hasImmunityTime=300..}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players set @s hasImmunityTime 240

execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={slow_minact_tier=-10..10}] run scoreboard players reset @s slow_minact_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={slow_boolean=-10..10}] run scoreboard players reset @s slow_boolean
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={slow_max_tier=-10..10}] run scoreboard players reset @s slow_max_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={minf_minact_tier=-10..10}] run scoreboard players reset @s minf_minact_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={minf_boolean=-10..10}] run scoreboard players reset @s minf_boolean
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={minf_max_tier=-10..10}] run scoreboard players reset @s minf_max_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={nau_minact_tier=-10..10}] run scoreboard players reset @s nau_minact_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={nau_boolean=-10..10}] run scoreboard players reset @s nau_boolean
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={nau_max_tier=-10..10}] run scoreboard players reset @s nau_max_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={blin_minact_tier=-10..10}] run scoreboard players reset @s blin_minact_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={blin_boolean=-10..10}] run scoreboard players reset @s blin_boolean
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={blin_max_tier=-10..10}] run scoreboard players reset @s blin_max_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={hung_minact_tier=-10..10}] run scoreboard players reset @s hung_minact_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={hung_boolean=-10..10}] run scoreboard players reset @s hung_boolean
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={hung_max_tier=-10..10}] run scoreboard players reset @s hung_max_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={weak_minact_tier=-10..10}] run scoreboard players reset @s weak_minact_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={weak_boolean=-10..10}] run scoreboard players reset @s weak_boolean
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={weak_max_tier=-10..10}] run scoreboard players reset @s weak_max_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={poi_minact_tier=-10..10}] run scoreboard players reset @s poi_minact_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={poi_boolean=-10..10}] run scoreboard players reset @s poi_boolean
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={poi_max_tier=-10..10}] run scoreboard players reset @s poi_max_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={with_minact_tier=-10..10}] run scoreboard players reset @s with_minact_tier
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={with_boolean=-10..10}] run scoreboard players reset @s with_boolean
execute as @e[tag=!functional,scores={diseaseTime=..-4,hasDiseaseBoolean=0..0}] if entity @s[scores={with_max_tier=-10..10}] run scoreboard players reset @s with_max_tier

# Spread
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_minact_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] slow_minact_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_max_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] slow_max_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_boolean = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] slow_boolean
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_minact_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] minf_minact_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_max_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] minf_max_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_boolean = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] minf_boolean
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_minact_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] nau_minact_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_max_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] nau_max_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_boolean = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] nau_boolean
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_minact_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] blin_minact_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_max_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] blin_max_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_boolean = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] blin_boolean
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_minact_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] hung_minact_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_max_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] hung_max_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_boolean = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] hung_boolean
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_minact_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] weak_minact_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_max_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] weak_max_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_boolean = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] weak_boolean
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_minact_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] poi_minact_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_max_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] poi_max_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_boolean = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] poi_boolean
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_minact_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] with_minact_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_max_tier = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] with_max_tier
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_boolean = @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=1..2}] with_boolean

execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1,scores={hasDiseaseBoolean=0..0}] run scoreboard players set @s hasDiseaseBoolean 1

execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={hasDiseaseBoolean=-10..10}] run scoreboard players set @s hasDiseaseBoolean 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={slow_minact_tier=-10..10}] run scoreboard players set @s slow_minact_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={slow_boolean=-10..10}] run scoreboard players set @s slow_boolean 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={slow_max_tier=-10..10}] run scoreboard players set @s slow_max_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={minf_minact_tier=-10..10}] run scoreboard players set @s minf_minact_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={minf_boolean=-10..10}] run scoreboard players set @s minf_boolean 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={minf_max_tier=-10..10}] run scoreboard players set @s minf_max_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={nau_minact_tier=-10..10}] run scoreboard players set @s nau_minact_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={nau_boolean=-10..10}] run scoreboard players set @s nau_boolean 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={nau_max_tier=-10..10}] run scoreboard players set @s nau_max_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={blin_minact_tier=-10..10}] run scoreboard players set @s blin_minact_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={blin_boolean=-10..10}] run scoreboard players set @s blin_boolean 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={blin_max_tier=-10..10}] run scoreboard players set @s blin_max_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={hung_minact_tier=-10..10}] run scoreboard players set @s hung_minact_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={hung_boolean=-10..10}] run scoreboard players set @s hung_boolean 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={hung_max_tier=-10..10}] run scoreboard players set @s hung_max_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={weak_minact_tier=-10..10}] run scoreboard players set @s weak_minact_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={weak_boolean=-10..10}] run scoreboard players set @s weak_boolean 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={weak_max_tier=-10..10}] run scoreboard players set @s weak_max_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={poi_minact_tier=-10..10}] run scoreboard players set @s poi_minact_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={poi_boolean=-10..10}] run scoreboard players set @s poi_boolean 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={poi_max_tier=-10..10}] run scoreboard players set @s poi_max_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={with_minact_tier=-10..10}] run scoreboard players set @s with_minact_tier 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={with_boolean=-10..10}] run scoreboard players set @s with_boolean 0
execute as @e[tag=!functional,scores={hasDiseaseBoolean=1..2}] at @s as @e[tag=!functional,distance=0..1] unless entity @s[scores={with_max_tier=-10..10}] run scoreboard players set @s with_max_tier 0

execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s hasDiseaseBoolean 1
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s hung_boolean 1
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s poi_boolean 1
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s weak_boolean 1
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s hung_max_tier 2
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s weak_max_tier 1
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s poi_max_tier 1
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s hung_minact_tier 1
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s weak_minact_tier 3
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s poi_minact_tier 4
execute as @a[scores={hasEatenRottingFlesh=1..}] run scoreboard players set @s hasEatenRottingFlesh 0

scoreboard players set @a regulateZombieDiseaseEffects 4
scoreboard objectives add regulateZombieDiseaseEffects dummy
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=zombie] run function lifeanddeath:disease/spreaders/zombie