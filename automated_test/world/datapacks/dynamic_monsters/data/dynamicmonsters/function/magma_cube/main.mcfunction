# Define
scoreboard objectives add magmaCubeUpdateTic dummy
scoreboard objectives add magmaCubeSize dummy
scoreboard objectives add magmaCubeSizeNegationWorker dummy

# Main
execute as @e[type=magma_cube] run function dynamicmonsters:magma_cube/main_sub/6
execute as @e[type=magma_cube,scores={magmaCubeUpdateTic=100..}] run function dynamicmonsters:magma_cube/main_sub/8
execute as @e[type=magma_cube] at @s unless block ~ ~ ~ lava run scoreboard players add @s magmaCubeSizeNegationWorker 1
execute as @e[type=magma_cube,scores={magmaCubeSizeNegationWorker=1000..}] run function dynamicmonsters:magma_cube/main_sub/12
execute as @e[type=magma_cube] run function dynamicmonsters:magma_cube/main_sub/15