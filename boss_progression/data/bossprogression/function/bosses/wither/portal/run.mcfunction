# Define
scoreboard objectives add attackPortalSpawnTic dummy
scoreboard objectives add numberOfOverworldNetherMobs dummy

# Main
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=10,sort=random] run scoreboard players add @s attackPortalSpawnTic 1
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] run function gstools:util/random
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=0..50}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon piglin ~1 ~ ~2
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=50..70}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon hoglin ~1 ~ ~2
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=70..80}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon blaze ~1 ~ ~2
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=80..90}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon magma_cube ~1 ~ ~2
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=90..95}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon piglin_brute ~1 ~ ~2
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=95..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon ghast ~ ~10 ~
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] run function gstools:util/random
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] if entity @s[scores={random100=..85}] run scoreboard players set @s attackPortalSpawnTic 298
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] run scoreboard players set @s attackPortalSpawnTic 0

scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] numberOfOverworldNetherMobs 0
execute as @e[tag=nether] at @s if dimension overworld run scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] numberOfOverworldNetherMobs 1

