# Define

# Main
execute in minecraft:the_nether if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..65}] as @e[type=marker,tag=gstools_vertical_cursor,distance=0..] at @s if block ~ ~ ~ #minecraft:air unless entity @e[tag=mining_pillager,type=pillager,distance=0..60] run summon pillager ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["mining_pillager"],equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:stone_pickaxe",count:1},offhand:{id:"minecraft:shield",count:1}}}
execute in minecraft:the_nether as @e[tag=mining_pillager,type=pillager,distance=0..,limit=1,sort=random] at @s if block ~ ~-1 ~ bedrock run function gstools:util/spreadplayers3d

execute in the_nether as @e[tag=mining_pillager,type=pillager,sort=random,limit=1,distance=0..] at @s if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..60}] unless entity @e[tag=pillager_mining_outpost,type=marker,distance=0..300] if predicate gstools:spreadplayers_nether run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost','not_setup']}

execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt run tag @s remove not_setup

execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #gstools:nether_dirt unless entity @e[type=marker,tag=pillager_mining_outpost_component,distance=1..6] unless block ~4 ~-1 ~4 #gstools:air unless block ~-4 ~-1 ~4 #gstools:air unless block ~4 ~-1 ~-4 #gstools:air unless block ~-4 ~-1 ~-4 #gstools:air run tag @s add do_setup

execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup] run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace jigsaw
