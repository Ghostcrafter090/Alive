# Define
scoreboard objectives add enableGuardianBoss dummy

# Main
execute as @e[type=elder_guardian,sort=random,limit=1] unless entity @s[scores={enableGuardianBoss=1..1}] unless entity @s[tag=guardian_disable] run data modify entity @s Invulnerable set value 1b
execute as @e[type=elder_guardian,sort=random,limit=1] unless entity @s[scores={enableGuardianBoss=1..1}] unless entity @s[tag=guardian_disable] run tag @s add guardian_disable

execute as @e[type=elder_guardian,sort=random,limit=1] if entity @s[scores={enableGuardianBoss=1..1}] if entity @s[tag=guardian_disable] run data modify entity @s Invulnerable set value 0b
execute as @e[type=elder_guardian,sort=random,limit=1] if entity @s[scores={enableGuardianBoss=1..1}] if entity @s[tag=guardian_disable] run tag @s remove guardian_disable

execute as @e[type=elder_guardian,sort=random,limit=1,tag=guardian_disable] at @s if entity @a[distance=0..30,nbt={equipment:{head:{id:"minecraft:turtle_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:flame":1}}}}}] run summon lightning_bolt ~ ~30 ~
execute as @e[type=elder_guardian,sort=random,limit=1,tag=guardian_disable] at @s if entity @a[distance=0..30,nbt={equipment:{head:{id:"minecraft:turtle_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:flame":1}}}}}] run scoreboard players set @s enableGuardianBoss 1

execute as @e[type=elder_guardian,tag=!guardian_disable] run 
