# Define
scoreboard objectives add seasonGrabberIndex dummy

# Main
execute if block 0 100 0 sereneseasons:season_sensor     
execute as @e[tag=gstools_worker,type=marker] run function gstools:compat/sereneseasons/main_sub/5

execute as @e[type=marker,tag=gstools_worker] run function gstools:compat/sereneseasons/main_sub/13

execute as @a at @s run function gstools:compat/sereneseasons/temperature
scoreboard players set @e[tag=gstools_worker,type=marker] isSereneSeasonsPresent 1