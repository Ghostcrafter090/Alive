# Define
scoreboard objectives add guardianEffectsAreActive dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] guardianEffectsAreActive 0

execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={crownOfTheSeaHasBeenSpawned=1..1}] run function bossprogression:bosses/guardian/effects/run
execute unless entity @e[tag=gstools_worker,type=marker,limit=1,scores={crownOfTheSeaHasBeenSpawned=1..1,random100=..10}] run data merge entity @e[tag=fish,limit=1,sort=random,tag=!fish_gravity_fixed] {NoGravity:0b}
execute unless entity @e[tag=gstools_worker,type=marker,limit=1,scores={crownOfTheSeaHasBeenSpawned=1..1,random100=..10}] run tag @s add fish_gravity_fixed