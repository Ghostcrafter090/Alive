# Define
scoreboard objectives add enableWardenBoss dummy

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableWardenBoss=1..1}] as @e[type=warden,tag=!warden_disable] run data modify entity @s Invulnerable set value 1b
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableWardenBoss=1..1}] as @e[type=warden,tag=!warden_disable] run tag @s add warden_disable

execute if entity @e[tag=gstools_worker,type=marker,scores={enableWardenBoss=1..1}] as @e[type=warden,tag=warden_disable] run data modify entity @s Invulnerable set value 0b
execute if entity @e[tag=gstools_worker,type=marker,scores={enableWardenBoss=1..1}] as @e[type=warden,tag=warden_disable] run tag @s remove warden_disable

execute as @e[type=warden,tag=warden_disable] run effect give @s speed 4 2 true
execute as @e[type=warden,tag=warden_disable] run effect give @s strength 4 2 true
execute as @e[type=warden,tag=warden_disable] run effect give @s jump_boost 4 2 true

execute as @e[type=warden,tag=warden_disable] at @s as @e[tag=is_alive,distance=0..10] run effect give @s blindness 4 0 true
execute as @e[type=warden,tag=warden_disable] at @s run particle minecraft:sculk_soul ~ ~ ~ 50 50 50 0 10
execute as @e[type=warden,tag=warden_disable] at @s run particle minecraft:sculk_charge_pop ~ ~ ~ 50 50 50 0 10