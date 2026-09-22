# Define
scoreboard objectives add lastSleepingAdjustTic dummy
scoreboard objectives add playerIsSleeping dummy
scoreboard objectives add playerNightmareTic dummy

# Main
scoreboard players add @e[tag=gstools_worker,type=marker] lastSleepingAdjustTic 1
execute if entity @e[type=marker,tag=gstools_worker,scores={lastSleepingAdjustTic=50..}] run function gothichorror:effects/sleeping/comm/set_percentage

execute as @a store result score @s playerIsSleeping run data get entity @s SleepTimer 1
execute as @a[scores={playerIsSleeping=1..}] run function gstools:horror/getindex
execute as @a[scores={playerIsSleeping=1..}] run function gstools:util/random
execute as @a[scores={playerIsSleeping=1..}] run scoreboard players operation @s horrorIndex *= @e[tag=gstools_worker,type=marker] n1
execute as @a[scores={playerIsSleeping=1..}] run scoreboard players add @s horrorIndex 100
execute as @a[scores={playerIsSleeping=1..}] run scoreboard players operation @s horrorIndex *= @s random1000
execute as @a[scores={playerIsSleeping=1..}] if score @s horrorIndex < @s playerIsSleeping run scoreboard players add @s playerNightmareTic 1
execute as @a[scores={playerIsSleeping=1..}] if score @s horrorIndex < @s playerIsSleeping run time add 100t
execute as @a[scores={playerIsSleeping=1..}] if score @s horrorIndex < @s playerIsSleeping run function gstools:util/random
execute as @a[scores={playerIsSleeping=1..}] if score @s horrorIndex < @s playerIsSleeping if score @s random1000 < @s playerNightmareTic at @s run tp @s ~ ~1 ~ ~ ~
execute as @a unless entity @s[scores={playerIsSleeping=1..}] if entity @s[scores={playerNightmareTic=1..}] run scoreboard players remove @s playerNightmareTic 1

execute as @a[scores={playerNightmareTic=1..}] run function gstools:util/random
execute as @a[scores={playerNightmareTic=1..}] if score @s random100 < @s playerNightmareTic run effect give @s darkness 10 10
execute as @a[scores={playerNightmareTic=10..}] if score @s random100 < @s playerNightmareTic run effect give @s blindness 3 10
execute as @a[scores={playerNightmareTic=1..}] if score @s random100 < @s playerNightmareTic run playsound minecraft:gothichorror.hallow.rumble master @s ~ ~ ~ 0.1 0.1
execute as @a[scores={playerNightmareTic=10..}] if score @s random100 < @s playerNightmareTic run playsound minecraft:gothichorror.hallow.rumble master @s ~ ~ ~ 0.1 0.12
execute as @a[scores={playerNightmareTic=10..}] if score @s random100 < @s playerNightmareTic run effect give @s slowness 30 0 true
execute as @a[scores={playerNightmareTic=20..}] if score @s random100 < @s playerNightmareTic run playsound minecraft:gothichorror.hallow.rumble master @s ~ ~ ~ 0.1 0.14
execute as @a[scores={playerNightmareTic=20..}] if score @s random100 < @s playerNightmareTic run effect give @s slowness 25 1 true
execute as @a[scores={playerNightmareTic=30..}] if score @s random100 < @s playerNightmareTic run playsound minecraft:gothichorror.hallow.rumble master @s ~ ~ ~ 0.1 0.18
execute as @a[scores={playerNightmareTic=30..}] if score @s random100 < @s playerNightmareTic run effect give @s slowness 20 2 true
execute as @a[scores={playerNightmareTic=40..}] if score @s random100 < @s playerNightmareTic run playsound minecraft:gothichorror.hallow.rumble master @s ~ ~ ~ 0.1 0.26
execute as @a[scores={playerNightmareTic=40..}] if score @s random100 < @s playerNightmareTic run effect give @s slowness 15 3 true
execute as @a[scores={playerNightmareTic=50..}] if score @s random100 < @s playerNightmareTic run playsound minecraft:gothichorror.hallow.rumble master @s ~ ~ ~ 0.1 0.42
execute as @a[scores={playerNightmareTic=50..}] if score @s random100 < @s playerNightmareTic run effect give @s slowness 10 4 true
execute as @a[scores={playerNightmareTic=60..}] if score @s random100 < @s playerNightmareTic run playsound minecraft:gothichorror.hallow.rumble master @s ~ ~ ~ 0.1 0.74
execute as @a[scores={playerNightmareTic=60..}] if score @s random100 < @s playerNightmareTic run effect give @s slowness 5 5 true



