execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..10}] run fill ~ ~-0.5 ~ ~ ~-1 ~ mud replace farmland

fill ~ ~-0.5 ~ ~ ~-1 ~ farmland replace packed_mud

fill ~ ~-0.5 ~ ~ ~-1 ~ packed_mud replace dirt

fill ~ ~-0.5 ~ ~ ~-1 ~ dirt replace grass_block

fill ~ ~-0.5 ~ ~ ~-1 ~ dirt replace mycelium

execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..20}] run function desirepaths:dofill_sub/10

execute if entity @e[tag=gstools_worker,type=marker,scores={random100=..20}] run function desirepaths:dofill_sub/13