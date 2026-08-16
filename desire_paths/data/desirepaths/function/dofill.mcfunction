execute unless entity @e[type=marker,tag=gstools_worker,scores={desirePaths_enablePermanentPaths=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={blockDecayLoaded=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={random100=..10}] run fill ~ ~-0.5 ~ ~ ~-1 ~ mud replace farmland
execute if entity @e[type=marker,tag=gstools_worker,scores={desirePaths_enablePermanentPaths=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={blockDecayLoaded=1..1}] if entity @e[tag=gstools_worker,type=marker,scores={random100=..10}] run fill ~ ~-0.5 ~ ~ ~-1 ~ mud replace grass_path

execute unless entity @e[type=marker,tag=gstools_worker,scores={desirePaths_enablePermanentPaths=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={blockDecayLoaded=1..1}] run fill ~ ~-0.5 ~ ~ ~-1 ~ farmland replace packed_mud
execute if entity @e[type=marker,tag=gstools_worker,scores={desirePaths_enablePermanentPaths=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={blockDecayLoaded=1..1}] run fill ~ ~-0.5 ~ ~ ~-1 ~ grass_path replace packed_mud

execute if entity @e[type=marker,tag=gstools_worker,scores={blockDecayLoaded=1..1}] run fill ~ ~-0.5 ~ ~ ~-1 ~ packed_mud replace dirt

execute unless entity @e[type=marker,tag=gstools_worker,scores={desirePaths_enablePermanentPaths=1..1}] unless entity @e[type=marker,tag=gstools_worker,scores={blockDecayLoaded=1..1}] run fill ~ ~-0.5 ~ ~ ~-1 ~ farmland replace dirt
execute if entity @e[type=marker,tag=gstools_worker,scores={desirePaths_enablePermanentPaths=1..1}] unless entity @e[type=marker,tag=gstools_worker,scores={blockDecayLoaded=1..1}] run fill ~ ~-0.5 ~ ~ ~-1 ~ grass_path replace dirt

fill ~ ~-0.5 ~ ~ ~-1 ~ dirt replace grass_block

fill ~ ~-0.5 ~ ~ ~-1 ~ dirt replace mycelium

execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..20}] if block ~ ~-1 ~ ice run playsound block.glass.break block @a ~ ~ ~ 1 0.5
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..20}] run fill ~ ~-0.5 ~ ~ ~-1 ~ water replace ice

execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..20}] run fill ~ ~-0.5 ~ ~ ~-1 ~ ice replace packed_ice
execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..20}] run fill ~ ~-0.5 ~ ~ ~-1 ~ packed_ice replace blue_ice

execute if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say Path Filled!