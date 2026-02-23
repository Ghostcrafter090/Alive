# Define
scoreboard objectives add pillagerMiningBlockPercentage dummy
scoreboard objectives add numberOfMiningPillagers dummy
scoreboard objectives add pillagerMiningDirection dummy
scoreboard objectives add pillagerTakingDamage dummy

# Main
execute unless entity @e[type=marker,tag=gstools_worker,scores={desirePathsLoaded=1..1}] as @e[tag=mining_pillager,limit=20,sort=random] store result score @s entityVerticalMotion run data get entity @s Motion[1] 100
execute as @e[type=pillager,sort=random,limit=10] store result score @s pillagerTakingDamage run data get entity @s HurtTime

execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfMiningPillagers=..75}] as @e[type=marker,tag=gstools_vertical_cursor] at @s if block ~ ~ ~ #minecraft:air unless entity @e[tag=mining_pillager,distance=0..60] as @e[tag=gstools_cursor,sort=nearest,limit=1] if score @s verticalCursorWorker < @e[tag=gstools_worker,type=marker,limit=1] 60 run summon pillager ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["mining_pillager"],equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:stone_pickaxe",count:1},offhand:{id:"minecraft:shield",count:1}}}
execute as @e[tag=mining_pillager] at @s run function gstools:util/light_level
execute as @e[tag=mining_pillager] at @s run function gstools:util/random
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=5..}] at @s unless block ~ ~1 ~1 #gstools:air if block ~ ~1 ~ #gstools:air run fill ~ ~1 ~ ~ ~1 ~ ladder[facing=north] destroy
execute as @e[tag=mining_pillager,scores={lightLevel=..0}] at @s unless block ~ ~-1 ~ #gstools:air if block ~1 ~1 ~ #gstools:air if block ~-1 ~1 ~ #gstools:air if block ~ ~1 ~1 #gstools:air if block ~ ~1 ~-1 #gstools:air run fill ~ ~ ~ ~ ~ ~ redstone_torch replace #gstools:air
execute as @e[tag=mining_pillager,scores={lightLevel=..0}] at @s unless block ~1 ~1 ~ #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=west] replace #gstools:air
execute as @e[tag=mining_pillager,scores={lightLevel=..0}] at @s unless block ~-1 ~1 ~ #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=east] replace #gstools:air
execute as @e[tag=mining_pillager,scores={lightLevel=..0}] at @s unless block ~ ~1 ~1 #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=north] replace #gstools:air
execute as @e[tag=mining_pillager,scores={lightLevel=..0}] at @s unless block ~ ~1 ~-1 #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=south] replace #gstools:air

execute if entity @e[tag=gstools_worker,scores={random100=..50}] as @e[tag=mining_pillager,sort=random,limit=1] at @s run tag @s add make_patrol

execute as @e[tag=mining_pillager,tag=make_patrol] at @s run data modify entity @s patrol_target set from entity @e[tag=mining_pillager,distance=20..,sort=nearest,limit=1] Pos
execute as @e[tag=mining_pillager,tag=make_patrol] at @s run data merge entity @s {Patrolling:1b,CanJoinRaid:1b,PatrolLeader:1b}
execute as @e[tag=mining_pillager,tag=make_patrol] at @s run tag @s remove make_patrol

execute store result score @e[tag=gstools_worker,type=marker,limit=1] numberOfMiningPillagers if entity @e[tag=mining_pillager]

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=5..,entityVerticalMotion=-10..,random100=..5},sort=random,limit=2] at @s if block ~ ~1 ~1 #gstools:air unless predicate gstools:sky run scoreboard players operation @s pillagerMiningDirection = @s random10
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=5..,entityVerticalMotion=-10..,random100=..5},sort=random,limit=2] at @s if block ~ ~1 ~1 #gstools:air unless predicate gstools:sky run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2

execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1] at @s unless predicate gstools:sky unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection = @s random10
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1] at @s unless predicate gstools:sky unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1] at @s unless predicate gstools:sky unless entity @a[distance=0..20,gamemode=survival] if entity @e[tag=walkable,distance=1..8,type=!player] run damage @s 0.0001 mob_attack by @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1] from @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1]

execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1,scores={pillagerMiningDirection=5..}] at @s unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection = @s random10
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1,scores={pillagerMiningDirection=5..}] at @s unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1,scores={pillagerMiningDirection=5..}] at @s unless entity @a[distance=0..20,gamemode=survival] if entity @e[tag=walkable,distance=1..8,type=!player] run damage @s 0.0001 mob_attack by @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1] from @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1]

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..}] at @s if entity @a[distance=0..20,gamemode=survival] run scoreboard players set @s pillagerMiningDirection 0
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..}] at @s if entity @e[tag=walkable,distance=1..8,type=!player] run damage @s 0.0001 mob_attack by @e[tag=!tile,type=!pillager,sort=nearest,distance=1..20,limit=1] from @e[tag=!tile,type=!pillager,sort=nearest,distance=1..20,limit=1]
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..}] at @s if entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players set @s pillagerMiningDirection 0
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..4}] at @s if predicate gstools:sky run scoreboard players set @s pillagerMiningDirection 0

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..}] at @s if entity @s[scores={pillagerTakingDamage=1..}] run scoreboard players set @s pillagerMiningDirection 0


execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=0..0},tag=!not_mining] run item replace entity @s weapon.mainhand with crossbow
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=0..0},tag=!not_mining] run tag @s add not_mining
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..},tag=not_mining] run item replace entity @s weapon.mainhand with iron_pickaxe
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..},tag=not_mining] run tag @s remove not_mining

# Base Construction
execute as @e[tag=mining_pillager] at @s if entity @e[tag=gstools_worker,type=marker,scores={numberOfMiningPillagers=..60}] unless entity @e[tag=pillager_mining_outpost,type=marker,distance=0..300] if predicate gstools:sky run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost','not_setup']}

execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup] at @s run spreadplayers ~ ~ 1 10 false @s
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:['pillager_mining_outpost_component','not_setup']}
execute as @e[type=marker,tag=pillager_mining_outpost,tag=not_setup] at @s if block ~ ~-1 ~ #minecraft:dirt run tag @s remove not_setup

execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s run spreadplayers ~ ~ 1 10 false @s
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if block ~ ~-1 ~ #minecraft:dirt unless entity @e[type=marker,tag=pillager_mining_outpost_component,distance=1..6] unless block ~4 ~-1 ~4 #gstools:air unless block ~-4 ~-1 ~4 #gstools:air unless block ~4 ~-1 ~-4 #gstools:air unless block ~-4 ~-1 ~-4 #gstools:air run tag @s add do_setup
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if entity @s[tag=do_setup] run function gstools:util/random
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if entity @s[tag=do_setup,scores={random100=0..30}] run place template minecraft:pillager_outpost/feature_tent1
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if entity @s[tag=do_setup,scores={random100=31..60}] run place template minecraft:pillager_outpost/feature_tent2
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if entity @s[tag=do_setup,scores={random100=61..78}] run place template minecraft:pillager_outpost/feature_cage1
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if entity @s[tag=do_setup,scores={random100=79..90}] run place template minecraft:pillager_outpost/feature_cage2
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if entity @s[tag=do_setup,scores={random100=91..100}] run place template minecraft:pillager_outpost/feature_cage_with_allays
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if entity @s[tag=do_setup] run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace jigsaw
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if entity @s[tag=do_setup] run summon pillager ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["mining_pillager"],equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:stone_pickaxe",count:1},offhand:{id:"minecraft:shield",count:1}}}
execute as @e[type=marker,tag=pillager_mining_outpost_component,tag=not_setup] at @s if entity @s[tag=do_setup] run tag @s remove not_setup

execute as @e[tag=mining_pillager,scores={random100=0..3},limit=1,sort=random] at @s if entity @e[tag=pillager_mining_outpost_component,type=marker,distance=0..30] if predicate gstools:sky run scoreboard players set @s pillagerMiningDirection 5

effect give @e[tag=mining_pillager,scores={pillagerMiningDirection=1..}] regeneration 20 5

effect give @e[tag=mining_pillager,sort=random,limit=1] regeneration 10 0