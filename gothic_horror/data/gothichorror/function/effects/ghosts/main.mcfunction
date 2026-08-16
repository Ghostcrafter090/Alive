# Define
scoreboard objectives add ghostMood dummy
scoreboard objectives add ghostActivity dummy
scoreboard objectives add ghostStamina dummy
scoreboard objectives add ghostStaminaUnsigned dummy
scoreboard objectives add ghostRandomWorkerA dummy
scoreboard objectives add ghostRandomWorkerB dummy
scoreboard objectives add lastPlayedGhostSound dummy
scoreboard objectives add ghostSoundTicRate dummy

team add gothic_ghost "Ghosts"

# Main
execute as @e[tag=gothic_ghost] at @s run function gstools:util/light_level
execute as @e[tag=gothic_ghost,limit=3,sort=random] at @s run function gstools:util/is_outside

execute if entity @e[tag=gstools_worker,scores={timeOfDay=0..12000}] as @e[tag=gstools_vertical_cursor,type=marker,distance=0..80] at @s if block ~ ~ ~ #gstools:air as @e[tag=gothic_ghost,predicate=gstools:sky] if entity @s[scores={lightLevel=7..}] run tp @s ~ ~ ~
execute as @e[tag=gothic_ghost] at @s if entity @s[scores={lightLevel=7..}] run tp @s ^ ^ ^-0.4 ~ ~
execute as @e[tag=gothic_ghost] at @s unless block ~ ~1 ~ #gstools:air run tp @s ^ ^ ^-0.4 ~ ~
execute as @e[tag=gothic_ghost] at @s unless block ~ ~1 ~ #gstools:air if block ~ ~2 ~ #gstools:air run tp @s ~ ~0.1 ~ ~ ~
execute as @e[tag=gothic_ghost] at @s unless block ~ ~ ~ #gstools:air if block ~ ~1 ~ #gstools:air run tp @s ^ ^ ^-0.4 ~ ~
execute as @e[tag=gothic_ghost] at @s unless block ~ ~ ~ #gstools:air if block ~ ~1 ~ #gstools:air if block ~ ~2 ~ #gstools:air run tp @s ~ ~0.1 ~ ~ ~

# Setup
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run attribute @s minecraft:generic.movement_speed base set 0.08
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run attribute @s minecraft:generic.attack_damage base set 0.5
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run effect give @s invisibility infinite 2 true
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run function gstools:util/random

execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] if entity @s[scores={random100=0..25}] run tag @s add ghost_type_echo
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] if entity @s[scores={random100=26..50}] run tag @s add ghost_type_spirit
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] if entity @s[scores={random100=51..75}] run tag @s add ghost_type_poltergeist
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] if entity @s[scores={random100=76..100}] run tag @s add ghost_type_demon

execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run team join gothic_ghost @s

execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run function gothichorror:effects/ghosts/version_conflict/name_0
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run function gothichorror:effects/ghosts/version_conflict/name_1

execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run tag @s add gothic_ghost_setup

# AI
execute as @e[tag=gothic_ghost,sort=random,limit=1] unless entity @s[scores={ghostMood=101..}] run scoreboard players set @s ghostMood 100
execute as @e[tag=gothic_ghost,sort=random,limit=1] unless entity @s[scores={ghostMood=..-101}] run scoreboard players set @s ghostMood -100
execute as @e[tag=gothic_ghost,sort=random,limit=1] unless entity @s[scores={ghostMood=-100..100}] run scoreboard players set @s ghostMood 0
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=101..}] run scoreboard players set @s ghostActivity 100
execute as @e[tag=gothic_ghost,sort=random,limit=1] unless entity @s[scores={ghostActivity=0..100}] run scoreboard players set @s ghostActivity 0

execute as @e[tag=gothic_ghost,sort=random,limit=1] run function gstools:util/random
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={random100=..50}] run function gstools:util/random
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={random100=..50}] run scoreboard players operation @s ghostRandomWorkerB = @s randomSigned10

execute as @e[tag=gothic_ghost,sort=random,limit=1] run function gstools:horror/getindex
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players add @s horrorIndex 35
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostRandomWorkerA *= @s horrorIndex
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostRandomWorkerA /= @e[tag=gstools_worker,type=marker] 100
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostMood += @s ghostRandomWorkerA

