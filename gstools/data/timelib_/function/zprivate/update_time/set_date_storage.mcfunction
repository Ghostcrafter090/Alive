# Set date storage
execute store result storage timelib_:temp Data.Month int 1 run scoreboard players get #TimeLib TimeLib.Month
execute store result storage timelib_:temp Data.Day int 1 run scoreboard players get #TimeLib TimeLib.Day

function timelib_:zprivate/update_time/set_date_storage_2 with storage timelib_:temp Data
data remove storage timelib_:temp Data

execute if score #TimeLib TimeLib.Day matches 10.. run data modify storage timelib_:date Day set string storage timelib_:date Day 1 3
execute if score #TimeLib TimeLib.Month matches 10.. run data modify storage timelib_:date Month.Numeric set string storage timelib_:date Month.Numeric 1 3

execute if score #TimeLib TimeLib.WeekDay matches 1 run data modify storage timelib_:date WeekDay.Long set value 'Monday'
execute if score #TimeLib TimeLib.WeekDay matches 2 run data modify storage timelib_:date WeekDay.Long set value 'Tuesday'
execute if score #TimeLib TimeLib.WeekDay matches 3 run data modify storage timelib_:date WeekDay.Long set value 'Wednesday'
execute if score #TimeLib TimeLib.WeekDay matches 4 run data modify storage timelib_:date WeekDay.Long set value 'Thursday'
execute if score #TimeLib TimeLib.WeekDay matches 5 run data modify storage timelib_:date WeekDay.Long set value 'Friday'
execute if score #TimeLib TimeLib.WeekDay matches 6 run data modify storage timelib_:date WeekDay.Long set value 'Saturday'
execute if score #TimeLib TimeLib.WeekDay matches 7 run data modify storage timelib_:date WeekDay.Long set value 'Sunday'
data modify storage timelib_:date WeekDay.Short set string storage timelib_:date WeekDay.Long 0 3

execute if score #TimeLib TimeLib.Month matches 1 run data modify storage timelib_:date Month.Long set value 'January'
execute if score #TimeLib TimeLib.Month matches 2 run data modify storage timelib_:date Month.Long set value 'February'
execute if score #TimeLib TimeLib.Month matches 3 run data modify storage timelib_:date Month.Long set value 'March'
execute if score #TimeLib TimeLib.Month matches 4 run data modify storage timelib_:date Month.Long set value 'April'
execute if score #TimeLib TimeLib.Month matches 5 run data modify storage timelib_:date Month.Long set value 'May'
execute if score #TimeLib TimeLib.Month matches 6 run data modify storage timelib_:date Month.Long set value 'June'
execute if score #TimeLib TimeLib.Month matches 7 run data modify storage timelib_:date Month.Long set value 'July'
execute if score #TimeLib TimeLib.Month matches 8 run data modify storage timelib_:date Month.Long set value 'August'
execute if score #TimeLib TimeLib.Month matches 9 run data modify storage timelib_:date Month.Long set value 'September'
execute if score #TimeLib TimeLib.Month matches 10 run data modify storage timelib_:date Month.Long set value 'October'
execute if score #TimeLib TimeLib.Month matches 11 run data modify storage timelib_:date Month.Long set value 'November'
execute if score #TimeLib TimeLib.Month matches 12 run data modify storage timelib_:date Month.Long set value 'December'
data modify storage timelib_:date Month.Short set string storage timelib_:date Month.Long 0 3

execute store result storage timelib_:date Year short 1 run scoreboard players get #TimeLib TimeLib.Year

# Get the number of days that have passed
# (Important): The number of passed days can be read in '#TimeLib.PassedDays TimeLib'.
execute store result score #TimeLib.PassedDays TimeLib run scoreboard players operation #TimeLib.CurrentDayUnixTime TimeLib -= #TimeLib.PreviousDayUnixTime TimeLib
scoreboard players operation #TimeLib.PassedDays TimeLib /= #TimeLib.86400 TimeLib

# Run event
function #timelib_:date_changed
