# Define
scoreboard objectives add numberOfTntStoreMarkers dummy

# Main
execute if entity @e[tag=gstools_worker,scores={random100=..50}] as @e[tag=mining_pillager,type=pillager,sort=random,limit=1] at @s run tag @s add make_patrol

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={lightLevel=..0}] at @s unless block ~ ~-1 ~ #gstools:air if block ~1 ~1 ~ #gstools:air if block ~-1 ~1 ~ #gstools:air if block ~ ~1 ~1 #gstools:air if block ~ ~1 ~-1 #gstools:air run fill ~ ~ ~ ~ ~ ~ redstone_torch replace #gstools:air
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={lightLevel=..0}] at @s unless block ~1 ~1 ~ #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=west] replace #gstools:air
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={lightLevel=..0}] at @s unless block ~-1 ~1 ~ #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=east] replace #gstools:air
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={lightLevel=..0}] at @s unless block ~ ~1 ~1 #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=north] replace #gstools:air
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={lightLevel=..0}] at @s unless block ~ ~1 ~-1 #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=south] replace #gstools:air
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={lightLevel=..0}] at @s run function gstools:util/light_level
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[tag=make_patrol] at @s run data modify entity @s patrol_target set from entity @e[tag=mining_pillager,type=pillager,distance=20..,sort=nearest,limit=1] Pos
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[tag=make_patrol] at @s run data merge entity @s {Patrolling:1b,CanJoinRaid:1b,PatrolLeader:1b}
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[tag=make_patrol] at @s run tag @s remove make_patrol

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @a[distance=0..20,gamemode=survival] run scoreboard players set @s pillagerMiningDirection 0
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @e[tag=walkable,distance=1..8,type=!player] run damage @s 0.0001 mob_attack by @e[tag=!tile,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player] from @e[tag=!tile,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player]
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players set @s pillagerMiningDirection 0
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={pillagerMiningDirection=1..4}] at @s if predicate gstools:sky run scoreboard players set @s pillagerMiningDirection 0

execute as @e[tag=mining_pillager,type=pillager,scores={random100=..2}] if entity @s[scores={pillagerMiningDirection=0..0}] at @s if entity @e[tag=walkable,distance=1..12,type=!player] run damage @s 0.0001 mob_attack by @e[tag=!tile,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player] from @e[tag=!tile,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player]
execute as @e[type=marker,tag=spawn_tnt_store] at @s unless entity @e[type=tnt,distance=0..20] unless entity @e[type=pillager,distance=0..20] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace redstone_torch
execute as @e[type=marker,tag=spawn_tnt_store] at @s unless entity @e[type=tnt,distance=0..20] unless entity @e[type=pillager,distance=0..20] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace redstone_wall_torch
execute as @e[type=marker,tag=spawn_tnt_store] at @s unless entity @e[type=tnt,distance=0..20] unless entity @e[type=pillager,distance=0..20] if block ~5 ~ ~ #c:stones run tag @s add tnt_fill_0 
execute as @e[type=marker,tag=spawn_tnt_store] at @s unless entity @e[type=tnt,distance=0..20] unless entity @e[type=pillager,distance=0..20] if block ~-5 ~ ~ #c:stones unless entity @s[tag=tnt_fill_0] run tag @s add tnt_fill_1
execute as @e[type=marker,tag=spawn_tnt_store] at @s unless entity @e[type=tnt,distance=0..20] unless entity @e[type=pillager,distance=0..20] if block ~ ~ ~5 #c:stones unless entity @s[tag=tnt_fill_0] unless entity @s[tag=tnt_fill_1] run tag @s add tnt_fill_2
execute as @e[type=marker,tag=spawn_tnt_store] at @s unless entity @e[type=tnt,distance=0..20] unless entity @e[type=pillager,distance=0..20] if block ~ ~ ~-5 #c:stones unless entity @s[tag=tnt_fill_0] unless entity @s[tag=tnt_fill_1] unless entity @s[tag=tnt_fill_2] run tag @s add tnt_fill_3

