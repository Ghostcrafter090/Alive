# Define
scoreboard objectives add allHallowsEveIndex dummy

scoreboard objectives add horrorIndexWorkerA dummy
scoreboard objectives add horrorIndexWorkerB dummy
scoreboard objectives add horrorIndexWorkerC dummy

# Main
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s allHallowsEveIndex = @s currentSeasonDay
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s allHallowsEveIndex -= @s 32

execute as @e[type=marker,tag=gstools_worker] run scoreboard players set @s powBaseInput 100
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powExpoInput = @s allHallowsEveIndex
function gstools:util/pow
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s horrorIndexWorkerA = @s powResult

execute as @e[type=marker,tag=gstools_worker] run scoreboard players set @s powBaseInput 117
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powExpoInput = @s allHallowsEveIndex
function gstools:util/pow
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s allHallowsEveIndex = @s powResult

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s allHallowsEveIndex /= @s horrorIndexWorkerA

scoreboard players operation @s allHallowsEveIndex = @e[type=marker,tag=gstools_worker] allHallowsEveIndex