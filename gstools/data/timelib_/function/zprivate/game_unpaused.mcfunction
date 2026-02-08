# Adjust the "TicksSinceDaytimeChange" score to take the paused time into account
scoreboard players operation #TimeLib.TicksSinceDaytimeChange TimeLib += @s TimeLib.Internal.TotalWorldTime

# Run the '#timelib_:game_unpaused' event
# (Important): The number of ticks the game has been paused for can be read in the '#TimeLib.PausedTicks TimeLib' score.
scoreboard players operation #TimeLib.PausedTicks TimeLib = @s TimeLib.Internal.TotalWorldTime
function #timelib_:game_unpaused
scoreboard players reset #TimeLib.PausedTicks
