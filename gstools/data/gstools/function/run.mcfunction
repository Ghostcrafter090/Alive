# Define
scoreboard objectives add tic dummy
scoreboard objectives add ticHalf dummy
scoreboard objectives add ticQuarter dummy
scoreboard objectives add ticEigth dummy
scoreboard objectives add ticTenth dummy
scoreboard objectives add ticSecond dummy
scoreboard objectives add globalTicWorkerA dummy
scoreboard objectives add globalTicWorkerB dummy
scoreboard objectives add globalTicWorkerC dummy
scoreboard objectives add gstoolsWorkerCount dummy
scoreboard objectives add gameTime dummy
scoreboard objectives add timeOfDay dummy
scoreboard objectives add dayNumber dummy
scoreboard objectives add previousDayNumber dummy
scoreboard objectives add currentDifficulty dummy
scoreboard objectives add cursorTic dummy

scoreboard objectives add globalTic dummy
scoreboard objectives add globalTicDesirePaths dummy
scoreboard objectives add globalTicBlockDecay dummy
scoreboard objectives add globalTicDynamicDirt dummy
scoreboard objectives add globalTicDynamicEcosystems dummy
scoreboard objectives add globalTicEnhancedSurvival dummy
scoreboard objectives add globalTicLifeAndDeath dummy
scoreboard objectives add globalTicDynamicMonsters dummy
scoreboard objectives add globalTicBossProgression dummy

scoreboard objectives add hasGivenDailyPatreonReminder dummy

scoreboard objectives add doRun dummy
scoreboard objectives add doRunDesirePaths dummy
scoreboard objectives add doRunBlockDecay dummy
scoreboard objectives add doRunDynamicDirt dummy
scoreboard objectives add doRunDynamicEcosystems dummy
scoreboard objectives add doRunEnhancedSurvival dummy
scoreboard objectives add doRunLifeAndDeath dummy
scoreboard objectives add doRunDynamicMonsters dummy
scoreboard objectives add doRunBossProgression dummy

scoreboard objectives add hasGivenFirstMessage dummy
scoreboard objectives add hasGivenSecondMessage dummy
scoreboard objectives add hasGivenThirdMessage dummy
scoreboard objectives add hasGivenFourthMessage dummy

scoreboard objectives add disableBeggerMode dummy

scoreboard objectives add isSereneSeasonsPresent dummy

scoreboard objectives add death deathCount

# Main
# kill @e[type=wither_skull]

forceload add 0 0 0 0
execute store result score $worker_count gstoolsWorkerCount if entity @e[tag=gstools_worker,type=marker]
scoreboard players set $worker_count 1 1
execute if score $worker_count gstoolsWorkerCount > $worker_count 1 as @e[type=marker,tag=gstools_worker] run kill @s

function gstools:lagcontrol/tps
execute as @e[tag=gstools_worker,type=marker] unless score @s previousDayNumber = @s dayNumber run function gstools:timed/day
execute as @e[tag=gstools_worker,type=marker] unless score @s previousDayNumber = @s dayNumber run scoreboard players operation @s previousDayNumber = @s dayNumber

execute as @e[tag=gstools_worker,type=marker,scores={gameTime=0..10}] run scoreboard players set @s averageTpsWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={gameTime=0..10}] run scoreboard players set @s averageTpsDesirePathsWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={gameTime=0..10}] run scoreboard players set @s averageTpsDynamicDirtWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={gameTime=0..10}] run scoreboard players set @s averageTpsBlockDecayWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={gameTime=0..10}] run scoreboard players set @s averageTpsDynamicEcosystemsWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={gameTime=0..10}] run scoreboard players set @s averageTpsEnhancedSurvivalWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={gameTime=0..10}] run scoreboard players set @s averageTpsLifeAndDeathWorkerMultTen 400
execute as @e[tag=gstools_worker,type=marker,scores={gameTime=0..10}] run scoreboard players set @s averageTpsBossProgressionWorkerMultTen 400

execute if entity @e[type=marker,tag=gstools_worker,scores={ticSecond=5..5}] run schedule function gstools:extension/randomize 1t append

scoreboard players operation @e[tag=gstools_worker,type=marker] globalTicWorkerA = @e[tag=gstools_worker,type=marker] averageTps
function gstools:extension/dorunmath
scoreboard players operation @e[tag=gstools_worker,type=marker] globalTic += @e[tag=gstools_worker,type=marker] globalTicWorkerA
execute as @e[tag=gstools_worker,type=marker,scores={globalTic=20..,averageTps=19..20}] run scoreboard players set @s doRun 1
execute as @e[tag=gstools_worker,type=marker,scores={globalTic=..19,averageTps=19..20}] run scoreboard players set @s doRun 0
execute as @e[tag=gstools_worker,type=marker,scores={globalTic=20..,averageTps=19..20}] run scoreboard players set @s globalTic 0

