# Define

# Main
forceload add 100 100 100 100
fill 90 99 90 110 99 110 bedrock replace
fill 100 100 100 100 110 100 air replace

summon creeper 100 100 100 {Tags:["test_creeper"]}
effect give @e[type=creeper] resistance infinite 5 true

scoreboard players set $test test1HasSetup 1