execute as @e[tag=gothic_ghost,sort=random,limit=1] run function gstools:util/random
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={random100=..50}] run function gstools:util/random
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={random100=..50}] run scoreboard players operation @s ghostRandomWorkerB = @s randomSigned10

execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostRandomWorkerB *= @s horrorIndex
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostRandomWorkerB /= @e[tag=gstools_worker,type=marker] 100
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostActivity += @s randomSigned10

execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=..10}] run attribute @s minecraft:generic.movement_speed base set 0.08
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=11..20}] run attribute @s minecraft:generic.movement_speed base set 0.09
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=21..30}] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=31..40}] run attribute @s minecraft:generic.movement_speed base set 0.11
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=41..50}] run attribute @s minecraft:generic.movement_speed base set 0.12
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=51..60}] run attribute @s minecraft:generic.movement_speed base set 0.13
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=61..70}] run attribute @s minecraft:generic.movement_speed base set 0.14
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=71..80}] run attribute @s minecraft:generic.movement_speed base set 0.15
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=81..90}] run attribute @s minecraft:generic.movement_speed base set 0.16
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=91..}] run attribute @s minecraft:generic.movement_speed base set 0.17

execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=..10}] run attribute @s minecraft:generic.follow_range base set 10
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=11..20}] run attribute @s minecraft:generic.follow_range base set 20
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=21..30}] run attribute @s minecraft:generic.follow_range base set 30
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=31..40}] run attribute @s minecraft:generic.follow_range base set 40
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=41..50}] run attribute @s minecraft:generic.follow_range base set 40
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=51..60}] run attribute @s minecraft:generic.follow_range base set 80
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=61..70}] run attribute @s minecraft:generic.follow_range base set 160
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=71..80}] run attribute @s minecraft:generic.follow_range base set 320
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=81..90}] run attribute @s minecraft:generic.follow_range base set 640
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=91..}] run attribute @s minecraft:generic.follow_range base set 1280

execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=..-90}] run attribute @s minecraft:generic.attack_damage base set 1.5
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=-91..-80}] run attribute @s minecraft:generic.attack_damage base set 1.4
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=-81..-70}] run attribute @s minecraft:generic.attack_damage base set 1.3
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=-71..-60}] run attribute @s minecraft:generic.attack_damage base set 1.2
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=-61..-50}] run attribute @s minecraft:generic.attack_damage base set 1.1
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=-51..-40}] run attribute @s minecraft:generic.attack_damage base set 1
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=-41..-30}] run attribute @s minecraft:generic.attack_damage base set 0.9
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=-31..-20}] run attribute @s minecraft:generic.attack_damage base set 0.8
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=-21..-10}] run attribute @s minecraft:generic.attack_damage base set 0.7
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=-11..-0}] run attribute @s minecraft:generic.attack_damage base set 0.6
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=1..10}] run attribute @s minecraft:generic.attack_damage base set 0.5
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=11..20}] run attribute @s minecraft:generic.attack_damage base set 0.1
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=21..30}] run attribute @s minecraft:generic.attack_damage base set 0.05
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=31..40}] run attribute @s minecraft:generic.attack_damage base set 0.01
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=41..50}] run attribute @s minecraft:generic.attack_damage base set 0.005
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=51..60}] run attribute @s minecraft:generic.attack_damage base set 0.001
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=61..70}] run attribute @s minecraft:generic.attack_damage base set 0.0005
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=71..80}] run attribute @s minecraft:generic.attack_damage base set 0.0001
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=81..90}] run attribute @s minecraft:generic.attack_damage base set 0.00005
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostMood=91..}] run attribute @s minecraft:generic.attack_damage base set 0.00001

