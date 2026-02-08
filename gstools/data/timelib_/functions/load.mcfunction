#Init
scoreboard objectives add TimeLib dummy
execute unless score #TimeLib.Init TimeLib matches 1 run function timelib_:init

#Tellraw
tellraw @a ["",{"text":"🕒 TimeLib >> ","color":"#2DE1E1"},{"text":"Made by CMDred","clickEvent":{"action":"open_url","value":"https://www.youtube.com/BluesProductionTeam"},"hoverEvent":{"action":"show_text","contents":[{"text":"YouTube: ","color":"dark_aqua"},{"text":"CMDred","color":"white"}]}}]
tellraw @a [{"text":"🕒 TimeLib >> ","color":"#2DE1E1"},{"text":"Click here to open the settings!","color":"yellow","clickEvent":{"action":"run_command","value":"/function timelib_:util/settings"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to open!","color":"yellow"}]}}]

#Update
execute if entity @a[limit=1] run return run function timelib_:util/update
schedule function timelib_:util/update 1s