function gstools:extension/calculateruntrigger

execute as @e[tag=gstools_cursor] if entity @s[tag=spread_from_self] run scoreboard players add @s waitCursorAge 1
execute as @e[tag=gstools_cursor] if entity @s[tag=spread_from_self] if entity @s[scores={waitCursorAge=3..}] run kill @s

execute as @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:compat/sereneseasons/main
execute unless entity @e[tag=gstools_worker,type=marker,scores={isSereneSeasonsPresent=1..1}] run scoreboard players set @e[tag=gstools_worker,type=marker] currentSeasonDay 6
execute unless entity @e[tag=gstools_worker,type=marker,scores={isSereneSeasonsPresent=1..1}] as @a at @s run function gstools:compat/sereneseasons/temperature

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

execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] run schedule function gstools:lagcontrol/culling 1t append
execute if entity @e[tag=gstools_worker,type=marker,scores={ticSecond=1..1}] run schedule function gstools:lagcontrol/getsimulationdistance 10t append

execute as @e[tag=gstools_worker,type=marker,scores={ticSecond=1..1}] store result score @s currentDifficulty run difficulty

execute as @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:util/random

execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run function gstools:tagger/main

execute store result score @s numberOfCursors if entity @e[tag=gstools_cursor,type=marker]
execute if score @s numberOfCursors > @e[tag=gstools_worker,type=marker,limit=1] 500 run kill @e[tag=gstools_cursor,tag=!gstools_cursor_pre,type=marker,limit=499,sort=random]
execute if score @s numberOfCursors > @e[tag=gstools_worker,type=marker,limit=1] 2000 run kill @e[tag=gstools_cursor,tag=!gstools_cursor_pre,type=marker,limit=1999,sort=random]

execute store result score @e[tag=gstools_worker,type=marker] numberOfCursors if entity @e[tag=gstools_cursor,type=marker,tag=!spread_from_self]
execute store result score @e[tag=gstools_worker,type=marker] numberOfPlayers if entity @a
scoreboard players operation @e[tag=gstools_worker,type=marker] numberOfPlayers *= @e[tag=gstools_worker,type=marker] 2

scoreboard players set @e[tag=gstools_worker,type=marker] cursorTicSpeed 3
function gstools:version_conflict/gamerule_0
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s cursorTicSpeed /= @s 3
execute as @a run scoreboard players operation @s numberOfPlayers *= @e[tag=gstools_worker,type=marker] cursorTicSpeed

execute if score @e[tag=gstools_worker,type=marker,limit=1] numberOfCursors > @e[tag=gstools_worker,type=marker,limit=1] numberOfPlayers as @a run kill @e[tag=gstools_cursor,type=marker,tag=!spread_from_self]

execute if entity @e[tag=gstools_worker,type=marker,scores={doRun=1..1}] run schedule function gstools:cursor/run 1t append
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunDynamicDirt=1..1}] run schedule function gstools:cursor/run 1t replace
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunDynamicEcosystems=1..1}] run schedule function gstools:cursor/run 1t replace
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunBlockDecay=1..1}] run schedule function gstools:cursor/run 1t replace
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunBossProgression=1..1}] run schedule function gstools:cursor/run 1t replace

execute store result score @e[tag=gstools_worker,type=marker] gameTime run time query gametime
execute store result score @e[tag=gstools_worker,type=marker] timeOfDay run time query daytime
execute store result score @e[tag=gstools_worker,type=marker] dayNumber run time query day

# Hud
function gstools:hud/main

# Run
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunDesirePaths=1..1}] run schedule function gstools:extension/desirepaths/run 1t append
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunDynamicDirt=1..1}] run schedule function gstools:extension/dynamicdirt/run 1t append
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunDynamicEcosystems=1..1}] run schedule function gstools:extension/dynamicecosystems/run 1t append
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunBlockDecay=1..1}] run schedule function gstools:extension/blockdecay/run 1t append
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunDynamicMonsters=1..1}] run schedule function gstools:extension/dynamicmonsters/run 1t append
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunLifeAndDeath=1..1}] run schedule function gstools:extension/lifeanddeath/run 1t append
execute if entity @e[tag=gstools_worker,type=marker,scores={doRunBossProgression=1..1}] run schedule function gstools:extension/bossprogression/run 1t append

