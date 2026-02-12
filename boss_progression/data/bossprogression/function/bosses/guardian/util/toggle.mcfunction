# Define
scoreboard objectives add enableGuardianBoss dummy

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableGuardianBoss=1..1}] as @e[type=elder_guardian,tag=!guardian_disable] run data modify entity @s Invulnerable set value 1b
execute unless entity @e[tag=gstools_worker,type=marker,scores={enableGuardianBoss=1..1}] as @e[type=elder_guardian,tag=!guardian_disable] run tag @s add guardian_disable

execute if entity @e[tag=gstools_worker,type=marker,scores={enableGuardianBoss=1..1}] as @e[type=elder_guardian,tag=guardian_disable] run data modify entity @s Invulnerable set value 0b
execute if entity @e[tag=gstools_worker,type=marker,scores={enableGuardianBoss=1..1}] as @e[type=elder_guardian,tag=guardian_disable] run tag @s remove guardian_disable