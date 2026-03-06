# Define
scoreboard objectives add enableGuardianBoss dummy
scoreboard objectives add elderGuardianKilledCount dummy
scoreboard objectives add guardiansHaveBeenKilled dummy

# Main
execute as @e[type=elder_guardian,sort=random,limit=1] unless entity @s[scores={enableGuardianBoss=1..1}] unless entity @s[tag=guardian_disable] run data modify entity @s Invulnerable set value 1b
execute as @e[type=elder_guardian,sort=random,limit=1] unless entity @s[scores={enableGuardianBoss=1..1}] unless entity @s[tag=guardian_disable] run tag @s add guardian_disable

execute as @e[type=elder_guardian,sort=random,limit=1] if entity @s[scores={enableGuardianBoss=1..1}] if entity @s[tag=guardian_disable] run data modify entity @s Invulnerable set value 0b
execute as @e[type=elder_guardian,sort=random,limit=1] if entity @s[scores={enableGuardianBoss=1..1}] if entity @s[tag=guardian_disable] at @s run summon marker ~ ~ ~ {Tags:["elder_guardian_node","elder_guardian_node_not_setup"]}
execute as @e[type=elder_guardian,sort=random,limit=1] if entity @s[scores={enableGuardianBoss=1..1}] if entity @s[tag=guardian_disable] at @s as @e[type=marker,tag=elder_guardian_node_not_setup,distance=0..1,sort=nearest,limit=1] run ride @s mount @e[type=elder_guardian,distance=0..1,sort=nearest,limit=1]
execute as @e[type=elder_guardian,sort=random,limit=1] if entity @s[scores={enableGuardianBoss=1..1}] if entity @s[tag=guardian_disable] at @s as @e[type=marker,tag=elder_guardian_node_not_setup,distance=0..1,sort=nearest,limit=1] run tag @s remove elder_guardian_node_not_setup
execute as @e[type=elder_guardian,sort=random,limit=1] if entity @s[scores={enableGuardianBoss=1..1}] if entity @s[tag=guardian_disable] run tag @s remove guardian_disable

execute as @e[type=elder_guardian,sort=random,limit=1,tag=guardian_disable] at @s if entity @a[distance=0..30,nbt={equipment:{head:{id:"minecraft:turtle_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:flame":1}}}}}] run summon lightning_bolt ~ ~30 ~
execute as @e[type=elder_guardian,sort=random,limit=1,tag=guardian_disable] at @s if entity @a[distance=0..30,nbt={equipment:{head:{id:"minecraft:turtle_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:flame":1}}}}}] run scoreboard players set @s enableGuardianBoss 1

execute as @e[type=elder_guardian,tag=!guardian_disable] at @s run particle minecraft:dolphin ~ ~ ~ 0 10 0 1 10
execute as @e[type=elder_guardian,tag=!guardian_disable] at @s run particle minecraft:bubble_column_up ~ ~ ~ 0 10 0 1 10
execute as @e[type=elder_guardian,tag=!guardian_disable] at @s run particle minecraft:underwater ~ ~ ~ 1 10 1 1 10

# execute as @e[type=item_frame] at @s positioned ~ ~-12 ~3 if block ~ ~ ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_5"}}

execute as @e[type=marker,tag=elder_guardian_node] at @s unless entity @e[type=elder_guardian,distance=0..3] run scoreboard players add @e[tag=gstools_worker,type=marker] elderGuardianKilledCount 1
execute as @e[tag=gstools_worker,type=marker,scores={elderGuardianKilledCount=3..}] run scoreboard players set @s guardiansHaveBeenKilled 1