fill ~ ~-1 ~ ~ ~-1 ~ farmland replace dirt

fill ~ ~-1 ~ ~ ~-1 ~ dirt replace grass_block

fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mycelium

execute if entity @e[tag=gstools_worker,type=marker,scores={random10=..2}] run fill ~ ~-1 ~ ~ ~-1 ~ mud replace farmland
