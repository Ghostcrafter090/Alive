# Define
scoreboard objectives add pillagerMiningBlockPercentage dummy
scoreboard objectives add numberOfPillagers dummy
scoreboard objectives add pillagerMiningDirection dummy
scoreboard objectives add pillagerTakingDamage dummy

# Main
execute unless entity @e[type=marker,tag=gstools_worker,scores={desirePathsLoaded=1..1}] as @e[tag=mining_pillager,type=pillager,limit=20,sort=random] store result score @s entityVerticalMotion run data get entity @s Motion[1] 100
execute as @e[type=pillager,sort=random,limit=10] store result score @s pillagerTakingDamage run data get entity @s HurtTime

execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..55}] as @e[type=marker,tag=gstools_vertical_cursor] at @s if block ~ ~ ~ #minecraft:air unless entity @e[tag=mining_pillager,type=pillager,distance=0..60] as @e[tag=gstools_cursor,sort=nearest,limit=1] if score @s verticalCursorWorker < @e[tag=gstools_worker,type=marker,limit=1] 60 run summon pillager ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["mining_pillager"],equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:stone_pickaxe",count:1},offhand:{id:"minecraft:shield",count:1}}}
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=1] at @s run function gstools:util/light_level
execute as @e[tag=mining_pillager,type=pillager] at @s run function gstools:util/random

execute store result score @e[tag=gstools_worker,type=marker,limit=1] numberOfPillagers if entity @e[type=pillager]

execute as @e[tag=mining_pillager,type=pillager,scores={pillagerMiningDirection=0..0},tag=!not_mining,sort=random,limit=1] run item replace entity @s weapon.mainhand with crossbow
execute as @e[tag=mining_pillager,type=pillager,scores={pillagerMiningDirection=0..0},tag=!not_mining,sort=random,limit=1] run tag @s add not_mining
execute as @e[tag=mining_pillager,type=pillager,scores={pillagerMiningDirection=1..},tag=not_mining,sort=random,limit=1] run item replace entity @s weapon.mainhand with iron_pickaxe
execute as @e[tag=mining_pillager,type=pillager,scores={pillagerMiningDirection=1..},tag=not_mining,sort=random,limit=1] run tag @s remove not_mining

function bossprogression:bosses/pillager/stages/mining/ai/default
function bossprogression:bosses/pillager/stages/mining/ai/ore

# Base Construction
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=1] at @s if entity @e[tag=gstools_worker,type=marker,scores={numberOfPillagers=..60}] unless entity @e[tag=pillager_mining_outpost,type=marker,distance=0..300] if predicate gstools:sky run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random] at @s if entity @e[tag=pillager_mining_outpost,distance=1..300,limit=1] run kill @s

execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s positioned over world_surface unless block ~ ~-1 ~ minecraft:bedrock at @s run spreadplayers ~ ~ 1 10 false @s
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s positioned over world_surface if block ~ ~-1 ~ minecraft:bedrock at @s run scoreboard players set @s range 10
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s positioned over world_surface if block ~ ~-1 ~ minecraft:bedrock at @s run function gstools:util/spreadplayers3d
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt run tag @s remove not_setup

execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s positioned over world_surface unless block ~ ~-1 ~ minecraft:bedrock at @s run spreadplayers ~ ~ 1 10 false @s
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s positioned over world_surface if block ~ ~-1 ~ minecraft:bedrock at @s run scoreboard players set @s range 10
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s positioned over world_surface if block ~ ~-1 ~ minecraft:bedrock at @s run function gstools:util/spreadplayers3d
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if block ~ ~-1 ~ #minecraft:dirt unless entity @e[type=marker,tag=pillager_mining_outpost_component,distance=1..6] unless block ~4 ~-1 ~4 #gstools:air unless block ~-4 ~-1 ~4 #gstools:air unless block ~4 ~-1 ~-4 #gstools:air unless block ~-4 ~-1 ~-4 #gstools:air run tag @s add do_setup
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup] run function gstools:util/random
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup,scores={random100=0..30}] run place template minecraft:pillager_outpost/feature_tent1
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup,scores={random100=31..60}] run place template minecraft:pillager_outpost/feature_tent2
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup,scores={random100=61..78}] run place template minecraft:pillager_outpost/feature_cage1
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup,scores={random100=79..90}] run place template minecraft:pillager_outpost/feature_cage2
execute unless entity @e[tag=gstools_worker,type=marker,scores={pillagerStage=3..}] as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup,scores={random100=91..100}] run summon marker ~ ~ ~ {Tags:['attack_portal_node','pillager_made']}
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup] run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace jigsaw
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup] run summon pillager ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["mining_pillager"],equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:stone_pickaxe",count:1},offhand:{id:"minecraft:shield",count:1}}}
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup,sort=random,limit=1] at @s if entity @s[tag=do_setup] run tag @s remove not_setup

effect give @e[tag=mining_pillager,type=pillager,scores={pillagerMiningDirection=1..}] regeneration 20 5

effect give @e[tag=mining_pillager,type=pillager,sort=random,limit=1] regeneration 10 0