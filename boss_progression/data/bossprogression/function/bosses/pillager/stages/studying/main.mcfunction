# Define

# Main
execute if entity @e[tag=gstools_worker,scores={random100=98..}] as @r run function bossprogression:bosses/pillager/stages/studying/util/getportaldistance

execute as @a[scores={ruinedPortalDistance=..300}] at @s unless entity @e[type=marker,tag=ruined_portal_node,distance=0..400] as @e[tag=gstools_cursor,sort=nearest,limit=1,distance=0..300] run function bossprogression:bosses/pillager/stages/studying/util/getportaldistance
execute as @e[tag=gstools_cursor,scores={ruinedPortalDistance=..40}] run summon marker ~ ~ ~ {Tags:['ruined_portal_node']}

execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..85}] as @e[tag=ruined_portal_node,tag=!pillagers_spawned,type=marker,limit=1,sort=random] at @s run summon pillager ~2 ~4 ~
execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..85}] as @e[tag=ruined_portal_node,tag=!pillagers_spawned,type=marker,limit=1,sort=random] at @s run summon pillager ~-2 ~4 ~
execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..85}] as @e[tag=ruined_portal_node,tag=!pillagers_spawned,type=marker,limit=1,sort=random] at @s run summon pillager ~ ~4 ~2
execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..85}] as @e[tag=ruined_portal_node,tag=!pillagers_spawned,type=marker,limit=1,sort=random] at @s run summon pillager ~ ~4 ~-2 {PatrolLeader:1b,equipment:{head:{id:"minecraft:flow_banner_pattern",count:1,components:{"minecraft:banner_patterns":[{"pattern":"minecraft:flow","color":"black"},{"pattern":"minecraft:skull","color":"black"},{"pattern":"minecraft:triangles_top","color":"black"},{"pattern":"minecraft:triangles_bottom","color":"black"}]}},mainhand:{id:"minecraft:spyglass",count:1},offhand:{id:"minecraft:crossbow",count:1}}}
execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..85}] as @e[tag=ruined_portal_node,tag=!pillagers_spawned,type=marker,limit=1,sort=random] at @s run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost','not_setup']}
execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..85}] as @e[tag=ruined_portal_node,tag=!pillagers_spawned,type=marker,limit=1,sort=random] at @s run tag @s add pillagers_spawned