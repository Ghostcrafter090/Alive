# Define

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,slow_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/slowness 1t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,minf_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/miningfat 2t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,nau_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/nausea 3t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,nau_boolean=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableVomitingSound=1..1}] run schedule function lifeanddeath:disease/effecttypes/sound/gag 4t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,blin_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/blindness 5t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,hung_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/hunger 6t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,hung_boolean=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableVomitingSound=1..1}] run schedule function lifeanddeath:disease/effecttypes/sound/vomit 7t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,weak_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/weakness 8t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,weak_boolean=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableCoughingSound=1..1}] run schedule function lifeanddeath:disease/effecttypes/sound/cough 9t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,poi_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/poison 10t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,poi_boolean=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableCoughingSound=1..1}] run schedule function lifeanddeath:disease/effecttypes/sound/weaze 11t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,with_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/wither 12t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableCoughingSound=1..1}] run schedule function lifeanddeath:disease/effecttypes/sound/consumption 13t append

# Creative Reset
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @a[gamemode=creative] run scoreboard players set @s hasDiseaseBoolean 0
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] as @a[gamemode=creative] run scoreboard players set @s diseaseTime -25