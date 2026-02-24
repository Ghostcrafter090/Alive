# Main

# Define
execute at @s store result score @s ruinedPortalDistance run locate structure ruined_portal
execute at @s store result score @s ruinedPortalDistanceWorker run locate structure ruined_portal_mountain

execute if score @s ruinedPortalDistance < @s ruinedPortalDistanceWorker run scoreboard players set @s ruinedPortalDistance 0
execute unless score @s ruinedPortalDistance < @s ruinedPortalDistanceWorker run scoreboard players set @s ruinedPortalDistance 1
execute unless score @s ruinedPortalDistance < @s ruinedPortalDistanceWorker run scoreboard players operation @s ruinedPortalDistance = @s ruinedPortalDistanceWorker

execute at @s store result score @s ruinedPortalDistanceWorker run locate structure ruined_portal_desert
execute unless score @s ruinedPortalDistance < @s ruinedPortalDistanceWorker run scoreboard players set @s ruinedPortalDistance 2
execute unless score @s ruinedPortalDistance < @s ruinedPortalDistanceWorker run scoreboard players operation @s ruinedPortalDistance = @s ruinedPortalDistanceWorker