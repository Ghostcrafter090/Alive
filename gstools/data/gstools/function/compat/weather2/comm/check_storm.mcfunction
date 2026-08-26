# Define
scoreboard objectives add _nearSevereWeather dummy
scoreboard objectives add nearSevereWeather dummy
scoreboard objectives add PosEntityY dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] isExpandedWeather2DynamicsPresent 0
function gstools:compat/weather2/comm/version_conflict/weather2expanded
execute unless entity @e[tag=gstools_worker,type=marker,scores={isExpandedWeather2DynamicsPresent=1..1}] run function gstools:compat/weather2/comm/version_conflict/weather2expanded
