# Define

# Main
execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,slow_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/slowness

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,minf_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/miningfat

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,nau_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/nausea
execute if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,nau_boolean=1..1}] run function lifeanddeath:disease/effecttypes/sound/gag

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,blin_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/blindness

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,hung_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/hunger
execute if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,hung_boolean=1..1}] run function lifeanddeath:disease/effecttypes/sound/vomit

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,weak_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/weakness
execute if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,weak_boolean=1..1}] run function lifeanddeath:disease/effecttypes/sound/cough

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,poi_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/poison
execute if entity @e[tag=is_human,scores={hasDiseaseBoolean=1..2,poi_boolean=1..1}] run function lifeanddeath:disease/effecttypes/sound/weaze

execute if entity @e[tag=!functional,scores={hasDiseaseBoolean=1..2,with_boolean=1..1}] run function lifeanddeath:disease/effecttypes/true/wither
function lifeanddeath:disease/effecttypes/sound/consumption

# Creative Reset
execute as @a[gamemode=creative] run function lifeanddeath:disease/diseasea_sub/25