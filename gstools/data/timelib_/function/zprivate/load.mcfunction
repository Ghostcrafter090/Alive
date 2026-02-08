# Version error checking
# (Note): The version increments when the data structure changes, previous behaviour changes or new utilities are added.
    # Version check: Check if TimeLib is installed twice with conflicting versions
    execute if function #timelib_:zprivate/version_check run return run function timelib_:zprivate/version_error
    scoreboard players reset #TimeLib.VersionError

    # Lantern Load
    # (Note): If the version check fails, load.status will not be set, and therefore it won't start ticking.
    scoreboard players set #TimeLib load.status 1

# Init
scoreboard objectives add TimeLib dummy
execute unless score #TimeLib TimeLib matches 1 run function timelib_:zprivate/init

# Tellraw
execute unless score #TimeLib.Settings.ShowLoadMessage TimeLib matches 0 run tellraw @a ["",{"text":"🕒 TimeLib >> ","color":"#2DE1E1"},{"text":"Made by CMDred","clickEvent":{"action":"open_url","value":"https://www.youtube.com/BluesProductionTeam"},"hoverEvent":{"action":"show_text","value":["",{"text":"SilicatYT","color":"#2DE1E1"},": TimeLib\n",{"text":"BananaRedPanda","color":"#2DE1E1"},": Base64 Decoder & Help\n\n",{"text":"YouTube: ","color":"dark_aqua"},{"text":"CMDred","color":"white"}]}},"\n   Get the latest updates: ",{"text":"Modrinth","color":"#5491F7","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/timelib_"},"hoverEvent":{"action":"show_text","value":["Open page"]}},", ",{"text":"GitHub","color":"#5491F7","clickEvent":{"action":"open_url","value":"https://github.com/CMDred/timelib_"},"hoverEvent":{"action":"show_text","value":["Open page"]}},{"text":"\n   Click here to open the settings!","color":"yellow","clickEvent":{"action":"run_command","value":"/function timelib_:util/settings"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to open!","color":"yellow"}]}}]

# Tick
function timelib_:zprivate/tick
