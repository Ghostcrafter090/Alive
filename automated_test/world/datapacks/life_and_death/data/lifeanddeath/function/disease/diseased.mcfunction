# Define
scoreboard objectives add timeTillHorny dummy

# Main
execute if entity @a[scores={random100=31..35}] if entity @e[type=wither_skeleton,limit=3,sort=random] run function lifeanddeath:disease/spreaders/witherskele
execute if entity @a[scores={random100=36..40}] if entity @e[type=piglin,limit=3,sort=random] run function lifeanddeath:disease/spreaders/zombiepig
execute if entity @a[scores={random100=41..45}] if entity @e[type=zombie_villager,limit=3,sort=random] run function lifeanddeath:disease/spreaders/zombievill

execute as @a run function lifeanddeath:disease/diseased_sub/8
