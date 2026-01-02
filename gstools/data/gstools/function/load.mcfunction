# Define
scoreboard objectives add desirePathsLoaded dummy
scoreboard objectives add dynamicDirtLoaded dummy
scoreboard objectives add dynamicMonstersLoaded dummy
scoreboard objectives add lifeAndDeathLoaded dummy
scoreboard objectives add enhancedSurvivalLoaded dummy
scoreboard objectives add blockDecayLoaded dummy
scoreboard objectives add dynamicEcosystemsLoaded dummy
scoreboard objectives add firstLoad dummy

scoreboard objectives add n1000000 dummy
scoreboard objectives add n100000 dummy
scoreboard objectives add n10000 dummy
scoreboard objectives add n1000 dummy
scoreboard objectives add n100 dummy
scoreboard objectives add n10 dummy
scoreboard objectives add n1 dummy
scoreboard objectives add 0 dummy
scoreboard objectives add 1 dummy
scoreboard objectives add 2 dummy
scoreboard objectives add 3 dummy
scoreboard objectives add 4 dummy
scoreboard objectives add 5 dummy
scoreboard objectives add 8 dummy
scoreboard objectives add 10 dummy
scoreboard objectives add 20 dummy
scoreboard objectives add 21 dummy
scoreboard objectives add 50 dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 500 dummy
scoreboard objectives add 200 dummy
scoreboard objectives add 201 dummy
scoreboard objectives add 1000 dummy
scoreboard objectives add 2000 dummy
scoreboard objectives add 10000 dummy
scoreboard objectives add 100000 dummy
scoreboard objectives add 1000000 dummy
scoreboard objectives add 59999968 dummy

scoreboard players set @e[tag=gstools_worker,type=marker] n1000000 -1000000
scoreboard players set @e[tag=gstools_worker,type=marker] n100000 -100000
scoreboard players set @e[tag=gstools_worker,type=marker] n10000 -10000
scoreboard players set @e[tag=gstools_worker,type=marker] n1000 -1000
scoreboard players set @e[tag=gstools_worker,type=marker] n100 -100
scoreboard players set @e[tag=gstools_worker,type=marker] n10 -10
scoreboard players set @e[tag=gstools_worker,type=marker] n1 -1
scoreboard players set @e[tag=gstools_worker,type=marker] 0 0
scoreboard players set @e[tag=gstools_worker,type=marker] 1 1
scoreboard players set @e[tag=gstools_worker,type=marker] 2 2
scoreboard players set @e[tag=gstools_worker,type=marker] 3 3
scoreboard players set @e[tag=gstools_worker,type=marker] 4 4
scoreboard players set @e[tag=gstools_worker,type=marker] 5 5
scoreboard players set @e[tag=gstools_worker,type=marker] 8 8
scoreboard players set @e[tag=gstools_worker,type=marker] 10 10
scoreboard players set @e[tag=gstools_worker,type=marker] 20 20
scoreboard players set @e[tag=gstools_worker,type=marker] 21 21
scoreboard players set @e[tag=gstools_worker,type=marker] 50 50
scoreboard players set @e[tag=gstools_worker,type=marker] 100 100
scoreboard players set @e[tag=gstools_worker,type=marker] 500 500
scoreboard players set @e[tag=gstools_worker,type=marker] 200 200
scoreboard players set @e[tag=gstools_worker,type=marker] 201 201
scoreboard players set @e[tag=gstools_worker,type=marker] 1000 1000
scoreboard players set @e[tag=gstools_worker,type=marker] 2000 2000
scoreboard players set @e[tag=gstools_worker,type=marker] 10000 10000
scoreboard players set @e[tag=gstools_worker,type=marker] 100000 100000
scoreboard players set @e[tag=gstools_worker,type=marker] 1000000 1000000
scoreboard players set @e[tag=gstools_worker,type=marker] 59999968 59999968

scoreboard players set @e[tag=gstools_worker,type=marker] desirePathsLoaded 0
scoreboard players set @e[tag=gstools_worker,type=marker] dynamicDirtLoaded 0
scoreboard players set @e[tag=gstools_worker,type=marker] dynamicMonstersLoaded 0
scoreboard players set @e[tag=gstools_worker,type=marker] lifeAndDeathLoaded 0
scoreboard players set @e[tag=gstools_worker,type=marker] enhancedSurvivalLoaded 0
scoreboard players set @e[tag=gstools_worker,type=marker] blockDecayLoaded 0

execute unless score $first_load firstLoad = $first_load firstLoad run worldborder set 59999468
execute unless score $first_load firstLoad = $first_load firstLoad run scoreboard players set $first_load firstLoad 1

scoreboard players set @e[tag=gstools_worker,type=marker] averageTpsWorkerMultTen 400

scoreboard objectives add minimumCursorY dummy
execute as @e[type=marker,tag=gstools_worker] unless entity @s[scores={minimumCursorY=-500..500}] run scoreboard players set @s minimumCursorY -64
scoreboard objectives add maximumCursorY dummy
execute as @e[type=marker,tag=gstools_worker] unless entity @s[scores={maximumCursorY=-500..500}] run scoreboard players set @s maximumCursorY 384


# Main
say "[GSTOOLS] | GSTools is active. Mod loaded successfully. Loading present daughter mods...

# Run
function desirepaths:load
function dynamicdirt:load
function dynamicmonsters:load
function lifeanddeath:load
function enhancedsurvival:load
function dynamicecosystems:load
function blockdecay:load