execute as @e[type=marker,tag=spawn_tnt_store] if entity @s[tag=tnt_fill_0] at @s run fill ~1 ~ ~1 ~3 ~1 ~-1 tnt replace #gstools:air
execute as @e[type=marker,tag=spawn_tnt_store] if entity @s[tag=tnt_fill_1] at @s run fill ~-1 ~ ~1 ~-3 ~1 ~-1 tnt replace #gstools:air
execute as @e[type=marker,tag=spawn_tnt_store] if entity @s[tag=tnt_fill_2] at @s run fill ~1 ~ ~1 ~-1 ~1 ~-3 tnt replace #gstools:air
execute as @e[type=marker,tag=spawn_tnt_store] if entity @s[tag=tnt_fill_3] at @s run fill ~1 ~ ~-1 ~-1 ~1 ~-3 tnt replace #gstools:air

execute as @e[type=marker,tag=spawn_tnt_store] at @s unless entity @e[type=tnt,distance=0..20] unless entity @e[type=pillager,distance=0..20] run kill @s
execute as @e[type=marker,tag=spawn_tnt_store,sort=random,limit=1] at @s if entity @e[tag=spawn_tnt_store,distance=1..10] run kill @s
execute as @e[tag=gstools_worker,type=marker] store result score @s numberOfTntStoreMarkers if entity @e[tag=spawn_tnt_store,type=marker]
execute if entity @e[tag=gstools_worker,type=marker,scores={numberOfTntStoreMarkers=10..}] run kill @e[type=marker,tag=spawn_tnt_store,limit=5,sort=random]

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @s[scores={pillagerTakingDamage=1..}] run summon tnt ~ ~ ~ {Tags:['pillager_tnt']}
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @s[scores={pillagerTakingDamage=1..}] run summon marker ~ ~ ~ {Tags:['spawn_tnt_store']}
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @s[scores={pillagerTakingDamage=1..}] run effect give @s resistance 5 5 true
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @s[scores={pillagerTakingDamage=1..}] run scoreboard players set @s pillagerMiningDirection 0

execute as @e[tag=mining_pillager,type=pillager,scores={pillagerMiningDirection=5..,entityVerticalMotion=-10..,random100=..5},sort=random,limit=2] at @s if block ~ ~1 ~1 #gstools:air unless predicate gstools:sky run scoreboard players operation @s pillagerMiningDirection = @s random10
execute as @e[tag=mining_pillager,type=pillager,scores={pillagerMiningDirection=5..,entityVerticalMotion=-10..,random100=..5},sort=random,limit=2] at @s if block ~ ~1 ~1 #gstools:air unless predicate gstools:sky run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=1] run function gstools:util/is_outside
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=1,scores={isOutside=1..1}] if entity @s[scores={pillagerMiningDirection=1..}] at @s run scoreboard players set @s pillagerMiningDirection 0

execute as @e[tag=mining_pillager,type=pillager,scores={random100=0..3},limit=1,sort=random] at @s if entity @e[tag=pillager_mining_outpost_component,type=marker,distance=0..30] if predicate gstools:sky run scoreboard players set @s pillagerMiningDirection 5

execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,type=pillager,sort=random,limit=1] at @s unless predicate gstools:sky unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection = @s random10
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,type=pillager,sort=random,limit=1] at @s unless predicate gstools:sky unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,type=pillager,sort=random,limit=1] at @s unless predicate gstools:sky unless entity @a[distance=0..20,gamemode=survival] if entity @e[tag=walkable,distance=1..8,type=!player] run damage @s 0.0001 mob_attack by @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player] from @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player]

execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,type=pillager,sort=random,limit=1,scores={pillagerMiningDirection=5..}] at @s unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection = @s random10
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,type=pillager,sort=random,limit=1,scores={pillagerMiningDirection=5..}] at @s unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,type=pillager,sort=random,limit=1,scores={pillagerMiningDirection=5..}] at @s unless entity @a[distance=0..20,gamemode=survival] if entity @e[tag=walkable,distance=1..8,type=!player] run damage @s 0.0001 mob_attack by @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player] from @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player]