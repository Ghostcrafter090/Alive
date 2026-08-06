# Define
scoreboard objectives add doRunCursor dummy
scoreboard objectives add chunkListCurrentIndex dummy
scoreboard objectives add hasSummonedPreCursor dummy
scoreboard objectives add numberOfUnloadedCursorsSpawned dummy
scoreboard objectives add maxNumberOfUnloadedCursorsPerChunk dummy
# Main
scoreboard players set @e[tag=gstools_worker,type=marker] doRunCursor 0
execute if entity @e[tag=gstools_worker,type=marker,scores={dynamicDirtLoaded=1..1}] run scoreboard players set @e[tag=gstools_worker,type=marker] doRunCursor 1
execute if entity @e[tag=gstools_worker,type=marker,scores={dynamicEcosystemsLoaded=1..1}] run scoreboard players set @e[tag=gstools_worker,type=marker] doRunCursor 1
execute if entity @e[tag=gstools_worker,type=marker,scores={blockDecayLoaded=1..1}] run scoreboard players set @e[tag=gstools_worker,type=marker] doRunCursor 1
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunCursor=1..1}] run function gstools:cursor/main
execute as @e[tag=gstools_chunk_worker,limit=1,sort=random] at @s store result score @s chunkLoaderCount if entity @e[tag=gstools_chunk_worker,distance=..400,type=marker,limit=1]
execute as @e[tag=gstools_chunk_worker,scores={chunkLoaderCount=2..}] at @s if score @e[tag=gstools_chunk_worker,distance=1..,sort=nearest,limit=1] cursorTic > @s cursorTic run function gstools:cursor/chunk/remove