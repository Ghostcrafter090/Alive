playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2 1
execute if score #TimeLib.Settings.SavingsTimeChecks TimeLib matches 2 run return run tellraw @s [{"text":"🕒 TimeLib >> ","color":"#2DE1E1"},{"text":"This setting is already enabled.","color":"red"}]
scoreboard players set #TimeLib.Settings.SavingsTimeChecks TimeLib 2
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n"
function timelib_:util/settings
tellraw @s ["",{"text":"🕒 TimeLib >> ","color":"#2DE1E1"},{"text":"Successfully enabled hourly daylight savings time checks."}]
schedule clear timelib_:zprivate/timer_1h
function timelib_:util/update