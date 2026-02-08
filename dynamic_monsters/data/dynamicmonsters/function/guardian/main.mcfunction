# Define
scoreboard objectives add guardianAge dummy
scoreboard objectives add elderGuardianCount dummy
scoreboard objectives add guardianHealth dummy

# Main
execute as @e[type=guardian,sort=random,limit=1] at @s unless entity @e[type=elder_guardian,distance=0..400] run tag @s add kill_guardian
execute as @e[type=guardian,scores={guardianAge=..0}] run effect give @s wither 100 0 true
execute as @e[type=guardian,tag=!kill_guardian] run scoreboard players add @s guardianAge 1
execute as @e[type=guardian,tag=kill_guardian] run scoreboard players remove @s guardianAge 4
execute as @e[type=guardian,sort=random,limit=1,tag=kill_guardian] at @s if entity @e[type=elder_guardian,distance=0..400] run tag @s remove kill_guardian

execute as @e[type=guardian,sort=random,limit=1] at @s store result score @s elderGuardianCount if entity @e[type=elder_guardian,distance=0..50]
execute as @e[type=guardian,scores={elderGuardianCount=1..},sort=random,limit=1] run effect give @s resistance 10 0
execute as @e[type=guardian,scores={elderGuardianCount=2..},sort=random,limit=1] run effect give @s regeneration 10 0
execute as @e[type=guardian,scores={elderGuardianCount=3..},sort=random,limit=1] run effect give @s strength 10 0

execute as @e[type=guardian,sort=random,limit=1] at @s if entity @s[scores={elderGuardianCount=1..}] run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 10
execute as @e[type=guardian,sort=random,limit=1] at @s if entity @s[scores={elderGuardianCount=2..}] run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 20
execute as @e[type=guardian,sort=random,limit=1] at @s if entity @s[scores={elderGuardianCount=3..}] run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 30

function dynamicmonsters:guardian/version_conflict/ominous_spawning_0
execute as @e[type=elder_guardian] at @s as @e[type=elder_guardian,distance=0..50] as @e[type=guardian,distance=0..25] run particle minecraft:nautilus ^ ^1 ^ 0 0 0 1 1

execute as @e[type=guardian] store result score @s guardianHealth run data get entity @s Health
execute as @e[type=guardian,tag=kill_guardian] if entity @s[scores={guardianHealth=..1}] run data merge entity @s {DeathLootTable:"minecraft:empty"}