$data modify storage timelib_:zprivate b64.unix set value $(0)$(1)$(2)$(3)d
execute store result score #TimeLib TimeLib.UnixTime run data get storage timelib_:zprivate b64.unix 0.01