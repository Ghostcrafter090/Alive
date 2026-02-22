# Define
scoreboard objectives add pillagerMiningBlockPercentage dummy
scoreboard objectives add numberOfMiningPillagers dummy
scoreboard objectives add pillagerMiningDirection dummy

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfMiningPillagers=..75}] as @e[type=marker,tag=gstools_vertical_cursor] at @s if block ~ ~ ~ #minecraft:air unless entity @e[tag=mining_pillager,distance=0..60] as @e[tag=gstools_cursor,sort=nearest,limit=1] if score @s verticalCursorWorker < @e[tag=gstools_worker,type=marker,limit=1] 60 run summon pillager ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["mining_pillager"],equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:stone_pickaxe",count:1},offhand:{id:"minecraft:shield",count:1}}}
execute as @e[tag=mining_pillager] at @s run function gstools:util/light_level
execute as @e[tag=mining_pillager] at @s run function gstools:util/random
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

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..1}] at @s if block ~1 ~ ~ #gstools:air if block ~1 ~1 ~ #gstools:air facing ~1 ~ ~ run tp @s ~0.1 ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=2..2}] at @s if block ~-1 ~ ~ #gstools:air if block ~-1 ~1 ~ #gstools:air facing ~-1 ~ ~ run tp @s ~-0.1 ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=3..3}] at @s if block ~ ~ ~1 #gstools:air if block ~ ~1 ~1 #gstools:air facing ~ ~ ~1 run tp @s ~ ~ ~0.1 ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=4..4}] at @s if block ~ ~ ~-1 #gstools:air if block ~ ~1 ~-1 #gstools:air facing ~ ~ ~-1 run tp @s ~ ~ ~-0.1 ~ ~

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..1,random100=..20}] at @s facing ~1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=2..2,random100=..20}] at @s facing ~-1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=3..3,random100=..20}] at @s facing ~ ~ ~1 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=4..4,random100=..20}] at @s facing ~ ~ ~-1 run tp @s ~ ~ ~ ~ ~

execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1] at @s unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=is_human,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection = @s random10
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1] at @s unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=is_human,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..}] at @s if entity @a[distance=0..20,gamemode=survival] run scoreboard players set @s pillagerMiningDirection 0
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..}] at @s if entity @e[tag=is_human,distance=1..8,type=!player] run scoreboard players set @s pillagerMiningDirection 0
