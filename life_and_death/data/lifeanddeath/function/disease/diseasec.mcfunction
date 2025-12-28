# Define

# Main
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=drowned,limit=3,sort=random] run function lifeanddeath:disease/spreaders/drowned
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=husk,limit=3,sort=random] run function lifeanddeath:disease/spreaders/husk
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=wither,limit=3,sort=random] run function lifeanddeath:disease/spreaders/wither
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] if entity @e[type=wither_skull,limit=3,sort=random] run function lifeanddeath:disease/spreaders/witherskull
function lifeanddeath:disease/version_conflict/bogged_0
function lifeanddeath:disease/version_conflict/parched_0
function lifeanddeath:disease/version_conflict/zombie_nautilus_0
function lifeanddeath:disease/version_conflict/camel_husk_0