# Poltergeist AI
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] run data merge storage minecraft:gothichorror {MotionChange:[0.0d,0.0d,0.0d]}

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] store result storage minecraft:gothichorror MotionChange[0] double 0.01 run scoreboard players get @s vectorX
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] store result storage minecraft:gothichorror MotionChange[1] double 0.01 run scoreboard players get @s vectorY
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] store result storage minecraft:gothichorror MotionChange[2] double 0.01 run scoreboard players get @s vectorZ

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] run data modify entity @s Motion set from storage minecraft:gothichorror MotionChange
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] run tag @s add gothic_ghost_snowball_thrown_setup

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] run function gstools:util/random
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s facing entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] eyes positioned ~ ~1 ~ run summon snowball ^ ^ ^1 {Item:{id:"minecraft:stone",Count:1b},Tags:['gothic_ghost_snowball_thrown']}
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s as @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] at @s run summon marker ~ ~1 ~ {Tags:['vector']}
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players set @s vectorScale 1
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run function gstools:util/get_vector

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] if score @s vectorScale < @s vectorX run scoreboard players operation @s vectorScale = @s vectorX
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] if score @s vectorScale < @s vectorY run scoreboard players operation @s vectorScale = @s vectorY
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] if score @s vectorScale < @s vectorZ run scoreboard players operation @s vectorScale = @s vectorZ

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorX *= @e[type=marker,tag=gstools_worker] n1
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorY *= @e[type=marker,tag=gstools_worker] n1
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorZ *= @e[type=marker,tag=gstools_worker] n1

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] if score @s vectorScale < @s vectorX run scoreboard players operation @s vectorScale = @s vectorX
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] if score @s vectorScale < @s vectorY run scoreboard players operation @s vectorScale = @s vectorY
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] if score @s vectorScale < @s vectorZ run scoreboard players operation @s vectorScale = @s vectorZ

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorX *= @e[type=marker,tag=gstools_worker] n1
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorY *= @e[type=marker,tag=gstools_worker] n1
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorZ *= @e[type=marker,tag=gstools_worker] n1

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorX *= @e[type=marker,tag=gstools_worker] 100
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorY *= @e[type=marker,tag=gstools_worker] 100
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorZ *= @e[type=marker,tag=gstools_worker] 100

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorX /= @s vectorScale
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorY /= @s vectorScale
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run scoreboard players operation @s vectorZ /= @s vectorScale

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run data merge storage minecraft:gothichorror {MotionChange:[0.0d,0.0d,0.0d]}

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] store result storage minecraft:gothichorror MotionChange[0] double 0.01 run scoreboard players get @s vectorX
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] store result storage minecraft:gothichorror MotionChange[1] double 0.01 run scoreboard players get @s vectorY
execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] store result storage minecraft:gothichorror MotionChange[2] double 0.01 run scoreboard players get @s vectorZ

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] run data modify entity @s Motion set from storage minecraft:gothichorror MotionChange

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist,sort=random,limit=1] if entity @s[scores={random100=..5}] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=1..30] as @e[type=snowball,tag=gothic_ghost_snowball_thrown,sort=nearest,limit=1] at @s run playsound minecraft:entity.phantom.flap block @a ~ ~ ~ 1 2

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2] run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 2
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2] unless entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2,gamemode=creative] unless entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..1,gamemode=spectator] run damage @e[tag=is_alive,sort=nearest,limit=1,distance=0..1] 0.1 mob_projectile by @s from @s
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2] run tag @s add sound_played

execute as @e[tag=gothic_ghost,tag=ghost_type_poltergeist] at @s as @e[type=chicken,distance=0..30,tag=!poltergeist_not_spawned_chicken] run tp @s ~ ~-5000 ~
execute as @e[type=chicken,tag=!poltergeist_not_spawned_chicken] at @s unless entity @e[tag=gothic_ghost,tag=ghost_type_poltergeist,distance=0..30] run tag @s add poltergeist_not_spawned_chicken

# Sound
execute as @e[tag=gothic_ghost,sort=random,limit=1] run function gstools:util/random
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina = @s ghostMood
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina *= @s ghostActivity
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina /= @e[tag=gstools_worker,type=marker] 10
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina *= @s random1000
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina /= @e[tag=gstools_worker,type=marker] 1000
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStaminaUnsigned = @s ghostStamina
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostStaminaUnsigned=..-1}] run scoreboard players operation @s ghostStaminaUnsigned *= @e[tag=gstools_worker,type=marker] n1

execute as @e[tag=gothic_ghost] run scoreboard players add @s lastPlayedGhostSound 1

