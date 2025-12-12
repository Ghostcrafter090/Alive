# Define
scoreboard objectives add timeTillHorny dummy

# Main
execute if entity @a[scores={regulateZombieDiseaseEffects=4..4}] run function lifeanddeath:disease/diseased_sub/4

execute as @a run function lifeanddeath:disease/diseased_sub/8
