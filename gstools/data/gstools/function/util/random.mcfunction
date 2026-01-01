# Define
scoreboard objectives add random dummy
scoreboard objectives add random10 dummy
scoreboard objectives add randomSigned10 dummy
scoreboard objectives add random50 dummy
scoreboard objectives add random100 dummy
scoreboard objectives add randomSigned100 dummy
scoreboard objectives add random1000 dummy
scoreboard objectives add newRandomCompatible dummy

# Main
function gstools:util/version_conflict/random_1
execute unless entity @s[scores={newRandomCompatible=1..1}] run function gstools:util/version_conflict/random_0





