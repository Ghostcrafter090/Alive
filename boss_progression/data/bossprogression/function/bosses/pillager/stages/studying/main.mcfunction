# Define

# Main
execute if entity @e[tag=gstools_worker,scores={random100=98..}] as @r run function bossprogression:bosses/pillager/stages/studying/util/getportaldistance

execute as @a[scores={ruinedPortalDistance=..100}] at @s unless entity @e[type=marker,tag=ruined_portal_node,distance=0..100] as @e[tag=gstools_cursor,sort=nearest,limit=1] run function bossprogression:bosses/pillager/stages/studying/util/getportaldistance
execute as @e[tag=gstools_cursor,scores={ruinedPortalDistance=..20}] run summon marker ~ ~ ~ {Tags:['ruined_portal_node']}