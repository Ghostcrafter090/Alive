# Define
scoreboard objectives add entityCurrentX dummy
scoreboard objectives add entityCurrentY dummy
scoreboard objectives add entityCurrentZ dummy

scoreboard objectives add entityNewX dummy
scoreboard objectives add entityNewY dummy
scoreboard objectives add entityNewZ dummy

scoreboard objectives add range dummy
scoreboard objectives add doReverseFind dummy

# Main
scoreboard players set @s doReverseFind 1
function gstools:util/spreadplayers_underground
scoreboard players set @s doReverseFind 0