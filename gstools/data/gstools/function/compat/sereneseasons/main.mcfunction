# Define
scoreboard objectives add seasonGrabberIndex dummy

# Main
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=0..0}] run scoreboard players set @s currentSeasonDay 0
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=0..6}] run function gstools:compat/sereneseasons/place
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=1..1}] run function gstools:compat/sereneseasons/get
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=3..3}] run function gstools:compat/sereneseasons/get
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=5..5}] run function gstools:compat/sereneseasons/get
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=7..7}] run function gstools:compat/sereneseasons/get
execute as @e[tag=gstools_worker,type=marker] if entity @s[scores={seasonGrabberIndex=0..7}] run scoreboard players add @s seasonGrabberIndex 1

execute as @e[type=marker,tag=gstools_worker] if entity @s[scores={currentSeasonDay=1..60}] run function gstools:compat/sereneseasons/remove
execute as @e[type=marker,tag=gstools_worker] if entity @s[scores={currentSeasonDay=1..60}] run scoreboard players set @s seasonGrabberIndex 8
execute as @e[type=marker,tag=gstools_worker] if entity @s[scores={seasonGrabberIndex=8..}] unless entity @s[scores={currentSeasonDay=1..60}] run scoreboard players set @s seasonGrabberIndex 0