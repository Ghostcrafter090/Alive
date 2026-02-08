# Define
scoreboard objectives add coldBloodCreeperFuse dummy

# Main
execute at @s run function gstools:compat/sereneseasons/temperature

scoreboard players operation @s currentTemperature *= @e[tag=gstools_worker,type=marker,limit=1] 10000
scoreboard players operation @s coldBloodTemperatureWorker *= @e[tag=gstools_worker,type=marker,limit=1] 1000
scoreboard players operation @s coldBloodTemperatureWorker += @s currentTemperature
scoreboard players operation @s currentTemperature /= @e[tag=gstools_worker,type=marker,limit=1] 10000
scoreboard players operation @s coldBloodTemperatureWorker /= @e[tag=gstools_worker,type=marker,limit=1] 1001

execute at @s if block ~ ~-1 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-2 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~ ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~1 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~2 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~-1 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~-2 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~ ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~1 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~2 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-1 ~1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-2 ~1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~ ~1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~1 ~1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~2 ~1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~-1 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~-2 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~ ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~1 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~2 ~ #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-1 ~-1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-2 ~-1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~ ~-1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~1 ~-1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~2 ~-1 #gstools:cold run scoreboard players remove @s coldBloodTemperatureWorker 10

execute at @s if block ~ ~-1 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-2 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~ ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~1 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~2 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~-1 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~-2 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~ ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~1 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~1 ~2 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-1 ~1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-2 ~1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~ ~1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~1 ~1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~2 ~1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~-1 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~-2 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~ ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~1 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~-1 ~2 ~ #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-1 ~-1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~-2 ~-1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~ ~-1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~1 ~-1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10
execute at @s if block ~ ~2 ~-1 #gstools:hot run scoreboard players add @s coldBloodTemperatureWorker 10

scoreboard players add @s coldBloodTemperatureWorker 10
scoreboard players operation @s coldBloodTemperature = @s coldBloodTemperatureWorker
scoreboard players operation @s coldBloodTemperature /= @e[tag=gstools_worker,type=marker] 10000

execute if entity @s[scores={coldBloodTemperature=101..}] run effect give @s speed 4 3 true
execute if entity @s[scores={coldBloodTemperature=101..}] run effect give @s haste 4 4 true
execute if entity @s[scores={coldBloodTemperature=101..}] run effect give @s strength 4 4 true
execute if entity @s[scores={coldBloodTemperature=101..}] run effect give @s jump_boost 4 4 true
execute if entity @s[scores={coldBloodTemperature=76..100}] run effect give @s speed 4 2 true
execute if entity @s[scores={coldBloodTemperature=76..100}] run effect give @s haste 4 3 true
execute if entity @s[scores={coldBloodTemperature=76..100}] run effect give @s strength 4 3 true
execute if entity @s[scores={coldBloodTemperature=76..100}] run effect give @s jump_boost 4 3 true
execute if entity @s[scores={coldBloodTemperature=56..75}] run effect give @s speed 4 1 true
execute if entity @s[scores={coldBloodTemperature=56..75}] run effect give @s haste 4 2 true
execute if entity @s[scores={coldBloodTemperature=56..75}] run effect give @s strength 4 2 true
execute if entity @s[scores={coldBloodTemperature=56..75}] run effect give @s jump_boost 4 2 true
execute if entity @s[scores={coldBloodTemperature=41..55}] run effect give @s speed 4 1 true
execute if entity @s[scores={coldBloodTemperature=41..55}] run effect give @s haste 4 2 true
execute if entity @s[scores={coldBloodTemperature=41..55}] run effect give @s strength 4 2 true
execute if entity @s[scores={coldBloodTemperature=41..55}] run effect give @s jump_boost 4 2 true
execute if entity @s[scores={coldBloodTemperature=31..40}] run effect give @s speed 4 0 true
execute if entity @s[scores={coldBloodTemperature=31..40}] run effect give @s haste 4 1 true
execute if entity @s[scores={coldBloodTemperature=31..40}] run effect give @s strength 4 1 true
execute if entity @s[scores={coldBloodTemperature=31..40}] run effect give @s jump_boost 4 1 true
execute if entity @s[scores={coldBloodTemperature=25..30}] run effect give @s speed 4 0 true
execute if entity @s[scores={coldBloodTemperature=25..30}] run effect give @s haste 4 0 true
execute if entity @s[scores={coldBloodTemperature=25..30}] run effect give @s strength 4 0 true
execute if entity @s[scores={coldBloodTemperature=25..30}] run effect give @s jump_boost 4 0 true

execute if entity @s[scores={coldBloodTemperature=5..10}] run effect give @s slowness 4 0 true
execute if entity @s[scores={coldBloodTemperature=5..10}] run effect give @s mining_fatigue 4 0 true
execute if entity @s[scores={coldBloodTemperature=5..10}] run effect give @s weakness 4 0 true
execute if entity @s[scores={coldBloodTemperature=-1..4}] run effect give @s slowness 4 1 true
execute if entity @s[scores={coldBloodTemperature=-1..4}] run effect give @s mining_fatigue 4 1 true
execute if entity @s[scores={coldBloodTemperature=-1..4}] run effect give @s weakness 4 1 true
execute if entity @s[scores={coldBloodTemperature=-7..-2}] run effect give @s slowness 4 2 true
execute if entity @s[scores={coldBloodTemperature=-7..-2}] run effect give @s mining_fatigue 4 2 true
execute if entity @s[scores={coldBloodTemperature=-7..-2}] run effect give @s weakness 4 2 true
execute if entity @s[scores={coldBloodTemperature=-13..-8}] run effect give @s slowness 4 3 true
execute if entity @s[scores={coldBloodTemperature=-13..-8}] run effect give @s mining_fatigue 4 3 true
execute if entity @s[scores={coldBloodTemperature=-13..-8}] run effect give @s weakness 4 3 true
execute if entity @s[scores={coldBloodTemperature=..-14}] run effect give @s slowness 4 4 true
execute if entity @s[scores={coldBloodTemperature=..-14}] run effect give @s mining_fatigue 4 4 true
execute if entity @s[scores={coldBloodTemperature=..-14}] run effect give @s weakness 4 4 true

execute if entity @s[type=creeper] run scoreboard players set @s coldBloodCreeperFuse 80
execute if entity @s[type=creeper] run scoreboard players operation @s coldBloodCreeperFuse -= @s coldBloodTemperature
execute if entity @s[type=creeper] store result entity @s Fuse int 1 run scoreboard players get @s coldBloodCreeperFuse