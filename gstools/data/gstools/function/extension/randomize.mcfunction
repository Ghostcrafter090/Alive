# Define

# Main
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsDesirePathsWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsDynamicMonstersWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsDynamicDirtWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsBlockDecayWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsDynamicEcosystemsWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsEnhancedSurvivalWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsLifeAndDeathWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsBossProgressionWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsGothicHorrorWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsUndeadExpandedWorkerMultTen += @s randomQuadroupleNegate
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s averageTpsGhostsAndGhoulsWorkerMultTen += @s randomQuadroupleNegate

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDesirePaths=..1}] run scoreboard players set @s averageTpsDesirePathsWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDesirePaths=..1}] run scoreboard players set @s averageTpsDesirePaths 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicMonsters=..1}] run scoreboard players set @s averageTpsDynamicMonstersWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicMonsters=..1}] run scoreboard players set @s averageTpsDynamicMonsters 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicDirt=..1}] run scoreboard players set @s averageTpsDynamicDirtWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicDirt=..1}] run scoreboard players set @s averageTpsDynamicDirt 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsBlockDecay=..1}] run scoreboard players set @s averageTpsBlockDecayWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsBlockDecay=..1}] run scoreboard players set @s averageTpsBlockDecay 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicEcosystems=..1}] run scoreboard players set @s averageTpsDynamicEcosystemsWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicEcosystems=..1}] run scoreboard players set @s averageTpsDynamicEcosystems 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsEnhancedSurvival=..1}] run scoreboard players set @s averageTpsEnhancedSurvivalWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsEnhancedSurvival=..1}] run scoreboard players set @s averageTpsEnhancedSurvival 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsLifeAndDeath=..1}] run scoreboard players set @s averageTpsLifeAndDeathWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsLifeAndDeath=..1}] run scoreboard players set @s averageTpsLifeAndDeath 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsBossProgression=..1}] run scoreboard players set @s averageTpsBossProgressionWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsBossProgression=..1}] run scoreboard players set @s averageTpsBossProgression 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsGothicHorror=..1}] run scoreboard players set @s averageTpsGothicHorrorWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsGothicHorror=..1}] run scoreboard players set @s averageTpsGothicHorror 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsUndeadExpanded=..1}] run scoreboard players set @s averageTpsUndeadExpandedWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsUndeadExpanded=..1}] run scoreboard players set @s averageTpsUndeadExpanded 10

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsGhostsAndGhouls=..1}] run scoreboard players set @s averageTpsGhostsAndGhoulsWorkerMultTen 300
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsGhostsAndGhouls=..1}] run scoreboard players set @s averageTpsGhostsAndGhouls 10
