# Define
scoreboard objectives add ruinedPortalDistance dummy
scoreboard objectives add ruinedPortalDistanceWorker dummy
scoreboard objectives add ruinedPortalDistanceType dummy

# Main
execute unless entity @p[scores={ruinedPortalDistance=..1000}] run function bossprogression:bosses/pillager/stages/studying/util/getportaldistance/getclosest
execute if entity @p[scores={ruinedPortalDistance=..1000}] if entity @p[scores={ruinedPortalDistanceType=0..0}] at @s store result score @s ruinedPortalDistance run locate structure ruined_portal
execute if entity @p[scores={ruinedPortalDistance=..1000}] if entity @p[scores={ruinedPortalDistanceType=1..1}] at @s store result score @s ruinedPortalDistance run locate structure ruined_portal_mountain
execute if entity @p[scores={ruinedPortalDistance=..1000}] if entity @p[scores={ruinedPortalDistanceType=2..2}] at @s store result score @s ruinedPortalDistance run locate structure ruined_portal_desert