# Define

# Main
execute as @e[tag=is_human,type=!player] at @s unless entity @e[type=marker,tag=human_is_alive,distance=0..2,sort=nearest,limit=1] run summon marker ~ ~ ~ {Tags:['human_is_alive']}
execute as @e[tag=is_human,type=!player] at @s run tp @e[type=marker,tag=human_is_alive,distance=0..2,sort=nearest,limit=1] ~ ~ ~

execute if entity @e[tag=gstools_worker,scores={averageTps=15..}] as @e[type=marker,tag=human_is_alive] at @s unless entity @e[tag=is_human,distance=0..5,sort=nearest,limit=1,type=!player] run summon zombie ~ ~ ~ {HasVisualFire:0b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,FallFlying:1b,Tags:["gothic_ghost"],equipment:{mainhand:{id:"minecraft:air",count:1},offhand:{id:"minecraft:air",count:1}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b},{id:"minecraft:slow_falling",amplifier:1,duration:10000000,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:attack_damage",base:0.5},{id:"minecraft:movement_speed",base:0.01}]}
execute as @e[type=marker,tag=human_is_alive] at @s unless entity @e[tag=is_human,distance=0..2,sort=nearest,limit=1,type=!player] run tag @e[tag=is_human] add gothic_knock_pending
execute as @e[type=marker,tag=human_is_alive] at @s unless entity @e[tag=is_human,distance=0..2,sort=nearest,limit=1,type=!player] as @e[tag=gothic_horror_cemetary,sort=nearest,limit=1] at @s run summon marker ~ ~ ~ {Tags:['gothic_grave_stone']}
execute as @e[type=marker,tag=human_is_alive] at @s unless entity @e[tag=is_human,distance=0..2,sort=nearest,limit=1,type=!player] run kill @s