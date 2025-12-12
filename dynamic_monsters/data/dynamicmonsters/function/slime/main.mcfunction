# Define
scoreboard objectives add slimeTick dummy
scoreboard objectives add slimeSize dummy
scoreboard objectives add slimeNegate dummy

# Main
execute as @e[type=slime] at @s if block ~ ~ ~ water store result score @s slimeSize run data get entity @s Size
execute as @e[type=slime] at @s if block ~ ~ ~ water run scoreboard players add @s slimeTick 1
execute as @e[type=slime,scores={slimeTick=1000..}] run scoreboard players add @s slimeSize 1
execute as @e[type=slime,scores={slimeSize=40..}] run scoreboard players set @s slimeSize 20
execute as @e[type=slime,scores={slimeTick=1000..}] store result entity @s Size int 1 run scoreboard players get @s slimeSize
execute as @e[type=slime,scores={slimeTick=1000..}] run scoreboard players set @s slimeTick 0
execute as @e[type=slime] at @s unless block ~ ~ ~ water run scoreboard players add @s slimeNegate 1
execute as @e[type=slime,scores={slimeNegate=1000..}] run scoreboard players remove @s slimeSize 1
execute as @e[type=slime,scores={slimeNegate=1000..}] store result entity @s Size int 1 run scoreboard players get @s slimeSize
execute as @e[type=slime,scores={slimeNegate=1000..}] run scoreboard players set @s slimeNegate 0
execute as @e[type=slime] at @s if block ~ ~-1 ~ #minecraft:ice run scoreboard players add @s slimeNegate 5
execute as @e[type=slime] at @s if block ~ ~-1 ~ #minecraft:sand run scoreboard players add @s slimeNegate 8
execute as @e[type=slime] at @s if block ~ ~-1 ~ #minecraft:sand run effect give @s slowness 1 0
execute as @e[type=slime] at @s unless entity @s[nbt={Fire:0s}] if entity @s[scores={slimeNegate=10..}] run scoreboard players add @s slimeNegate 1000
execute as @e[type=slime] at @s unless entity @s[nbt={Fire:0s}] if entity @s[scores={slimeNegate=10..}] run effect give @s resistance 5 5
execute as @e[type=slime] at @s unless entity @s[nbt={Fire:0s}] if entity @s[scores={slimeNegate=10..}] run summon creeper ~ ~ ~ {CustomNameVisible:0b,ExplosionRadius:1b,PersistenceRequired:1b,CanPickUpLoot:1b,Fuse:2,ignited:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10,show_particles:0b,show_icon:0b}],Attributes:[{Name:generic.max_health,Base:1}]}

effect clear @e[type=slime] oozing


