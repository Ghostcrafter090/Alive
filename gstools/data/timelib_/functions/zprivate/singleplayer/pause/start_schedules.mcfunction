#Start schedules for seconds, minutes, hours and days
execute store result storage timelib_:zprivate cmd_block.Time.Hour byte 1 run scoreboard players get #TimeLib TimeLib.Hour
execute store result storage timelib_:zprivate cmd_block.Time.Minute byte 1 run scoreboard players get #TimeLib TimeLib.Minute
execute store result storage timelib_:zprivate cmd_block.Time.Second byte 1 run scoreboard players get #TimeLib TimeLib.Second
execute store result storage timelib_:zprivate cmd_block.Time.Tick byte 1 run scoreboard players get #TimeLib TimeLib.Tick
function timelib_:zprivate/singleplayer/pause/start_schedules_2 with storage timelib_:zprivate cmd_block.Time