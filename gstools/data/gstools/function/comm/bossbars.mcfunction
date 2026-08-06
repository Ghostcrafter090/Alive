# Define
bossbar add block_decay_tps "Average Tps Block Decay"
bossbar add boss_progression_tps "Average Tps Boss Progression"
bossbar add desire_paths_tps "Average Tps Desire Paths"
bossbar add dynamic_dirt_tps "Average Tps Dynamic Dirt"
bossbar add dynamic_ecosystems_tps "Average Tps Dynamic Ecosystems"
bossbar add dynamic_monsters_tps "Average Tps Dynamic Monsters"
bossbar add enhanced_survival_tps "Average Tps Enhanced Survival"
bossbar add gothic_horror_tps "Average Tps Gothic Horror"
bossbar add life_and_death_tps "Average Tps Life And Death"
bossbar add all_tps "Average Tps All"

bossbar set block_decay_tps max 200
bossbar set boss_progression_tps max 200
bossbar set desire_paths_tps max 200
bossbar set dynamic_dirt_tps max 200
bossbar set dynamic_ecosystems_tps max 200
bossbar set dynamic_monsters_tps max 200
bossbar set enhanced_survival_tps max 200
bossbar set gothic_horror_tps max 200
bossbar set life_and_death_tps max 200
bossbar set all_tps max 200

bossbar set block_decay_tps players @a
bossbar set boss_progression_tps players @a
bossbar set desire_paths_tps players @a
bossbar set dynamic_dirt_tps players @a
bossbar set dynamic_ecosystems_tps players @a
bossbar set dynamic_monsters_tps players @a
bossbar set enhanced_survival_tps players @a
bossbar set gothic_horror_tps players @a
bossbar set life_and_death_tps players @a
bossbar set all_tps players @a

execute if entity @e[scores={averageTpsBlockDecayWorkerMultTen=350..}] run bossbar set block_decay_tps color green
execute if entity @e[scores={averageTpsBossProgressionWorkerMultTen=350..}] run bossbar set boss_progression_tps color green
execute if entity @e[scores={averageTpsDesirePathsWorkerMultTen=350..}] run bossbar set desire_paths_tps color green
execute if entity @e[scores={averageTpsDynamicDirtWorkerMultTen=350..}] run bossbar set dynamic_dirt_tps color green
execute if entity @e[scores={averageTpsDynamicEcosystemsWorkerMultTen=350..}] run bossbar set dynamic_ecosystems_tps color green
execute if entity @e[scores={averageTpsDynamicMonstersWorkerMultTen=350..}] run bossbar set dynamic_monsters_tps color green
execute if entity @e[scores={averageTpsEnhancedSurvivalWorkerMultTen=350..}] run bossbar set enhanced_survival_tps color green
execute if entity @e[scores={averageTpsGothicHorrorWorkerMultTen=350..}] run bossbar set gothic_horror_tps color green
execute if entity @e[scores={averageTpsLifeAndDeathWorkerMultTen=350..}] run bossbar set life_and_death_tps color green
execute if entity @e[scores={averageTpsWorkerMultTen=350..}] run bossbar set all_tps color green


execute if entity @e[scores={averageTpsBlockDecayWorkerMultTen=300..349}] run bossbar set block_decay_tps color yellow
execute if entity @e[scores={averageTpsBossProgressionWorkerMultTen=300..349}] run bossbar set boss_progression_tps color yellow
execute if entity @e[scores={averageTpsDesirePathsWorkerMultTen=300..349}] run bossbar set desire_paths_tps color yellow
execute if entity @e[scores={averageTpsDynamicDirtWorkerMultTen=300..349}] run bossbar set dynamic_dirt_tps color yellow
execute if entity @e[scores={averageTpsDynamicEcosystemsWorkerMultTen=300..349}] run bossbar set dynamic_ecosystems_tps color yellow
execute if entity @e[scores={averageTpsDynamicMonstersWorkerMultTen=300..349}] run bossbar set dynamic_monsters_tps color yellow
execute if entity @e[scores={averageTpsEnhancedSurvivalWorkerMultTen=300..349}] run bossbar set enhanced_survival_tps color yellow
execute if entity @e[scores={averageTpsGothicHorrorWorkerMultTen=300..349}] run bossbar set gothic_horror_tps color yellow
execute if entity @e[scores={averageTpsLifeAndDeathWorkerMultTen=300..349}] run bossbar set life_and_death_tps color yellow
execute if entity @e[scores={averageTpsWorkerMultTen=300..349}] run bossbar set all_tps color yellow

execute if entity @e[scores={averageTpsBlockDecayWorkerMultTen=260..299}] run bossbar set block_decay_tps color red
execute if entity @e[scores={averageTpsBossProgressionWorkerMultTen=260..299}] run bossbar set boss_progression_tps color red
execute if entity @e[scores={averageTpsDesirePathsWorkerMultTen=260..299}] run bossbar set desire_paths_tps color red
execute if entity @e[scores={averageTpsDynamicDirtWorkerMultTen=260..299}] run bossbar set dynamic_dirt_tps color red
execute if entity @e[scores={averageTpsDynamicEcosystemsWorkerMultTen=260..299}] run bossbar set dynamic_ecosystems_tps color red
execute if entity @e[scores={averageTpsDynamicMonstersWorkerMultTen=260..299}] run bossbar set dynamic_monsters_tps color red
execute if entity @e[scores={averageTpsEnhancedSurvivalWorkerMultTen=260..299}] run bossbar set enhanced_survival_tps color red
execute if entity @e[scores={averageTpsGothicHorrorWorkerMultTen=260..299}] run bossbar set gothic_horror_tps color red
execute if entity @e[scores={averageTpsLifeAndDeathWorkerMultTen=260..299}] run bossbar set life_and_death_tps color red
execute if entity @e[scores={averageTpsWorkerMultTen=260..299}] run bossbar set all_tps color red

