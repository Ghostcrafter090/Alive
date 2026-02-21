scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTpsDesirePaths
function gstools:extension/dorunmath
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicDesirePaths += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTicDesirePaths=20..}] run scoreboard players set @s doRunDesirePaths 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTicDesirePaths=20..}] run scoreboard players set @s globalTicDesirePaths 0

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTpsBlockDecay
function gstools:extension/dorunmath
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicBlockDecay += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTicBlockDecay=20..}] run scoreboard players set @s doRunBlockDecay 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTicBlockDecay=20..}] run scoreboard players set @s globalTicBlockDecay 0

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTpsDynamicDirt
function gstools:extension/dorunmath
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicDynamicDirt += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTicDynamicDirt=20..}] run scoreboard players set @s doRunDynamicDirt 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTicDynamicDirt=20..}] run scoreboard players set @s globalTicDynamicDirt 0

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTpsDynamicEcosystems
function gstools:extension/dorunmath
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicDynamicEcosystems += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTicDynamicEcosystems=20..}] run scoreboard players set @s doRunDynamicEcosystems 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTicDynamicEcosystems=20..}] run scoreboard players set @s globalTicDynamicEcosystems 0

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTpsEnhancedSurvival
function gstools:extension/dorunmath
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicEnhancedSurvival += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTicEnhancedSurvival=20..}] run scoreboard players set @s doRunEnhancedSurvival 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTicEnhancedSurvival=20..}] run scoreboard players set @s globalTicEnhancedSurvival 0

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTpsLifeAndDeath
function gstools:extension/dorunmath
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicLifeAndDeath += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTicLifeAndDeath=20..}] run scoreboard players set @s doRunLifeAndDeath 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTicLifeAndDeath=20..}] run scoreboard players set @s globalTicLifeAndDeath 0

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTpsDynamicMonsters
function gstools:extension/dorunmath
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicDynamicMonsters += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTicDynamicMonsters=20..}] run scoreboard players set @s doRunDynamicMonsters 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTicDynamicMonsters=20..}] run scoreboard players set @s globalTicDynamicMonsters 0

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTpsBossProgression
function gstools:extension/dorunmath
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicBossProgression += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTicBossProgression=20..}] run scoreboard players set @s doRunBossProgression 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTicBossProgression=20..}] run scoreboard players set @s globalTicBossProgression 0