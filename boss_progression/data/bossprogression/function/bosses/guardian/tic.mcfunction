execute as @e[tag=gstools_worker,type=marker,limit=1,scores={crownOfTheSeaHasBeenSpawned=1..1}] unless entity @s[scores={guardiansHaveBeenKilled=1..1}] run function bossprogression:bosses/guardian/effects/tic

execute as @e[type=elder_guardian,limit=1,sort=random] at @s run forceload add ~1 ~1 ~-1 ~-1