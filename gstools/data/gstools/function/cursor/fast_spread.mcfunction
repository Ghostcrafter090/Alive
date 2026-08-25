# Define
scoreboard objectives add _spreadRange dummy
scoreboard objectives add _spreadRangeWorkerA dummy
scoreboard objectives add _spreadRangeWorkerB dummy
scoreboard objectives add _fastSpreadX dummy
scoreboard objectives add _fastSpreadZ dummy

# Main
summon marker ~ ~ ~ {Tags:['fast_spread_center']}
execute store result score @s _fastSpreadX run data get entity @e[tag=fast_spread_center,type=marker,sort=nearest,limit=1] Pos[0]
execute store result score @s _fastSpreadZ run data get entity @e[tag=fast_spread_center,type=marker,sort=nearest,limit=1] Pos[2]

function gstools:util/random
scoreboard players operation @s _spreadRangeWorkerA = @s _spreadRange
scoreboard players operation @s _spreadRangeWorkerB = @s _spreadRange
scoreboard players operation @s _spreadRangeWorkerA *= @e[tag=gstools_worker,type=marker] 2
scoreboard players operation @s _spreadRangeWorkerA *= @s random1000
scoreboard players operation @s _spreadRangeWorkerA /= @e[tag=gstools_worker,type=marker] 1000
scoreboard players operation @s _spreadRangeWorkerB -= @s _spreadRangeWorkerA

scoreboard players operation @s _fastSpreadX += @s _spreadRangeWorkerB

function gstools:util/random
scoreboard players operation @s _spreadRangeWorkerA = @s _spreadRange
scoreboard players operation @s _spreadRangeWorkerB = @s _spreadRange
scoreboard players operation @s _spreadRangeWorkerA *= @e[tag=gstools_worker,type=marker] 2
scoreboard players operation @s _spreadRangeWorkerA *= @s random1000
scoreboard players operation @s _spreadRangeWorkerA /= @e[tag=gstools_worker,type=marker] 1000
scoreboard players operation @s _spreadRangeWorkerB -= @s _spreadRangeWorkerA

scoreboard players operation @s _fastSpreadZ += @s _spreadRangeWorkerB

execute store result entity @s Pos[0] double 1 run scoreboard players get @s _fastSpreadX
execute store result entity @s Pos[2] double 1 run scoreboard players get @s _fastSpreadZ

execute at @s positioned over world_surface run tp @s ~ ~ ~

kill @e[tag=fast_spread_center,type=marker]