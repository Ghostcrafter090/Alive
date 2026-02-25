# Define

# Main
execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,slow_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/slowness 1t append

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,minf_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/miningfat 2t append

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,nau_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/nausea 3t append
execute if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,nau_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/sound/gag 4t append

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,blin_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/blindness 5t append

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,hung_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/hunger 6t append
execute if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,hung_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/sound/vomit 7t append

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,weak_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/weakness 8t append
execute if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,weak_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/sound/cough 9t append

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,poi_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/poison 10t append
execute if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,poi_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/sound/weaze 11t append

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,with_boolean=1..1}] run schedule function lifeanddeath:disease/effecttypes/true/wither 12t append
schedule function lifeanddeath:disease/effecttypes/sound/consumption 13t append

# Creative Reset
execute as @a[gamemode=creative] run scoreboard players set @s hasDiseaseBoolean 0
execute as @a[gamemode=creative] run scoreboard players set @s diseaseTime -25