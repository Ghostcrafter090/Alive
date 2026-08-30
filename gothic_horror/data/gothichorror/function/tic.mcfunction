# Define
scoreboard objectives add poltergeistRockCount dummy

# Main
execute as @e[scores={hGeneralTic=0..}] run scoreboard players remove @s hGeneralTic 1

execute as @r run function gstools:util/random
execute as @r if score @s random1000 > @s horrorIndex run team modify gothic_ghost color black
execute as @r if score @s random1000 < @s horrorIndex run team modify gothic_ghost color dark_gray

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] run data merge storage minecraft:gothichorror {MotionChange:[0.0d,0.0d,0.0d]}

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] store result storage minecraft:gothichorror MotionChange[0] double 0.01 run scoreboard players get @s vectorX
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] store result storage minecraft:gothichorror MotionChange[1] double 0.01 run scoreboard players get @s vectorY
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] store result storage minecraft:gothichorror MotionChange[2] double 0.01 run scoreboard players get @s vectorZ

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] run data modify entity @s Motion set from storage minecraft:gothichorror MotionChange
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!gothic_ghost_snowball_thrown_setup] run tag @s add gothic_ghost_snowball_thrown_setup

execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2] run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 2
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2] unless entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2,gamemode=creative] unless entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2,gamemode=spectator] run damage @e[tag=is_alive,sort=nearest,limit=1,distance=0..2] 0.1 mob_attack by @s
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2] run kill @s
execute as @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played] at @s if entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..2] run tag @s add sound_played
execute store result score @e[tag=gstools_worker,type=marker,limit=1] poltergeistRockCount if entity @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played]
execute if entity @e[tag=gstools_worker,type=marker,scores={poltergeistRockCount=30..}] run kill @e[type=snowball,tag=gothic_ghost_snowball_thrown,tag=!sound_played]

# Day Cycle

execute unless entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=1..1}] run gamerule doDaylightCycle true
execute unless entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=0..0}] run gamerule doDaylightCycle false
execute unless entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=overrided_daylight_cycle] run tag @s remove overrided_daylight_cycle
execute as @e[tag=gstools_worker,type=marker,tag=!after_sunset,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=1..1}] run gamerule doDaylightCycle true
execute as @e[tag=gstools_worker,type=marker,tag=!after_sunset,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=0..0}] run gamerule doDaylightCycle false
execute as @e[tag=gstools_worker,type=marker,tag=!after_sunset,tag=overrided_daylight_cycle] run tag @s remove overrided_daylight_cycle

execute if entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=!overrided_daylight_cycle] store result score @s doDaylightCycleCache run gamerule doDaylightCycle
execute if entity @a[scores={horrorIndex=100..}] if entity @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=!overrided_daylight_cycle] run gamerule doDaylightCycle false
execute if entity @a[scores={horrorIndex=100..}] if entity @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=!overrided_daylight_cycle] run tag @s add overrided_daylight_cycle
execute if entity @a[scores={horrorIndex=100..}] if entity @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=overrided_daylight_cycle,scores={ticQuarter=1..1}] run time add 1t