execute as @e[type=#minecraft:undead,sort=random,limit=1] run scoreboard players operation @s ghostSoundTicRate = @e[tag=gstools_worker,type=marker] averageTpsGothicHorror
execute as @e[type=#minecraft:undead,sort=random,limit=1] run scoreboard players operation @s ghostSoundTicRate *= @e[tag=gstools_worker,type=marker] 10

execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=1..166}] if score @s ghostSoundTicRate < @s lastPlayedGhostSound at @s run playsound minecraft:gothichorror.ghost.tap hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=167..332}] if score @s ghostSoundTicRate < @s lastPlayedGhostSound at @s run playsound minecraft:gothichorror.ghost.snap hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=333..498}] if score @s ghostSoundTicRate < @s lastPlayedGhostSound at @s run playsound minecraft:gothichorror.ghost.clap hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=499..664}] if score @s ghostSoundTicRate < @s lastPlayedGhostSound at @s if predicate gstools:near_wood run playsound minecraft:gothichorror.ghost.knock hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=665..830}] if score @s ghostSoundTicRate < @s lastPlayedGhostSound at @s if predicate gstools:near_wood run playsound minecraft:gothichorror.ghost.door hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=830..}] if score @s ghostSoundTicRate < @s lastPlayedGhostSound if entity @s[scores={ghostStamina=..0}] at @s if predicate gstools:near_glass run playsound minecraft:gothichorror.ghost.window hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost] if score @s ghostSoundTicRate < @s lastPlayedGhostSound run scoreboard players set @s lastPlayedGhostSound 0

# Visual
execute as @e[tag=gstools_view_finder,type=marker] at @s as @e[tag=gothic_ghost,distance=21..] at @s if entity @a[distance=0..20] run effect give @s glowing infinite 0 true
execute as @e[tag=gstools_view_finder,type=marker] at @s as @e[tag=gothic_ghost,distance=..20] run effect clear @s glowing
execute as @e[tag=gstools_view_finder,type=marker] at @s as @e[tag=gothic_ghost,distance=20..] unless entity @a[distance=0..20] run effect clear @s glowing

# Spawn
execute if entity @e[tag=gstools_worker,scores={ticSecond=5..5}] as @e[type=marker,tag=gstools_worker] as @e[type=#minecraft:undead,limit=1,sort=random] if entity @s[tag=!gothic_ghost] at @s unless entity @e[tag=gothic_ghost,distance=0..10] run function gstools:horror/getindex
execute if entity @e[tag=gstools_worker,scores={ticSecond=5..5}] as @e[type=marker,tag=gstools_worker] as @e[type=#minecraft:undead,limit=1,sort=random] if entity @s[tag=!gothic_ghost] at @s unless entity @e[tag=gothic_ghost,distance=0..10] run scoreboard players add @s horrorIndex 35
execute if entity @e[tag=gstools_worker,scores={ticSecond=5..5}] as @e[type=marker,tag=gstools_worker] as @e[type=#minecraft:undead,limit=1,sort=random] if entity @s[tag=!gothic_ghost] at @s unless entity @e[tag=gothic_ghost,distance=0..10] if score @s horrorIndex > @e[type=marker,tag=gstools_worker,limit=1] numberOfUndeadMonsters run summon zombie ~ ~ ~ {HasVisualFire:0b,Silent:1b,Invulnerable:1b,FallFlying:1b,Tags:["gothic_ghost"],equipment:{mainhand:{id:"minecraft:air",count:1},offhand:{id:"minecraft:air",count:1}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b},{id:"minecraft:slow_falling",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:attack_damage",base:0.5},{id:"minecraft:movement_speed",base:0.01}]}

execute as @e[tag=is_human,type=!player] at @s unless entity @e[type=marker,tag=human_is_alive,distance=0..1,sort=nearest,limit=1] run summon marker ~ ~ ~ {Tags:['human_is_alive']}
execute as @e[tag=is_human,type=!player] at @s run tp @e[type=marker,tag=human_is_alive,distance=0..1,sort=nearest,limit=1] ~ ~ ~

execute if entity @e[tag=gstools_worker,scores={averageTps=15..}] as @e[type=marker,tag=human_is_alive] at @s unless entity @e[tag=is_human,distance=0..5,sort=nearest,limit=1,type=!player] run summon zombie ~ ~ ~ {HasVisualFire:0b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,FallFlying:1b,Tags:["gothic_ghost"],equipment:{mainhand:{id:"minecraft:air",count:1},offhand:{id:"minecraft:air",count:1}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b},{id:"minecraft:slow_falling",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:attack_damage",base:0.5},{id:"minecraft:movement_speed",base:0.01}]}
execute as @e[type=marker,tag=human_is_alive] at @s unless entity @e[tag=is_human,distance=0..1,sort=nearest,limit=1,type=!player] run kill @s


