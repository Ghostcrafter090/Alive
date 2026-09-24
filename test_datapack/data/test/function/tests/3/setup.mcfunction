# Define

# Main
forceload add 100 100 100 100
fill 100 0 100 100 0 100 chiseled_quartz_block replace
fill 101 0 100 101 0 100 oak_log replace
summon marker 100 1 100 {Tags:["test_cursor_0"]}
summon marker 101 1 100 {Tags:["test_cursor_1"]}

scoreboard players set $test test2HasSetup 1