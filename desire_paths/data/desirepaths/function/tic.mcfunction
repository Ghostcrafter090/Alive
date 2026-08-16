# Define

# Main
execute as @a at @s as @e[tag=walkable,type=!bat,type=!parrot,type=!phantom,type=!bee,type=!chicken,limit=100,sort=nearest] store result score @s entityVerticalMotion run data get entity @s Motion[1] 100
execute unless entity @e[type=marker,tag=gstools_worker,scores={desirePaths_disableFallRateTrampleBoost=1..1}] as @e[tag=walkable,type=!bat,type=!parrot,type=!phantom,type=!bee,type=!chicken,scores={entityVerticalMotion=..-50}] at @s unless block ~ ~-1 ~ #gstools:air run function desirepaths:dofill