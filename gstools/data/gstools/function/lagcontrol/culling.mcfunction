# Define
scoreboard objectives add cullableEntityCount dummy
scoreboard objectives add fallingBlockCount dummy
scoreboard objectives add maxCullableEntityCount dummy
# Main
execute store result score @e[tag=gstools_worker,type=marker] cullableEntityCount if entity @e[tag=lag_control]
execute store result score @e[tag=gstools_worker,type=marker] fallingBlockCount if entity @e[type=falling_block]
execute as @a at @s as @e[tag=lag_control,tag=!player_interacted,distance=0..8] run tag @s add player_interacted
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s maxCullableEntityCount = @s averageTps
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s maxCullableEntityCount *= @s 26
execute if score @e[tag=gstools_worker,type=marker,limit=1] cullableEntityCount > @e[tag=gstools_worker,type=marker,limit=1] maxCullableEntityCount run kill @e[tag=lag_control,limit=100,sort=random,tag=!player_interacted]
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s maxCullableEntityCount /= @s 3
execute if entity @e[tag=gstools_worker,type=marker,scores={ticSecond=9..9}] if score @e[tag=gstools_worker,type=marker,limit=1] cullableEntityCount > @e[tag=gstools_worker,type=marker,limit=1] maxCullableEntityCount run kill @e[tag=lag_control,limit=1,sort=random,tag=!player_interacted]
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s maxCullableEntityCount = @s averageTps
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s maxCullableEntityCount *= @s 5
execute if score @e[tag=gstools_worker,type=marker,limit=1] fallingBlockCount > @e[tag=gstools_worker,type=marker,limit=1] maxCullableEntityCount run kill @e[type=falling_block,limit=100,sort=random,tag=!player_interacted]
execute as @e[type=magma_cube,sort=random,limit=10] store result score @s magmaCubeCountNearby at @s if entity @e[type=magma_cube,distance=0..20]
execute as @e[type=magma_cube,sort=random,limit=10,scores={magmaCubeCountNearby=7..}] run effect give @s wither 6 4 true