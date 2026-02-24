# Define

# Main
execute if entity @e[tag=gstools_worker,scores={random100=..50}] as @e[tag=mining_pillager,sort=random,limit=1] at @s run tag @s add make_patrol

execute as @e[tag=mining_pillager] if entity @s[scores={pillagerMiningDirection=5..}] at @s unless block ~ ~1 ~1 #gstools:air if block ~ ~1 ~ #gstools:air run fill ~ ~1 ~ ~ ~1 ~ ladder[facing=north] destroy
execute as @e[tag=mining_pillager] if entity @s[scores={lightLevel=..0}] at @s unless block ~ ~-1 ~ #gstools:air if block ~1 ~1 ~ #gstools:air if block ~-1 ~1 ~ #gstools:air if block ~ ~1 ~1 #gstools:air if block ~ ~1 ~-1 #gstools:air run fill ~ ~ ~ ~ ~ ~ redstone_torch replace #gstools:air
execute as @e[tag=mining_pillager] if entity @s[scores={lightLevel=..0}] at @s unless block ~1 ~1 ~ #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=west] replace #gstools:air
execute as @e[tag=mining_pillager] if entity @s[scores={lightLevel=..0}] at @s unless block ~-1 ~1 ~ #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=east] replace #gstools:air
execute as @e[tag=mining_pillager] if entity @s[scores={lightLevel=..0}] at @s unless block ~ ~1 ~1 #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=north] replace #gstools:air
execute as @e[tag=mining_pillager] if entity @s[scores={lightLevel=..0}] at @s unless block ~ ~1 ~-1 #gstools:air run fill ~ ~1 ~ ~ ~1 ~ redstone_wall_torch[facing=south] replace #gstools:air

execute as @e[tag=mining_pillager] if entity @s[tag=make_patrol] at @s run data modify entity @s patrol_target set from entity @e[tag=mining_pillager,distance=20..,sort=nearest,limit=1] Pos
execute as @e[tag=mining_pillager] if entity @s[tag=make_patrol] at @s run data merge entity @s {Patrolling:1b,CanJoinRaid:1b,PatrolLeader:1b}
execute as @e[tag=mining_pillager] if entity @s[tag=make_patrol] at @s run tag @s remove make_patrol

execute as @e[tag=mining_pillager] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @a[distance=0..20,gamemode=survival] run scoreboard players set @s pillagerMiningDirection 0
execute as @e[tag=mining_pillager] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @e[tag=walkable,distance=1..8,type=!player] run damage @s 0.0001 mob_attack by @e[tag=!tile,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player] from @e[tag=!tile,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player]
execute as @e[tag=mining_pillager] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players set @s pillagerMiningDirection 0
execute as @e[tag=mining_pillager] if entity @s[scores={pillagerMiningDirection=1..4}] at @s if predicate gstools:sky run scoreboard players set @s pillagerMiningDirection 0

execute as @e[tag=mining_pillager] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @s[scores={pillagerTakingDamage=1..}] run summon villager ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10000,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1}]}
execute as @e[tag=mining_pillager] if entity @s[scores={pillagerMiningDirection=1..}] at @s if entity @s[scores={pillagerTakingDamage=1..}] run scoreboard players set @s pillagerMiningDirection 0

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=5..,entityVerticalMotion=-10..,random100=..5},sort=random,limit=2] at @s if block ~ ~1 ~1 #gstools:air unless predicate gstools:sky run scoreboard players operation @s pillagerMiningDirection = @s random10
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=5..,entityVerticalMotion=-10..,random100=..5},sort=random,limit=2] at @s if block ~ ~1 ~1 #gstools:air unless predicate gstools:sky run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2

execute as @e[tag=mining_pillager,scores={random100=0..3},limit=1,sort=random] at @s if entity @e[tag=pillager_mining_outpost_component,type=marker,distance=0..30] if predicate gstools:sky run scoreboard players set @s pillagerMiningDirection 5

execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1] at @s unless predicate gstools:sky unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection = @s random10
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1] at @s unless predicate gstools:sky unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1] at @s unless predicate gstools:sky unless entity @a[distance=0..20,gamemode=survival] if entity @e[tag=walkable,distance=1..8,type=!player] run damage @s 0.0001 mob_attack by @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player] from @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player]

execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1,scores={pillagerMiningDirection=5..}] at @s unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection = @s random10
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1,scores={pillagerMiningDirection=5..}] at @s unless entity @a[distance=0..20,gamemode=survival] unless entity @e[tag=walkable,distance=1..8,type=!player] run scoreboard players operation @s pillagerMiningDirection /= @e[tag=gstools_worker,type=marker] 2
execute if entity @e[tag=gstools_worker,scores={random100=..10}] as @e[tag=mining_pillager,sort=random,limit=1,scores={pillagerMiningDirection=5..}] at @s unless entity @a[distance=0..20,gamemode=survival] if entity @e[tag=walkable,distance=1..8,type=!player] run damage @s 0.0001 mob_attack by @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player] from @e[tag=walkable,type=!pillager,sort=nearest,distance=1..20,limit=1,type=!player]
