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
scoreboard objectives add dayNumber dummy
scoreboard objectives add previousDayNumber dummy
scoreboard objectives add currentDifficulty dummy

scoreboard objectives add isSereneSeasonsPresent dummy

scoreboard objectives add death deathCount

# Main
execute store result score $worker_count gstoolsWorkerCount if entity @e[tag=gstools_worker,type=marker]
scoreboard players set $worker_count 1 1
execute if score $worker_count gstoolsWorkerCount > $worker_count 1 as @e[type=marker,tag=gstools_worker,limit=1,sort=random] run kill @s

function gstools:util/tps
execute as @e[tag=gstools_worker,type=marker] run function gstools:run_sub/28

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

execute as @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:compat/sereneseasons/main
execute unless entity @e[tag=gstools_worker,type=marker,scores={isSereneSeasonsPresent=1..1}] run function gstools:run_sub/46

forceload add 0 0 0 0
execute unless entity @e[type=marker,tag=gstools_worker] run summon marker 0 100 0 {Tags:['gstools_worker']}
execute as @e[type=marker,tag=gstools_worker,tag=!loaded] run function gstools:run_sub/51

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

execute as @e[tag=gstools_worker,type=marker] store result score @s currentDifficulty run difficulty

execute as @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:util/random

execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:tagger/main

execute store result score @s numberOfCursors if entity @e[tag=gstools_cursor,type=marker]
execute if score @s numberOfCursors > @e[tag=gstools_worker,type=marker,limit=1] 500 run kill @e[tag=gstools_cursor,type=marker,limit=499,sort=random]
execute if score @s numberOfCursors > @e[tag=gstools_worker,type=marker,limit=1] 2000 run kill @e[tag=gstools_cursor,type=marker,limit=1999,sort=random]

execute store result score @e[tag=gstools_worker,type=marker] numberOfCursors if entity @e[tag=gstools_cursor,type=marker]
execute store result score @e[tag=gstools_worker,type=marker] numberOfPlayers if entity @a
scoreboard players operation @e[tag=gstools_worker,type=marker] numberOfPlayers *= @e[tag=gstools_worker,type=marker] 2
execute store result score @e[tag=gstools_worker,type=marker] cursorTicSpeed run gamerule randomTickSpeed
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s cursorTicSpeed /= @s 3
execute as @a run scoreboard players operation @s numberOfPlayers *= @e[tag=gstools_worker,type=marker] cursorTicSpeed

execute if score @e[tag=gstools_worker,type=marker,limit=1] numberOfCursors > @e[tag=gstools_worker,type=marker,limit=1] numberOfPlayers as @a run kill @e[tag=gstools_cursor,type=marker]

execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:cursor/run

execute store result score @e[tag=gstools_worker,type=marker] gameTime run time query gametime
execute store result score @e[tag=gstools_worker,type=marker] timeOfDay run time query daytime
execute store result score @e[tag=gstools_worker,type=marker] dayNumber run time query day

# Hud
function gstools:hud/main

# Run
execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:run_sub/100
execute if entity @e[tag=gstools_worker,type=marker,scores={averageTps=10..}] run function enhancedsurvival:main


function lifeanddeath:tic
function enhancedsurvival:tic

# On Death
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

# Credit (Message only displays once 1000 tics after starting a new world!)
execute if entity @e[tag=gstools_worker,type=marker,scores={gameTime=1000..1000}] run tellraw @a ["","Credit where credit is due! Alive Ecosystem by ",{"click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA"},"color":"dark_blue","hover_event":{"action":"show_text","value":[{"text":"Youtube Channel","color":"dark_blue"}]},"text":"The Satosus Project","underlined":true}]
execute if entity @e[tag=gstools_worker,type=marker,scores={gameTime=10000..10000}] run tellraw @a ["","Second Reminder: Credit where credit is due! Alive Ecosystem by ",{"click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA"},"color":"dark_blue","hover_event":{"action":"show_text","value":[{"text":"Youtube Channel","color":"dark_blue"}]},"text":"The Satosus Project","underlined":true}]
execute if entity @e[tag=gstools_worker,type=marker,scores={gameTime=50000..50000}] run tellraw @a ["","Second Last Reminder: Credit where credit is due! Alive Ecosystem by ",{"click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA"},"color":"dark_blue","hover_event":{"action":"show_text","value":[{"text":"Youtube Channel","color":"dark_blue"}]},"text":"The Satosus Project","underlined":true}]
execute if entity @e[tag=gstools_worker,type=marker,scores={gameTime=100000..100000}] run tellraw @a ["","Last Reminder: Credit where credit is due! Alive Ecosystem by ",{"click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA"},"color":"dark_blue","hover_event":{"action":"show_text","value":[{"text":"Youtube Channel","color":"dark_blue"}]},"text":"The Satosus Project","underlined":true}]