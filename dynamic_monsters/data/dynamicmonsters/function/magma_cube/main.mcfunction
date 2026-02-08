# Define
scoreboard objectives add magmaCubeUpdateTic dummy
scoreboard objectives add magmaCubeSize dummy
scoreboard objectives add magmaCubeSizeNegationWorker dummy

# Main
execute as @e[type=magma_cube] at @s if block ~ ~ ~ lava store result score @s magmaCubeSize run data get entity @s Size
execute as @e[type=magma_cube] at @s if block ~ ~ ~ lava run scoreboard players add @s magmaCubeUpdateTic 1
execute as @e[type=magma_cube,scores={magmaCubeUpdateTic=100..}] run scoreboard players add @s magmaCubeSize 1
execute as @e[type=magma_cube,scores={magmaCubeUpdateTic=100..}] store result entity @s Size int 1 run scoreboard players get @s magmaCubeSize
execute as @e[type=magma_cube,scores={magmaCubeUpdateTic=100..}] run scoreboard players set @s magmaCubeUpdateTic 0
execute as @e[type=magma_cube] at @s unless block ~ ~ ~ lava run scoreboard players add @s magmaCubeSizeNegationWorker 1
execute as @e[type=magma_cube,scores={magmaCubeSizeNegationWorker=1000..}] run scoreboard players remove @s magmaCubeSize 1
execute as @e[type=magma_cube,scores={magmaCubeSizeNegationWorker=1000..}] store result entity @s Size int 1 run scoreboard players get @s magmaCubeSize
execute as @e[type=magma_cube,scores={magmaCubeSizeNegationWorker=1000..}] run scoreboard players set @s magmaCubeSizeNegationWorker 0
execute as @e[type=magma_cube] at @s if block ~ ~-1 ~ snow run scoreboard players add @s magmaCubeSizeNegationWorker 5
execute as @e[type=magma_cube] at @s if block ~ ~-1 ~ snow_block run scoreboard players add @s magmaCubeSizeNegationWorker 5
execute as @e[type=magma_cube] at @s if block ~ ~-1 ~ #minecraft:ice run scoreboard players add @s magmaCubeSizeNegationWorker 8
execute as @e[type=magma_cube] at @s if block ~ ~-1 ~ #minecraft:ice run effect give @s slowness 1 0
execute as @e[type=magma_cube] at @s if block ~ ~ ~ minecraft:water if entity @s[scores={magmaCubeSizeNegationWorker=10..}] run scoreboard players add @s magmaCubeSizeNegationWorker 50
execute as @e[type=magma_cube] at @s if block ~ ~ ~ minecraft:water if entity @s[scores={magmaCubeSizeNegationWorker=10..}] run effect give @s resistance 5 2
execute as @e[type=magma_cube] at @s if block ~ ~ ~ minecraft:water if entity @s[scores={magmaCubeSizeNegationWorker=10..}] run summon creeper ~ ~ ~ {CustomNameVisible:0b,ExplosionRadius:1b,PersistenceRequired:1b,CanPickUpLoot:1b,Fuse:2,ignited:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10,show_particles:0b,show_icon:0b}]}