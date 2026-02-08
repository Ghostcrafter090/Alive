# Define
scoreboard objectives add forceChunkLoadX dummy
scoreboard objectives add forceChunkLoadY dummy
scoreboard objectives add forceChunkLoadZ dummy
scoreboard objectives add forceChunkLoadWorker dummy
scoreboard objectives add forceChunkLoadComplete dummy

# Main
execute as @e[tag=forceload_cursor,type=marker,limit=1] unless entity @s[scores={forceChunkLoadX=-1..1}] run function gstools:chunk/load/x
execute as @e[tag=forceload_cursor,type=marker,limit=1] unless entity @s[scores={forceChunkLoadZ=-1..1}] run function gstools:chunk/load/z

execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadX=-1..1}] if entity @s[scores={forceChunkLoadZ=-1..1}] run scoreboard players set @e[tag=forceload_cursor,type=marker] forceChunkLoadComplete 1
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadX=-1..1}] if entity @s[scores={forceChunkLoadZ=-1..1}] at @s run forceload add ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadX=-1..1}] if entity @s[scores={forceChunkLoadZ=-1..1}] at @s run summon marker ~ ~ ~ {Tags:['forceloaded_marker']}
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadX=-1..1}] if entity @s[scores={forceChunkLoadZ=-1..1}] run kill @e[tag=forceload_cursor,type=marker]