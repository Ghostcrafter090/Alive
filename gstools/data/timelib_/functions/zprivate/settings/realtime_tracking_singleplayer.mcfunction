playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2 1
execute if score #TimeLib.Settings.RealtimeTracking TimeLib matches 1 run return run tellraw @s [{"text":"🕒 TimeLib >> ","color":"#2DE1E1"},{"text":"This setting is already selected.","color":"red"}]
scoreboard players set #TimeLib.Settings.RealtimeTracking TimeLib 1
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n"
function timelib_:util/settings
tellraw @s ["",{"text":"🕒 TimeLib >> ","color":"#2DE1E1"},{"text":"Successfully selected 'Singleplayer'."}]
scoreboard objectives add TimeLib.TotalWorldTime minecraft.custom:minecraft.total_world_time
scoreboard objectives add TimeLib.Tick dummy
schedule clear timelib_:zprivate/timer_1s
function timelib_:util/update
function timelib_:zprivate/singleplayer/pause/detect