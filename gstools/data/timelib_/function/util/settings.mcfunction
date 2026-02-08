# Version error checking
execute if score #TimeLib.VersionError load.status matches 1 run return run function timelib_:zprivate/version_error

# Check if TimeLib is installed
execute unless score #TimeLib load.status matches 1.. run return run function timelib_:zprivate/not_installed_error

# Settings
playsound minecraft:ui.loom.select_pattern master @s

execute store result storage timelib_:temporary Data.CommandBlockOffset int 0.00027777778 run scoreboard players get #TimeLib.Settings.CommandBlockOffset TimeLib
execute store result storage timelib_:temporary Data.TimeZoneOffset int 0.00027777778 run scoreboard players get #TimeLib.Settings.TimeZoneOffset TimeLib

function timelib_:zprivate/settings/tellraw with storage timelib_:temporary Data
data remove storage timelib_:temporary Data
