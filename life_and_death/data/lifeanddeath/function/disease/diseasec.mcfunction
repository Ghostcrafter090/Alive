# Define

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={random100=11..15}] if entity @e[type=drowned,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/drowned 15t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={random100=16..20}] if entity @e[type=husk,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/husk 16t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={random100=21..25}] if entity @e[type=wither,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/wither 17t append
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] if entity @a[scores={random100=26..30}] if entity @e[type=wither_skull,limit=3,sort=random] run schedule function lifeanddeath:disease/spreaders/witherskull 18t append

execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] run function lifeanddeath:disease/version_conflict/bogged_0
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] run function lifeanddeath:disease/version_conflict/parched_0
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] run function lifeanddeath:disease/version_conflict/zombie_nautilus_0
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] run function lifeanddeath:disease/version_conflict/camel_husk_0

