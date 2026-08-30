# Define
scoreboard objectives add undeadRiseTick dummy

# Main
execute as @e[type=#minecraft:undead,type=!wither,tag=!undead_setup] run data modify entity @s NoAI set value 1b
execute as @e[type=#minecraft:undead,type=!wither,tag=!undead_setup] run scoreboard players set @s undeadRiseTick 0
execute as @e[type=#minecraft:undead,type=!wither,tag=!undead_setup] at @s facing entity @e[tag=is_alive,sort=nearest,limit=1,distance=0..30] eyes run tp @s ~ ~-2 ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=!undead_setup] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!undead_setup] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=!undead_setup] run tag @s add undead_setup

execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen] run scoreboard players add @s undeadRiseTick 1
execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=1..15}] at @s run tp @s ~ ~0.06666666666666667 ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=16..24}] at @s facing entity @e[tag=is_alive,sort=random,distance=0..30] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=25..}] at @s facing entity @e[tag=is_human,sort=random,distance=0..30] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=25..}] at @s run tp @s ~ ~0.06666666666666667 ~ ~ ~
execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=16..16}] at @s run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 1 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=25..25}] at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 1
execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=35..35}] at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 0.1
execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=40..}] at @s run data modify entity @s NoAI set value 0b
execute as @e[type=#minecraft:undead,type=!wither,tag=undead_setup,tag=!undead_risen,scores={undeadRiseTick=40..}] at @s run tag @s add undead_risen