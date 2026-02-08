# Play a sound and open the settings
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2 1
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

execute store result storage timelib_:temporary Data.CommandBlockOffset int 0.00027777778 run scoreboard players get #TimeLib.Settings.CommandBlockOffset TimeLib
execute store result storage timelib_:temporary Data.TimeZoneOffset int 0.00027777778 run scoreboard players get #TimeLib.Settings.TimeZoneOffset TimeLib

function timelib_:zprivate/settings/tellraw with storage timelib_:temporary Data
data remove storage timelib_:temporary Data
