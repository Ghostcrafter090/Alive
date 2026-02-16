# Define
scoreboard objectives add attackPortalSpawnTic dummy
scoreboard objectives add numberOfOverworldNetherMobs dummy

# Main
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=10,sort=random] run scoreboard players add @s attackPortalSpawnTic 1
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] run function gstools:util/random
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] if entity @s[scores={random100=0..40}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon piglin ~1 ~ ~1 {PersistenceRequired:1b}
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] if entity @s[scores={random100=40..60}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon hoglin ~1 ~ ~1 {PersistenceRequired:1b}
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] if entity @s[scores={random100=60..70}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon blaze ~1 ~ ~1 {PersistenceRequired:1b}
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] if entity @s[scores={random100=70..80}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon magma_cube ~1 ~ ~1 {PersistenceRequired:1b}
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] if entity @s[scores={random100=80..85}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon piglin_brute ~1 ~ ~ {PersistenceRequired:1b}
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] if entity @s[scores={random100=85..88}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] at @s run summon ghast ~ ~10 ~ {PersistenceRequired:1b}
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] run function gstools:util/random
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..65}] if entity @s[scores={random100=50..}] run scoreboard players set @s attackPortalSpawnTic 898
execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=900..}] run scoreboard players set @s attackPortalSpawnTic 0

scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] numberOfOverworldNetherMobs 0
execute as @e[tag=nether] run scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] numberOfOverworldNetherMobs 1

