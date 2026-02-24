# Define
scoreboard objectives add numberOfCursors dummy
scoreboard objectives add numberOfPlayers dummy
scoreboard objectives add cursorTicSpeed dummy
scoreboard objectives add waitCursorAge dummy
scoreboard objectives add chunkLoaderCount dummy
scoreboard objectives add cursorInArrears dummy

# Main
execute as @e[tag=gstools_cursor_pre,limit=40,sort=random] run tag @s add gstools_cursor
execute as @e[tag=gstools_cursor,scores={waitCursorAge=2..}] run scoreboard players remove @e[tag=gstools_chunk_worker,sort=nearest,limit=1] numberOfUnloadedCursorsSpawned 1
execute as @e[tag=gstools_cursor,scores={waitCursorAge=2..}] run kill @s

execute as @a at @s unless entity @e[tag=gstools_cursor,type=marker,distance=0..200] run summon marker ~ 100 ~ {Tags:['gstools_cursor']}

execute as @a at @s store result score @s numberOfCursors if entity @e[tag=gstools_cursor,type=marker,distance=0..200,tag=!spread_from_self]
execute as @a at @s store result score @s numberOfPlayers if entity @a[distance=0..400]

execute as @a at @s if score @s numberOfCursors > @s numberOfPlayers run kill @e[tag=gstools_cursor,tag=!gstools_cursor_pre,type=marker,limit=1,sort=random,distance=0..400]

execute if entity @e[tag=gstools_worker,type=marker,scores={simulationDistance=100..100}] as @a at @s as @e[type=marker,tag=gstools_cursor,tag=!spread_from_self] run spreadplayers ~ ~ 1 100 false @s
execute if entity @e[tag=gstools_worker,type=marker,scores={simulationDistance=200..200}] as @a at @s as @e[type=marker,tag=gstools_cursor,tag=!spread_from_self] run spreadplayers ~ ~ 1 200 false @s
execute if entity @e[tag=gstools_worker,type=marker,scores={simulationDistance=300..300}] as @a at @s as @e[type=marker,tag=gstools_cursor,tag=!spread_from_self] run spreadplayers ~ ~ 1 300 false @s
execute if entity @e[tag=gstools_worker,type=marker,scores={simulationDistance=400..400}] as @a at @s as @e[type=marker,tag=gstools_cursor,tag=!spread_from_self] run spreadplayers ~ ~ 1 400 false @s
execute if entity @e[tag=gstools_worker,type=marker,scores={simulationDistance=500..500}] as @a at @s as @e[type=marker,tag=gstools_cursor,tag=!spread_from_self] run spreadplayers ~ ~ 1 500 false @s
execute if entity @e[tag=gstools_worker,type=marker,scores={simulationDistance=600..600}] as @a at @s as @e[type=marker,tag=gstools_cursor,tag=!spread_from_self] run spreadplayers ~ ~ 1 600 false @s
execute if entity @e[tag=gstools_worker,type=marker,scores={simulationDistance=700..700}] as @a at @s as @e[type=marker,tag=gstools_cursor,tag=!spread_from_self] run spreadplayers ~ ~ 1 700 false @s
execute if entity @e[tag=gstools_worker,type=marker,scores={simulationDistance=800..800}] as @a at @s as @e[type=marker,tag=gstools_cursor,tag=!spread_from_self] run spreadplayers ~ ~ 1 800 false @s

execute as @e[type=marker,tag=gstools_chunk_worker] at @s run spreadplayers ~ ~ 1 200 false @e[type=marker,tag=gstools_cursor,tag=spread_from_self,distance=0..1]

kill @e[type=marker,tag=gstools_vertical_cursor]
execute as @e[tag=gstools_cursor,type=marker] at @s run function gstools:cursor/dovertical

execute as @e[tag=chunk_loader,sort=random,limit=1] at @s unless entity @e[tag=gstools_chunk_worker,distance=..400,type=marker] run say spawned chunk_worker!
execute as @e[tag=chunk_loader,sort=random,limit=1] at @s unless entity @e[tag=gstools_chunk_worker,distance=..400,type=marker] run summon marker ~ ~ ~ {Tags:['gstools_chunk_worker']}
execute store result score @e[tag=gstools_worker,type=marker] chunkLoaderCount if entity @e[tag=gstools_chunk_worker,type=marker]

execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] run scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] cursorInArrears 0
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_chunk_worker,type=marker] if score @s cursorTic < @e[tag=gstools_worker,type=marker,limit=1] cursorTic run scoreboard players operation @e[tag=gstools_worker,type=marker] cursorInArrears += @e[tag=gstools_worker,type=marker] cursorTic
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_chunk_worker,type=marker] if score @s cursorTic < @e[tag=gstools_worker,type=marker,limit=1] cursorTic run scoreboard players operation @e[tag=gstools_worker,type=marker] cursorInArrears -= @s cursorTic
execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] run function gstools:cursor/chunk/summon

execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] if entity @e[tag=gstools_chunk_worker,scores={numberOfUnloadedCursorsSpawned=800..800}] run schedule function gstools:cursor/chunk/loadrandom 1t

execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_worker,type=marker] run scoreboard players add @s cursorTic 1
# execute as @e[tag=gstools_worker,type=marker] run scoreboard players add @s cursorTic 1

execute if entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_chunk_worker] at @s run forceload add ~ ~ ~ ~
execute unless entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] as @e[tag=gstools_chunk_worker] at @s unless entity @e[tag=gstools_worker,distance=..16] run forceload remove ~ ~ ~ ~
execute unless entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] run forceload remove all
execute unless entity @e[type=marker,tag=gstools_worker,scores={averageTps=16..}] run forceload add 0 0

