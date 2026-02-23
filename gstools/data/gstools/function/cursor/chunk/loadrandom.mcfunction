# Define
scoreboard objectives add randomChunkLoadIndex dummy
scoreboard objectives add cursorForceloadAddCommand dummy
scoreboard objectives add chunkForceloadSelectIndex0 dummy
scoreboard objectives add chunkForceloadSelectIndex1 dummy
scoreboard objectives add chunkForceloadSelectIndex2 dummy
scoreboard objectives add chunkForceloadSelectIndex3 dummy
scoreboard objectives add chunkForceloadSelectIndex4 dummy
scoreboard objectives add chunkForceloadSelectIndex5 dummy
scoreboard objectives add forceloadedChunkCount dummy

# Main
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] unless entity @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..}] run tag @e[tag=gstools_chunk_worker,type=marker,sort=random,limit=1,scores={numberOfUnloadedCursorsSpawned=800..}] add forceload_active
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run function gstools:util/random
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex0 = @s random1000
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex0 /= @s 250
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run function gstools:util/random
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex1 = @s random1000
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex1 /= @s 250
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run function gstools:util/random
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex2 = @s random1000
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex2 /= @s 250
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run function gstools:util/random
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex3 = @s random1000
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex3 /= @s 250
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run function gstools:util/random
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex4 = @s random1000
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex4 /= @s 250
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run function gstools:util/random
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex5 = @s random1000
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players operation @s chunkForceloadSelectIndex5 /= @s 250
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] run scoreboard players set @s cursorForceloadAddCommand 1
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=1..1}] as @e[tag=forceload_active,type=marker] at @s run function gstools:cursor/chunk/forceload/seek_depth_0
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=9..9}] run scoreboard players add @s forceloadedChunkCount 1
# execute as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=9..9}] as @e[tag=forceload_active,type=marker] at @s run function gstools:cursor/chunk/forceload/seek_depth_0
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=9..9,forceloadedChunkCount=20..}] run forceload remove all
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=9..9,forceloadedChunkCount=20..}] run forceload add 0 0 0 0
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=9..9,forceloadedChunkCount=20..}] as @e[tag=gstools_chunk_worker,type=marker] run forceload add ~ ~ ~ ~
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=9..9,forceloadedChunkCount=20..}] run scoreboard players set @s forceloadedChunkCount 0

execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker] run scoreboard players add @s randomChunkLoadIndex 1

execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=10..}] as @e[tag=forceload_active,type=marker] run tag @s remove forceload_active
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker,scores={randomChunkLoadIndex=10..}] run scoreboard players set @s randomChunkLoadIndex 0