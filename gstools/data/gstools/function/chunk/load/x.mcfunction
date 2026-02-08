# Define

# Main
execute as @e[tag=forceload_cursor,type=marker] store result score @s forceChunkLoadWorker run data get entity @s Pos[0] 1
scoreboard players operation @e[tag=forceload_cursor,type=marker] forceChunkLoadX = @e[tag=gstools_worker,type=marker] forceChunkLoadX
scoreboard players operation @e[tag=forceload_cursor,type=marker] forceChunkLoadX -= @e[tag=forceload_cursor,type=marker] forceChunkLoadWorker
scoreboard players operation @e[tag=forceload_cursor,type=marker] forceChunkLoadWorker = @e[tag=forceload_cursor,type=marker] forceChunkLoadX
scoreboard players operation @e[tag=forceload_cursor,type=marker] forceChunkLoadWorker *= @e[tag=gstools_worker,type=marker] n1

execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=1..10}] at @s run forceload add ~-1 ~ ~-1 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=1..10}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=1..10}] at @s run forceload remove ~1 ~ ~1 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=11..100}] at @s run forceload add ~-10 ~ ~-10 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=11..100}] at @s run tp @s ~-10 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=11..100}] at @s run forceload remove ~10 ~ ~10 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=101..1000}] at @s run forceload add ~-100 ~ ~-100 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=101..1000}] at @s run tp @s ~-100 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=101..1000}] at @s run forceload remove ~100 ~ ~100 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=1001..10000}] at @s run forceload add ~-1000 ~ ~-1000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=1001..10000}] at @s run tp @s ~-1000 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=1001..10000}] at @s run forceload remove ~1000 ~ ~1000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=10001..100000}] at @s run forceload add ~-10000 ~ ~-10000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=10001..100000}] at @s run tp @s ~-10000 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=10001..100000}] at @s run forceload remove ~10000 ~ ~10000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=100001..1000000}] at @s run forceload add ~-100000 ~ ~-100000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=100001..1000000}] at @s run tp @s ~-100000 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=100001..1000000}] at @s run forceload remove ~100000 ~ ~100000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=1000001..}] at @s run forceload add ~-1000000 ~ ~-1000000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=1000001..}] at @s run tp @s ~-1000000 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=1000001..}] at @s run forceload remove ~1000000 ~ ~1000000 ~

execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-10..-1}] at @s run forceload add ~1 ~ ~1 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-10..-1}] at @s run tp @s ~1 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-10..-1}] at @s run forceload remove ~-1 ~ ~-1 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-100..-11}] at @s run forceload add ~10 ~ ~10 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-100..-11}] at @s run tp @s ~10 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-100..-11}] at @s run forceload remove ~-10 ~ ~-10 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-1000..-101}] at @s run forceload add ~100 ~ ~100 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-1000..-101}] at @s run tp @s ~100 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-1000..-101}] at @s run forceload remove ~-100 ~ ~-100 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-10000..-1001}] at @s run forceload add ~1000 ~ ~1000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-10000..-1001}] at @s run tp @s ~1000 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-10000..-1001}] at @s run forceload remove ~-1000 ~ ~-1000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-100000..-10001}] at @s run forceload add ~10000 ~ ~10000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-100000..-10001}] at @s run tp @s ~10000 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-100000..-10001}] at @s run forceload remove ~-10000 ~ ~-10000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-1000000..-100001}] at @s run forceload add ~100000 ~ ~100000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-1000000..-100001}] at @s run tp @s ~100000 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=-1000000..-100001}] at @s run forceload remove ~-100000 ~ ~-100000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=..-1000001}] at @s run forceload add ~1000000 ~ ~1000000 ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=..-1000001}] at @s run tp @s ~1000000 ~ ~
execute as @e[tag=forceload_cursor,type=marker,scores={forceChunkLoadWorker=..-1000001}] at @s run forceload remove ~-1000000 ~ ~-1000000 ~

forceload add 0 0 0 0