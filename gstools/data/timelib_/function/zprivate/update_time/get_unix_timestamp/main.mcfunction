# Decode the Base64 (Credits to BananaRedPanda)
data modify storage timelib_:zprivate Base64.Input.0 set string storage timelib_:zprivate Base64.Value 24 28
data modify storage timelib_:zprivate Base64.Input.1 set string storage timelib_:zprivate Base64.Value 28 32
data modify storage timelib_:zprivate Base64.Input.2 set string storage timelib_:zprivate Base64.Value 32 36
data modify storage timelib_:zprivate Base64.Input.3 set string storage timelib_:zprivate Base64.Value 36 40
function timelib_:zprivate/update_time/get_unix_timestamp/decode with storage timelib_:zprivate Base64.Input

# Update the date & time
function timelib_:zprivate/update_time/get_unix_timestamp/update

execute in minecraft:overworld run data modify storage timelib_:zprivate CommandBlock.Output set from block 29999999 1 29999999 LastOutput
function timelib_:zprivate/update_time/main
