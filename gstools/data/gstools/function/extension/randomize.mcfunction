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

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDesirePaths=..1}] run scoreboard players set @s averageTpsDesirePathsWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDesirePaths=..1}] run scoreboard players set @s averageTpsDesirePaths 20

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicMonsters=..1}] run scoreboard players set @s averageTpsDynamicMonstersWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicMonsters=..1}] run scoreboard players set @s averageTpsDynamicMonsters 20

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicDirt=..1}] run scoreboard players set @s averageTpsDynamicDirtWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicDirt=..1}] run scoreboard players set @s averageTpsDynamicDirt 20

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsBlockDecay=..1}] run scoreboard players set @s averageTpsBlockDecayWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsBlockDecay=..1}] run scoreboard players set @s averageTpsBlockDecay 20

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicEcosystems=..1}] run scoreboard players set @s averageTpsDynamicEcosystemsWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsDynamicEcosystems=..1}] run scoreboard players set @s averageTpsDynamicEcosystems 20

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsEnhancedSurvival=..1}] run scoreboard players set @s averageTpsEnhancedSurvivalWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsEnhancedSurvival=..1}] run scoreboard players set @s averageTpsEnhancedSurvival 20

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsLifeAndDeath=..1}] run scoreboard players set @s averageTpsLifeAndDeathWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsLifeAndDeath=..1}] run scoreboard players set @s averageTpsLifeAndDeath 20

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsBossProgression=..1}] run scoreboard players set @s averageTpsBossProgressionWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsBossProgression=..1}] run scoreboard players set @s averageTpsBossProgression 20

execute as @e[tag=gstools_worker,type=marker,scores={averageTpsGothicHorror=..1}] run scoreboard players set @s averageTpsGothicHorrorWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={averageTpsGothicHorror=..1}] run scoreboard players set @s averageTpsGothicHorror 20
