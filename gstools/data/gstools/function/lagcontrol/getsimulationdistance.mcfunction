# Define
scoreboard objectives add simulationDistance dummy
scoreboard objectives add simulationDistanceHalfCircumphrence dummy
scoreboard objectives add simulationDistanceArea dummy
# Main
execute as @r at @s if loaded ~100 ~ ~ unless entity @a[distance=1..100] run scoreboard players set @e[tag=gstools_worker,type=marker] simulationDistance 100
execute as @r at @s if loaded ~200 ~ ~ unless entity @a[distance=101..200] run scoreboard players set @e[tag=gstools_worker,type=marker] simulationDistance 200
execute as @r at @s if loaded ~300 ~ ~ unless entity @a[distance=201..300] run scoreboard players set @e[tag=gstools_worker,type=marker] simulationDistance 300
execute as @r at @s if loaded ~400 ~ ~ unless entity @a[distance=301..400] run scoreboard players set @e[tag=gstools_worker,type=marker] simulationDistance 400
execute as @r at @s if loaded ~500 ~ ~ unless entity @a[distance=401..500] run scoreboard players set @e[tag=gstools_worker,type=marker] simulationDistance 500
execute as @r at @s if loaded ~600 ~ ~ unless entity @a[distance=501..600] run scoreboard players set @e[tag=gstools_worker,type=marker] simulationDistance 600
execute as @r at @s if loaded ~700 ~ ~ unless entity @a[distance=601..700] run scoreboard players set @e[tag=gstools_worker,type=marker] simulationDistance 700
execute as @r at @s if loaded ~800 ~ ~ unless entity @a[distance=701..800] run scoreboard players set @e[tag=gstools_worker,type=marker] simulationDistance 800
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s simulationDistanceHalfCircumphrence = @s simulationDistance
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s simulationDistanceHalfCircumphrence *= @s 1966
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s simulationDistanceHalfCircumphrence /= @s 10000
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s simulationDistanceArea = @s simulationDistance
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s simulationDistanceArea *= @s simulationDistanceArea
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s simulationDistanceArea *= @s 31459
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s simulationDistanceArea /= @s 10000