execute if entity @e[scores={averageTpsBlockDecayWorkerMultTen=..259}] run bossbar set block_decay_tps color purple
execute if entity @e[scores={averageTpsBossProgressionWorkerMultTen=..259}] run bossbar set boss_progression_tps color purple
execute if entity @e[scores={averageTpsDesirePathsWorkerMultTen=..259}] run bossbar set desire_paths_tps color purple
execute if entity @e[scores={averageTpsDynamicDirtWorkerMultTen=..259}] run bossbar set dynamic_dirt_tps color purple
execute if entity @e[scores={averageTpsDynamicEcosystemsWorkerMultTen=..259}] run bossbar set dynamic_ecosystems_tps color purple
execute if entity @e[scores={averageTpsDynamicMonstersWorkerMultTen=..259}] run bossbar set dynamic_monsters_tps color purple
execute if entity @e[scores={averageTpsEnhancedSurvivalWorkerMultTen=..259}] run bossbar set enhanced_survival_tps color purple
execute if entity @e[scores={averageTpsGothicHorrorWorkerMultTen=..259}] run bossbar set gothic_horror_tps color purple
execute if entity @e[scores={averageTpsLifeAndDeathWorkerMultTen=..259}] run bossbar set life_and_death_tps color purple
execute if entity @e[scores={averageTpsWorkerMultTen=..259}] run bossbar set all_tps color purple

execute if entity @e[scores={doRunBlockDecay=1..1}] run bossbar set block_decay_tps color green
execute if entity @e[scores={doRunBossProgression=1..1}] run bossbar set boss_progression_tps color green
execute if entity @e[scores={doRunDesirePaths=1..1}] run bossbar set desire_paths_tps color green
execute if entity @e[scores={doRunDynamicDirt=1..1}] run bossbar set dynamic_dirt_tps color green
execute if entity @e[scores={doRunDynamicEcosystems=1..1}] run bossbar set dynamic_ecosystems_tps color green
execute if entity @e[scores={doRunDynamicMonsters=1..1}] run bossbar set dynamic_monsters_tps color green
execute if entity @e[scores={doRunEnhancedSurvival=1..1}] run bossbar set enhanced_survival_tps color green
execute if entity @e[scores={doRunGothicHorror=1..1}] run bossbar set gothic_horror_tps color green
execute if entity @e[scores={doRunLifeAndDeath=1..1}] run bossbar set life_and_death_tps color green
execute if entity @e[scores={doRun=1..1}] run bossbar set all_tps color green

scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsBlockDecayWorkerMultTen 200
scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsBossProgressionWorkerMultTen 200
scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsDesirePathsWorkerMultTen 200
scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsDynamicDirtWorkerMultTen 200
scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsDynamicEcosystemsWorkerMultTen 200
scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsDynamicMonstersWorkerMultTen 200
scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsEnhancedSurvivalWorkerMultTen 200
scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsGothicHorrorWorkerMultTen 200
scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsLifeAndDeathWorkerMultTen 200
scoreboard players remove @e[tag=gstools_worker,type=marker,limit=1] averageTpsWorkerMultTen 200


execute store result bossbar minecraft:block_decay_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsBlockDecayWorkerMultTen
execute store result bossbar minecraft:boss_progression_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsBossProgressionWorkerMultTen
execute store result bossbar minecraft:desire_paths_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsDesirePathsWorkerMultTen
execute store result bossbar minecraft:dynamic_dirt_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsDynamicDirtWorkerMultTen
execute store result bossbar minecraft:dynamic_ecosystems_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsDynamicEcosystemsWorkerMultTen
execute store result bossbar minecraft:dynamic_monsters_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsDynamicMonstersWorkerMultTen
execute store result bossbar minecraft:enhanced_survival_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsEnhancedSurvivalWorkerMultTen
execute store result bossbar minecraft:gothic_horror_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsGothicHorrorWorkerMultTen
execute store result bossbar minecraft:life_and_death_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsLifeAndDeathWorkerMultTen
execute store result bossbar minecraft:all_tps value run scoreboard players get @e[tag=gstools_worker,type=marker,limit=1] averageTpsWorkerMultTen

scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsBlockDecayWorkerMultTen 200
scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsBossProgressionWorkerMultTen 200
scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsDesirePathsWorkerMultTen 200
scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsDynamicDirtWorkerMultTen 200
scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsDynamicEcosystemsWorkerMultTen 200
scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsDynamicMonstersWorkerMultTen 200
scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsEnhancedSurvivalWorkerMultTen 200
scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsGothicHorrorWorkerMultTen 200
scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsLifeAndDeathWorkerMultTen 200
scoreboard players add @e[tag=gstools_worker,type=marker,limit=1] averageTpsWorkerMultTen 200