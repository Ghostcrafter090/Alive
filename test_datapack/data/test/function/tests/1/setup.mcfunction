# Define

# Main
forceload add 100 100 100 100
setblock 100 99 100 bedrock replace
fill 100 100 100 100 110 100 air replace

summon creeper 100 100 100 {Tags:["test_creeper"]}

execute as @e[tag=test_creeper] at @s run summon small_fireball ~ ~5 ~ {Motion:[0.0,-1.0,0.0]}

scoreboard players set $test test1HasSetup 1