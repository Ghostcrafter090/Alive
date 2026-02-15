# Define
scoreboard objectives add enableWardenBoss dummy

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableWardenBoss=1..1}] as @e[type=warden,tag=!warden_disable] run data modify entity @s Invulnerable set value 1b
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableWardenBoss=1..1}] as @e[type=warden,tag=!warden_disable] run tag @s add warden_disable

execute if entity @e[tag=gstools_worker,type=marker,scores={enableWardenBoss=1..1}] as @e[type=warden,tag=warden_disable] run data modify entity @s Invulnerable set value 0b
execute if entity @e[tag=gstools_worker,type=marker,scores={enableWardenBoss=1..1}] as @e[type=warden,tag=warden_disable] run tag @s remove warden_disable