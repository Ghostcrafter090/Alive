# Define
scoreboard objectives add testGstoolsWorkerCount dummy
scoreboard objectives add test2HasSetup dummy

# Main
execute unless score $test test2HasSetup = $test test1 run function test:tests/2/setup

execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_0] at @s run function blockdecay:decay/at
execute as @e[tag=test_cursor_1] at @s run function blockdecay:decay/at

execute as @e[tag=test_cursor_0] at @s if block ~ ~-1 ~ stone as @e[tag=test_cursor_1] at @s if block ~ ~-1 ~ rooted_dirt run scoreboard players set $test testSuccess 1
scoreboard players set $test testComplete 1