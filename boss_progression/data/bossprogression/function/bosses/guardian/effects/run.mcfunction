# Define
scoreboard objectives add undeadHydrationConversionOverride dummy
scoreboard objectives add lastWeather2StormSpawn dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] guardianEffectsAreActive 1

weather thunder 1000
execute if entity @e[tag=gstools_worker,scores={timeOfDay=0..12500}] run time add 3t
execute as @a at @s run particle bubble ~ ~ ~ 40 40 40 0 50
execute as @a at @s run particle dripping_water ~ ~ ~ 40 40 40 0 50

execute as @e[type=zombie] unless entity @s[scores={undeadHydrationConversionOverride=0..}] run scoreboard players set @s undeadHydrationConversionOverride 1800
scoreboard players remove @e[type=zombie] undeadHydrationConversionOverride 1
execute as @e[type=zombie] if entity @s[scores={undeadHydrationConversionOverride=0..}] at @s run particle minecraft:falling_water ~ ~ ~ 0.5 1 0.5 0 10
execute as @e[type=husk] unless entity @s[scores={undeadHydrationConversionOverride=0..}] run scoreboard players set @s undeadHydrationConversionOverride 1800
scoreboard players remove @e[type=husk] undeadHydrationConversionOverride 1
execute as @e[type=husk] if entity @s[scores={undeadHydrationConversionOverride=0..}] at @s run particle minecraft:falling_water ~ ~ ~ 0.5 1 0.5 0 2
execute as @e[type=skeleton] unless entity @s[scores={undeadHydrationConversionOverride=0..}] run scoreboard players set @s undeadHydrationConversionOverride 1800
scoreboard players remove @e[type=skeleton] undeadHydrationConversionOverride 1
execute as @e[type=skeleton] if entity @s[scores={undeadHydrationConversionOverride=0..}] at @s run particle minecraft:falling_water ~ ~ ~ 0.5 1 0.5 0 10

execute as @e[type=husk,scores={undeadHydrationConversionOverride=..0},sort=random,limit=5] run tag @s add replace_husk_to_zombie
execute as @e[type=skeleton,scores={undeadHydrationConversionOverride=..0},sort=random,limit=5] run tag @s add replace_skeleton_to_bogged

execute as @e[type=husk,tag=replace_husk_to_zombie,limit=1,sort=random] at @s run tag @s add replace_working
execute as @e[type=husk,tag=replace_husk_to_zombie,tag=replace_working] at @s run summon zombie ~ ~ ~ {Tags:['zombie_not_setup']}
execute as @e[type=zombie,tag=zombie_not_setup] run data modify entity @s {} set from entity @e[type=husk,tag=replace_husk_to_zombie,tag=replace_working,limit=1,sort=nearest]
execute as @e[type=husk,tag=replace_husk_to_zombie,tag=replace_working] at @s run tp @s ~ -500 ~
execute as @e[type=husk,tag=replace_husk_to_zombie,tag=replace_working] at @s run kill @s
execute as @e[type=zombie,tag=zombie_not_setup] run tag @s remove zombie_not_setup

function bossprogression:bosses/guardian/effects/version_conflict/bogged
function bossprogression:bosses/guardian/effects/version_conflict/parched

execute as @e[type=zombie] store result entity @s DrownedConversionTime int 1 run scoreboard players get @s undeadHydrationConversionOverride

data merge entity @e[tag=fish,limit=1,sort=random] {Air:1000,NoGravity:1b}

execute as @e[tag=fish,sort=random,limit=1,type=!elder_guardian] at @s if block ~ ~ ~ water[level=0] run data modify entity @s Motion[1] set value 1

execute as @e[tag=fish,sort=random,limit=10] at @s unless block ~ ~ ~ water[level=0] run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 10
execute as @e[type=drowned,sort=random,limit=10] at @s unless block ~ ~ ~ water[level=0] run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 10
execute as @e[type=bogged,sort=random,limit=10] at @s unless block ~ ~ ~ water[level=0] run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 10
execute as @e[type=zombie,sort=random,limit=10] at @s unless block ~ ~ ~ water[level=0] run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 1
execute as @e[type=skeleton,sort=random,limit=10] at @s unless block ~ ~ ~ water[level=0] run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 1
execute as @e[type=stray,sort=random,limit=10] at @s unless block ~ ~ ~ water[level=0] run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 2

execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={random100=..5}] as @e[type=creeper,sort=random,limit=1] at @s unless block ~ ~ ~ water[level=0] run data modify entity @s powered set value 1b
execute if entity @e[tag=gstools_worker,type=marker,limit=1,scores={random100=95..}] as @e[type=creeper,sort=random,limit=1] at @s unless block ~ ~ ~ water[level=0] run data modify entity @s powered set value 0b

execute as @e[type=marker,tag=gstools_vertical_cursor] at @s if block ~ ~ ~ #gstools:air unless entity @e[type=guardian,distance=0..100] run summon guardian ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=marker,tag=gstools_vertical_cursor] at @s if block ~ ~ ~ #gstools:air unless entity @e[type=squid,distance=0..75] run summon squid ~ ~ ~ {PersistenceRequired:1b}

execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=4000..}] run kill @e[type=marker,tag=weather2_node]
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=4000..}] as @a at @s run function gstools:compat/weather2/comm/kill_all_storms
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=4000..}] run scoreboard players set @s lastWeather2StormSpawn -521

execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=-500..-1}] run kill @e[type=marker,tag=weather2_node]
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=-500..-1}] as @a run function gstools:util/random
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=-500..-1}] as @a at @s run summon marker ~ ~ ~ {Tags:['weather2_node']}
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=-500..-1}] as @a if entity @s[scores={random100=..50}] at @s run function gstools:compat/weather2/comm/summon/thunder
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=-500..-1}] as @a if entity @s[scores={random100=51..}] at @s run function gstools:compat/weather2/comm/summon/hail
execute as @e[tag=gstools_worker,type=marker,scores={lastWeather2StormSpawn=-500..-1}] run scoreboard players set @s lastWeather2StormSpawn 0

execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s 41 -= @s averageTpsBossProgression
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s 41 -= @s averageTps
execute as @e[tag=gstools_worker,type=marker,scores={21=..0}] run scoreboard players set @s 41 1
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s lastWeather2StormSpawn += @s 41
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s 41 41

execute as @e[type=elder_guardian,scores={nearSevereWeather=1..1}] run tag @s remove elder_guardian_hurricane_spawned
execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0},tag=!elder_guardian_hurricane_spawned] run kill @e[tag=weather2_node]
execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0},tag=!elder_guardian_hurricane_spawned] at @s run summon marker ~ ~ ~ {Tags:['weather2_node']}
execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0},tag=!elder_guardian_hurricane_spawned] at @s run function gstools:compat/weather2/comm/summon/tornado_f0
execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0},tag=!elder_guardian_hurricane_spawned] run tag @s add elder_guardian_hurricane_spawned

execute as @e[tag=fish,limit=5,sort=random] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 water replace ice
execute as @e[type=guardian,limit=10,sort=random] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 water replace ice

execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0},tag=elder_guardian_hurricane_spawned] run scoreboard players operation @e[tag=gstools_worker,type=marker] 21 -= @e[tag=gstools_worker,type=marker] averageTpsBossProgression

execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0},tag=elder_guardian_hurricane_spawned] run scoreboard players set @e[tag=gstools_worker,type=marker,scores={21=..0}] 21 1
execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0},tag=elder_guardian_hurricane_spawned] run scoreboard players operation @s lastWeather2StormSpawn += @e[tag=gstools_worker,type=marker] 21
execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0},tag=elder_guardian_hurricane_spawned] run scoreboard players set @e[tag=gstools_worker,type=marker] 21 21
execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0,lastWeather2StormSpawn=1000..},tag=elder_guardian_hurricane_spawned] run tag @s remove elder_guardian_hurricane_spawned
execute as @e[type=elder_guardian,scores={nearSevereWeather=0..0,lastWeather2StormSpawn=1000..},tag=elder_guardian_hurricane_spawned] run scoreboard players set @s lastWeather2StormSpawn 0

execute as @e[type=elder_guardian,scores={nearSevereWeather=1..1}] run scoreboard players set @s lastWeather2StormSpawn 0
