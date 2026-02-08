# Define
scoreboard objectives add seasonGrabberIndex dummy

# Main
execute if block 0 100 0 sereneseasons:season_sensor
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=0..0}] run scoreboard players set @s currentSeasonDay 0
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=0..99}] run function gstools:compat/sereneseasons/place
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=24..24}] run function gstools:compat/sereneseasons/get
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=49..49}] run function gstools:compat/sereneseasons/get
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=74..74}] run function gstools:compat/sereneseasons/get
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=99..99}] run function gstools:compat/sereneseasons/get
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=0..99}] run scoreboard players add @s seasonGrabberIndex 1

execute as @e[type=marker,tag=gstools_worker] if entity @s[scores={currentSeasonDay=1..60}] run function gstools:compat/sereneseasons/remove
execute as @e[type=marker,tag=gstools_worker] if entity @s[scores={currentSeasonDay=1..60}] run scoreboard players set @s seasonGrabberIndex 100
execute as @e[type=marker,tag=gstools_worker] if entity @s[scores={seasonGrabberIndex=100..}] unless entity @s[scores={currentSeasonDay=1..60}] run scoreboard players set @s seasonGrabberIndex 0

execute as @a at @s run function gstools:compat/sereneseasons/temperature
scoreboard players set @e[tag=gstools_worker,type=marker] isSereneSeasonsPresent 1