# Define
scoreboard objectives add attackPortalSpawnTic dummy
scoreboard objectives add numberOfOverworldNetherMobs dummy

# Main
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=10,sort=random] run scoreboard players add @s attackPortalSpawnTic 1
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..165}] run function gstools:util/random
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=0..50}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..165}] at @s run summon piglin ~1 ~1 ~2
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=50..70}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..165}] at @s run summon hoglin ~1 ~1 ~2
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=70..80}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..165}] at @s run summon blaze ~1 ~1 ~2
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=80..90}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..165}] at @s run summon magma_cube ~1 ~1 ~2
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=90..95}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..165}] at @s run summon piglin_brute ~1 ~1 ~2
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @s[scores={random100=95..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..165}] at @s run summon ghast ~ ~10 ~

execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] at @s in overworld run tag @e[type=piglin,sort=nearest,tag=!nether_overworld,distance=0..] add nether_overworld
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] at @s in overworld run tag @e[type=hoglin,sort=nearest,tag=!nether_overworld,distance=0..] add nether_overworld
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] at @s in overworld run tag @e[type=blaze,sort=nearest,tag=!nether_overworld,distance=0..] add nether_overworld
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] at @s in overworld run tag @e[type=magma_cube,sort=nearest,tag=!nether_overworld,distance=0..] add nether_overworld
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] at @s in overworld run tag @e[type=piglin_brute,sort=nearest,tag=!nether_overworld,distance=0..] add nether_overworld
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] at @s in overworld run tag @e[type=ghast,sort=nearest,tag=!nether_overworld,distance=0..] add nether_overworld

execute in the_nether as @e[tag=nether_overworld] run effect give @s wither 10 2 true
execute in the_nether as @e[tag=nether_overworld] run effect give @s wither 10 2 true

execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..165}] run function gstools:util/random
execute as @e[tag=attack_portal_node,type=marker,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] if entity @e[tag=gstools_worker,type=marker,limit=1,scores={numberOfOverworldNetherMobs=..165}] if entity @s[scores={random100=..85}] run scoreboard players set @s attackPortalSpawnTic 298

execute as @e[tag=attack_portal_node,type=marker] at @s run spreadplayers ~ ~ 1 10 false @e[tag=nether_overworld,distance=0..4]

execute as @e[tag=attack_portal_node,tag=portal_generated,limit=1,sort=random,scores={attackPortalSpawnTic=300..}] run scoreboard players set @s attackPortalSpawnTic 0

scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] numberOfOverworldNetherMobs 0
execute as @e[tag=nether] at @s if dimension overworld run scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] numberOfOverworldNetherMobs 1

