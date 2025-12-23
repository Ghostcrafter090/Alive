# Define
scoreboard objectives add tic dummy
scoreboard objectives add ticHalf dummy
scoreboard objectives add ticQuarter dummy
scoreboard objectives add ticEigth dummy
scoreboard objectives add ticTenth dummy
scoreboard objectives add ticSecond dummy
scoreboard objectives add globalTic dummy
scoreboard objectives add globalTicWorkerA dummy
scoreboard objectives add globalTicWorkerB dummy
scoreboard objectives add doRun dummy
scoreboard objectives add gstoolsWorkerCount dummy
scoreboard objectives add gameTime dummy
scoreboard objectives add timeOfDay dummy

scoreboard objectives add death deathCount

# Main
function gstools:util/tps

execute as @e[tag=gstools_worker,type=marker,scores={gameTime=0..10}] run scoreboard players set @s averageTpsWorkerMultTen 400

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTps
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerB = @e[tag=gstools_worker,type=marker] 20
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerB -= @e[tag=gstools_worker,type=marker] globalTicWorkerA
scoreboard players add @e[tag=gstools_worker,type=marker] globalTicWorkerB 1
scoreboard players set @e[tag=gstools_worker,type=marker] globalTicWorkerA 20
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA /= @e[tag=gstools_worker,type=marker] globalTicWorkerB

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTic += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTic=20..}] run scoreboard players set @s doRun 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTic=..19}] run scoreboard players set @s doRun 0
execute as @e[tag=gstools_worker,type=marker,scores={globalTic=20..}] run scoreboard players set @s globalTic 0

execute store result score @e[tag=gstools_worker,type=marker] gstoolsWorkerCount if entity @e[tag=gstools_worker,type=marker]
execute as @e[tag=gstools_worker,type=marker,scores={gstoolsWorkerCount=2..},limit=1,sort=random] run kill @s

forceload add 0 0 0 0
execute unless entity @e[type=marker,tag=gstools_worker] run summon marker 0 100 0 {Tags:['gstools_worker']}
execute as @e[type=marker,tag=gstools_worker,tag=!loaded] run function gstools:load
execute as @e[type=marker,tag=gstools_worker,tag=!loaded] run tag @s add loaded

scoreboard players add @e[type=marker,tag=gstools_worker] tic 1

scoreboard players operation @e[tag=gstools_worker,type=marker] ticHalf = @e[tag=gstools_worker,type=marker] tic
scoreboard players operation @e[tag=gstools_worker,type=marker] ticHalf %= @e[tag=gstools_worker,type=marker] 2

scoreboard players operation @e[tag=gstools_worker,type=marker] ticQuarter = @e[tag=gstools_worker,type=marker] tic
scoreboard players operation @e[tag=gstools_worker,type=marker] ticQuarter %= @e[tag=gstools_worker,type=marker] 4

scoreboard players operation @e[tag=gstools_worker,type=marker] ticEigth = @e[tag=gstools_worker,type=marker] tic
scoreboard players operation @e[tag=gstools_worker,type=marker] ticEigth %= @e[tag=gstools_worker,type=marker] 8

scoreboard players operation @e[tag=gstools_worker,type=marker] ticTenth = @e[tag=gstools_worker,type=marker] tic
scoreboard players operation @e[tag=gstools_worker,type=marker] ticTenth %= @e[tag=gstools_worker,type=marker] 10

scoreboard players operation @e[tag=gstools_worker,type=marker] ticSecond = @e[tag=gstools_worker,type=marker] tic
scoreboard players operation @e[tag=gstools_worker,type=marker] ticSecond %= @e[tag=gstools_worker,type=marker] 20

execute as @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:util/random

execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:tagger/main

execute store result score @s numberOfCursors if entity @e[tag=gstools_cursor,type=marker]
execute if score @s numberOfCursors > @e[tag=gstools_worker,type=marker,limit=1] 500 run kill @e[tag=gstools_cursor,type=marker,limit=499,sort=random]
execute if score @s numberOfCursors > @e[tag=gstools_worker,type=marker,limit=1] 2000 run kill @e[tag=gstools_cursor,type=marker,limit=1999,sort=random]

execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:cursor/run

execute store result score @e[tag=gstools_worker,type=marker] gameTime run time query gametime
execute store result score @e[tag=gstools_worker,type=marker] timeOfDay run time query daytime

# Hud
function gstools:hud/main

# Run
execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function desirepaths:main
execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function dynamicdirt:main
execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function dynamicmonsters:main
execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function lifeanddeath:main
execute if entity @e[tag=gstools_worker,type=marker,scores={averageTps=10..}] run function enhancedsurvival:main

# On Death
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

# Credit (Message only displays once 1000 tics after starting a new world!)
execute if entity @e[tag=gstools_worker,type=marker,scores={gameTime=1000..1000}] run tellraw @a ["","Credit where credit is due! Alive Ecosystem by ",{"click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA"},"color":"dark_blue","hover_event":{"action":"show_text","value":[{"text":"Youtube Channel","color":"dark_blue"}]},"text":"The Satosus Project","underlined":true}]