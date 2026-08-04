# Define
scoreboard objectives add ghostMood dummy
scoreboard objectives add ghostActivity dummy
scoreboard objectives add ghostStamina dummy
scoreboard objectives add ghostStaminaUnsigned dummy

# Main
execute as @e[tag=gothic_ghost] at @s run function gstools:util/light_level
execute as @e[tag=gothic_ghost,limit=3,sort=random] at @s run function gstools:util/is_outside

execute if entity @e[tag=gstools_worker,scores={timeOfDay=0..12000}] as @e[tag=gstools_vertical_cursor,type=marker,distance=0..80] at @s if block ~ ~ ~ #gstools:air as @e[tag=gothic_ghost,predicate=gstools:sky] if entity @s[scores={lightLevel=7..}] run tp @s ~ ~ ~
execute as @e[tag=gothic_ghost] at @s if entity @s[scores={lightLevel=7..}] run tp @s ^ ^ ^-0.4 ~ ~

# Setup
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run attribute @s minecraft:generic.movement_speed base set 0.08
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run attribute @s minecraft:generic.attack_damage base set 0.5
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run effect give @s invisibility infinite 2 true
execute as @e[tag=gothic_ghost,tag=!gothic_ghost_setup] run tag @s add gothic_ghost_setup

# AI
execute as @e[tag=gothic_ghost,sort=random,limit=1] unless entity @s[scores={ghostMood=101..}] run scoreboard players set @s ghostMood 100
execute as @e[tag=gothic_ghost,sort=random,limit=1] unless entity @s[scores={ghostMood=..-101}] run scoreboard players set @s ghostMood -100
execute as @e[tag=gothic_ghost,sort=random,limit=1] unless entity @s[scores={ghostMood=-100..100}] run scoreboard players set @s ghostMood 0
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostActivity=101..}] run scoreboard players set @s ghostActivity 100
execute as @e[tag=gothic_ghost,sort=random,limit=1] unless entity @s[scores={ghostActivity=0..100}] run scoreboard players set @s ghostActivity 0

execute as @e[tag=gothic_ghost,sort=random,limit=1] run function gstools:util/random
execute as @e[tag=gothic_ghost,sort=random,limit=1] run function gstools:horror/getindex
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players add @s horrorIndex 35
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s randomSigned10 *= @s horrorIndex
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s randomSigned10 /= @e[tag=gstools_worker,type=marker] 100
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostMood += @s randomSigned10

execute as @e[tag=gothic_ghost,sort=random,limit=1] run function gstools:util/random
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s randomSigned10 *= @s horrorIndex
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s randomSigned10 /= @e[tag=gstools_worker,type=marker] 100
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

# Sound
execute as @e[tag=gothic_ghost,sort=random,limit=1] run function gstools:util/random
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina = @s ghostMood
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina *= @s ghostActivity
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina /= @e[tag=gstools_worker,type=marker] 10
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina *= @s random1000
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStamina /= @e[tag=gstools_worker,type=marker] 1000
execute as @e[tag=gothic_ghost,sort=random,limit=1] run scoreboard players operation @s ghostStaminaUnsigned = @s ghostStamina
execute as @e[tag=gothic_ghost,sort=random,limit=1] if entity @s[scores={ghostStaminaUnsigned=..-1}] run scoreboard players operation @s ghostStaminaUnsigned *= @e[tag=gstools_worker,type=marker] n1

execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=83..166}] at @s run playsound minecraft:gothichorror.ghost.tap hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=167..332}] at @s run playsound minecraft:gothichorror.ghost.snap hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=333..498}] at @s run playsound minecraft:gothichorror.ghost.clap hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=499..664}] at @s if predicate gstools:near_wood run playsound minecraft:gothichorror.ghost.knock hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=665..830}] at @s if predicate gstools:near_wood run playsound minecraft:gothichorror.ghost.door hostile @a ~ ~ ~
execute as @e[type=#minecraft:undead,sort=random,limit=1] if entity @s[tag=gothic_ghost,scores={ghostStaminaUnsigned=830..}] if entity @s[scores={ghostStamina=..0}] at @s if predicate gstools:near_glass run playsound minecraft:gothichorror.ghost.window hostile @a ~ ~ ~

# Spawn
execute if entity @e[tag=gstools_worker,scores={ticSecond=5..5}] as @e[type=marker,tag=gstools_worker] as @e[type=#minecraft:undead,limit=1,sort=random] if entity @s[tag=!gothic_ghost] at @s run function gstools:horror/getindex
execute if entity @e[tag=gstools_worker,scores={ticSecond=5..5}] as @e[type=marker,tag=gstools_worker] as @e[type=#minecraft:undead,limit=1,sort=random] if entity @s[tag=!gothic_ghost] at @s run scoreboard players add @s horrorIndex 35
execute if entity @e[tag=gstools_worker,scores={ticSecond=5..5}] as @e[type=marker,tag=gstools_worker] as @e[type=#minecraft:undead,limit=1,sort=random] if entity @s[tag=!gothic_ghost] at @s if score @s horrorIndex > @e[type=marker,tag=gstools_worker,limit=1] numberOfUndeadMonsters run summon zombie ~ ~ ~ {HasVisualFire:0b,Silent:1b,Invulnerable:1b,FallFlying:1b,Tags:["gothic_ghost"],equipment:{mainhand:{id:"minecraft:air",count:1},offhand:{id:"minecraft:air",count:1}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b},{id:"minecraft:slow_falling",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:attack_damage",base:0.5},{id:"minecraft:movement_speed",base:0.01}]}

execute as @e[tag=is_human,type=!player] at @s unless entity @e[type=marker,tag=human_is_alive,distance=0..1,sort=nearest,limit=1] run summon marker ~ ~ ~ {Tags:['human_is_alive']}
execute as @e[tag=is_human,type=!player] at @s run tp @e[type=marker,tag=human_is_alive,distance=0..1,sort=nearest,limit=1] ~ ~ ~

execute if entity @e[tag=gstools_worker,scores={averageTps=15..}] as @e[type=marker,tag=human_is_alive] at @s unless entity @e[tag=is_human,distance=0..5,sort=nearest,limit=1,type=!player] run summon zombie ~ ~ ~ {HasVisualFire:0b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,FallFlying:1b,Tags:["gothic_ghost"],equipment:{mainhand:{id:"minecraft:air",count:1},offhand:{id:"minecraft:air",count:1}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b},{id:"minecraft:slow_falling",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:attack_damage",base:0.5},{id:"minecraft:movement_speed",base:0.01}]}
execute as @e[type=marker,tag=human_is_alive] at @s unless entity @e[tag=is_human,distance=0..1,sort=nearest,limit=1,type=!player] run kill @s