execute if entity @e[tag=gstools_worker,type=marker,scores={averageTps=10..}] run function enhancedsurvival:main


function lifeanddeath:tic
function enhancedsurvival:tic
function bossprogression:tic

# On Death
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

# Credit (Message only displays once 1000 tics after starting a new world!)
execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={gameTime=1000..}] unless entity @s[scores={hasGivenFirstMessage=1..1}] unless score $beggerNode disableBeggerMode = @s 1 run tellraw @a ["","Credit where credit is due! Alive Mod Ecosystem by ",{"click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA"},"color":"dark_blue","hover_event":{"action":"show_text","value":[{"text":"Youtube Channel","color":"dark_blue"}]},"text":"The Satosus Project","underlined":true}]
execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={gameTime=10000..}] unless entity @s[scores={hasGivenSecondMessage=1..1}] unless score $beggerNode disableBeggerMode = @s 1 run tellraw @a ["","Second Reminder: Credit where credit is due! Alive Ecosystem by ",{"click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA"},"color":"dark_blue","hover_event":{"action":"show_text","value":[{"text":"Youtube Channel","color":"dark_blue"}]},"text":"The Satosus Project","underlined":true}]
execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={gameTime=50000..}] unless entity @s[scores={hasGivenThirdMessage=1..1}] unless score $beggerNode disableBeggerMode = @s 1 run tellraw @a ["","Second Last Reminder: Credit where credit is due! Alive Ecosystem by ",{"click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA"},"color":"dark_blue","hover_event":{"action":"show_text","value":[{"text":"Youtube Channel","color":"dark_blue"}]},"text":"The Satosus Project","underlined":true}]
execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={gameTime=100000..}] unless entity @s[scores={hasGivenFourthMessage=1..1}] unless score $beggerNode disableBeggerMode = @s 1 run tellraw @a ["","Last Reminder: Credit where credit is due! Alive Ecosystem by ",{"click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA"},"color":"dark_blue","hover_event":{"action":"show_text","value":[{"text":"Youtube Channel","color":"dark_blue"}]},"text":"The Satosus Project","underlined":true}]

execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={gameTime=1000..}] unless entity @s[scores={hasGivenFirstMessage=1..1}] run scoreboard players set @s hasGivenFirstMessage 1
execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={gameTime=10000..}] unless entity @s[scores={hasGivenSecondMessage=1..1}] run scoreboard players set @s hasGivenSecondMessage 1
execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={gameTime=50000..}] unless entity @s[scores={hasGivenThirdMessage=1..1}] run scoreboard players set @s hasGivenThirdMessage 1
execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={gameTime=100000..}] unless entity @s[scores={hasGivenFourthMessage=1..1}] run scoreboard players set @s hasGivenFourthMessage 1

# Patreon Message
execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={timeOfDay=..3000}] unless entity @s[scores={hasGivenDailyPatreonReminder=1..1}] unless score $beggerNode disableBeggerMode = @s 1 run tellraw @a ["","[ ",{"color":"dark_blue","obfuscated":true,"text":"XX"},{"color":"green","text":" REMINDER"},{"color":"dark_blue","obfuscated":true,"text":" XX"},{"text":" ]\nIf you have funds to spare, and you enjoy the "},{"color":"red","text":"Alive Mod Ecosystem"},", please consider supporting us (",{"color":"dark_purple","text":"The Satosus Project"},{"text":") on patreon! Times are hard right now and every little bit helps!\n("},{"click_event":{"action":"open_url","url":"https://www.patreon.com/cw/the_satosus_project"},"color":"blue","hover_event":{"action":"show_text","contents":"https://www.patreon.com/cw/the_satosus_project","value":[{"text":""}]},"text":"Patreon Link"},{"text":")\n\nA patch mod to disable this message will eventually be available on our patreon!"}]
execute if entity @p as @e[tag=gstools_worker,type=marker] if entity @s[scores={timeOfDay=..3000}] unless entity @s[scores={hasGivenDailyPatreonReminder=1..1}] unless score $beggerNode disableBeggerMode = @s 1 run scoreboard players set @s hasGivenDailyPatreonReminder 1
execute if entity @p as @e[tag=gstools_worker,type=marker] unless entity @s[scores={timeOfDay=..3000}] if entity @s[scores={hasGivenDailyPatreonReminder=1..1}] unless score $beggerNode disableBeggerMode = @s 1 run scoreboard players set @s hasGivenDailyPatreonReminder 0

scoreboard players set $beggerNode disableBeggerMode 0