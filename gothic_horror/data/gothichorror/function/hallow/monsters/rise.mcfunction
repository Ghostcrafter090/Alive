# Define
scoreboard objectives add undeadRiseTick dummy
scoreboard objectives add isOnFire dummy

# Main
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=!undead_setup] run data modify entity @s NoAI set value 1b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=!undead_setup] run scoreboard players set @s undeadRiseTick 0
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=!undead_setup] at @s facing entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..30] eyes run tp @s ~ ~-2 ~ ~ -90
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=!undead_setup] at @s run playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 1 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=!undead_setup] at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=!undead_setup] run tag @s add undead_setup

execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen] run scoreboard players add @s undeadRiseTick 1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=1..15}] at @s run tp @s ~ ~0.06666666666666667 ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=16..24}] at @s facing entity @e[tag=is_alive,sort=random,distance=0..30] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=25..}] at @s facing entity @e[tag=is_human,sort=random,distance=0..30] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=25..}] at @s run tp @s ~ ~0.06666666666666667 ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=16..16}] at @s run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=25..25}] at @s run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 2 1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=30..30}] at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.3 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=35..35}] at @s run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 2 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=40..}] at @s run data modify entity @s NoAI set value 0b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=40..}] at @s run tag @s add undead_risen

execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost] store result score @s isOnFire run data get entity @s Fire 1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_risen,tag=!undead_unrise_setup,scores={isOnFire=1..}] unless data entity @s CustomName run data modify entity @s NoAI set value 1b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_risen,tag=!undead_unrise_setup,scores={isOnFire=1..}] unless data entity @s CustomName run data merge entity @s {CustomNameVisible:0b,CustomName:"Dinnerbone"}
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_risen,tag=!undead_unrise_setup,scores={isOnFire=1..}] if entity @s[name="Undead Creature"] run data modify entity @s NoAI set value 1b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_risen,tag=!undead_unrise_setup,scores={isOnFire=1..}] if entity @s[name="Undead Creature"] run data merge entity @s {CustomNameVisible:0b,CustomName:"Dinnerbone"}
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_risen,tag=!undead_unrise_setup,name=Dinnerbone] run scoreboard players set @s undeadRiseTick 40
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_risen,tag=!undead_unrise_setup,name=Dinnerbone] at @s facing entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..30] eyes run tp @s ~ ~ ~ ~ -90
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_risen,tag=!undead_unrise_setup,name=Dinnerbone] run tag @s add undead_unrise_setup

execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen] run scoreboard players remove @s undeadRiseTick 1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=1..1}] at @s run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 2 1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=1..15}] at @s run tp @s ~ ~-0.06666666666666667 ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=16..24}] at @s facing entity @e[tag=is_alive,sort=random,distance=0..30] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=25..}] at @s facing entity @e[tag=is_human,sort=random,distance=0..30] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=25..}] at @s run tp @s ~ ~-0.06666666666666667 ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=16..16}] at @s run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=25..25}] at @s run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 2 1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=30..30}] at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.3 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=35..35}] at @s run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 2 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=..0}] at @s run data modify entity @s NoAI set value 1b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=..0}] at @s run data modify entity @s Silent set value 1b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=..0}] at @s run data modify entity @s Invulnerable set value 1b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=..0}] at @s run data modify entity @s PersistenceRequired set value 1b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=..0}] at @s run data modify entity @s CustomName set value '"Undead Creature"'
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=!undead_unrisen,scores={undeadRiseTick=..0}] at @s run tag @s add undead_unrisen

execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if block ~ ~1 ~ #gstools:air run data modify entity @s Silent set value 0b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if block ~ ~1 ~ #gstools:air run data modify entity @s Invulnerable set value 0b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if block ~ ~1 ~ #gstools:air run data modify entity @s PersistenceRequired set value 0b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if block ~ ~1 ~ #gstools:air run tag @s remove undead_setup
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if block ~ ~1 ~ #gstools:air run tag @s remove undead_risen
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if block ~ ~1 ~ #gstools:air run tag @s remove undead_unrise_setup
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if block ~ ~1 ~ #gstools:air run tag @s remove undead_unrisen

execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s as @a[distance=0..10] at @s run function gstools:util/light_level

execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if entity @a[scores={lightLevel=..7},distance=0..10] run data modify entity @s Silent set value 0b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if entity @a[scores={lightLevel=..7},distance=0..10] run data modify entity @s Invulnerable set value 0b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if entity @a[scores={lightLevel=..7},distance=0..10] run data modify entity @s PersistenceRequired set value 0b
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if entity @a[scores={lightLevel=..7},distance=0..10] run tag @s remove undead_setup
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if entity @a[scores={lightLevel=..7},distance=0..10] run tag @s remove undead_risen
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if entity @a[scores={lightLevel=..7},distance=0..10] run tag @s remove undead_unrise_setup
execute as @e[type=#minecraft:undead,type=!wither,tag=!gothic_ghost,tag=undead_unrise_setup,tag=undead_unrisen] unless entity @s[scores={isOnFire=1..}] at @s if entity @a[scores={lightLevel=..7},distance=0..10] run tag @s remove undead_unrisen