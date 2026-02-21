# Define
scoreboard objectives add currentWitherSize dummy
scoreboard objectives add currentWitherHealth dummy
scoreboard objectives add currentWitherSizeAttribute dummy
scoreboard objectives add currentYLevel dummy

scoreboard objectives add witherHasBeenKilled dummy

# Main
execute as @e[type=wither] store result score @s currentWitherHealth run data get entity @s Health 1
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=300..}] run scoreboard players add @s currentWitherSize 26
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=375..}] run scoreboard players add @s currentWitherSize 24
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=350..}] run scoreboard players add @s currentWitherSize 22
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=325..}] run scoreboard players add @s currentWitherSize 20
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=300..}] run scoreboard players add @s currentWitherSize 18
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=275..}] run scoreboard players add @s currentWitherSize 16
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=250..}] run scoreboard players add @s currentWitherSize 14
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=225..}] run scoreboard players add @s currentWitherSize 12
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=200..}] run scoreboard players add @s currentWitherSize 10
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=175..}] run scoreboard players add @s currentWitherSize 8
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=150..}] run scoreboard players add @s currentWitherSize 6
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=125..}] run scoreboard players add @s currentWitherSize 4
execute as @e[type=wither] if entity @s[scores={currentWitherHealth=100..}] run scoreboard players add @s currentWitherSize 1

execute as @e[type=wither] run scoreboard players remove @s currentWitherSize 13

execute as @e[type=wither] if entity @s[scores={currentWitherSize=..21840}] run scoreboard players set @s currentWitherSize 21840
execute as @e[type=wither] if entity @s[scores={currentWitherSize=127920..}] run scoreboard players set @s currentWitherSize 127920

execute as @e[type=wither] if entity @s[tag=!wither_size_setup] run scoreboard players set @s currentWitherSize 31200
execute as @e[type=wither] if entity @s[tag=!wither_size_setup] run tag @s add wither_size_setup

execute as @e[type=wither] run scoreboard players operation @s currentWitherSizeAttribute = @s currentWitherSize
execute as @e[type=wither] run scoreboard players operation @s currentWitherSizeAttribute /= @e[tag=gstools_worker,type=marker,limit=1] 312

execute if entity @e[tag=gstools_worker,scores={random100=..50}] run function bossprogression:bosses/wither/util/size/adjust

execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=!splitoff] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run summon wither_skull ^ ^ ^1 {Tags:['wither_not_setup','splitoff'],Motion:[0.0,-1.0,0.0]}
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run data modify entity @s Motion set from entity @e[type=wither_skull,tag=!splitoff,sort=nearest,limit=1] Motion
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run data modify entity @s Motion[1] set value -1
execute if entity @e[type=wither,limit=1] if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run data modify entity @s dangerous set from entity @e[type=wither_skull,tag=!splitoff,sort=nearest,limit=1] dangerous
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run tag @s remove wither_not_setup
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=!splitoff] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run tag @s add splitoff

execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=!splitoff_1] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=300..},distance=0..10] run summon wither_skull ^ ^ ^1 {Tags:['wither_not_setup','splitoff_1','splitoff'],Motion:[0.0,-1.0,0.0]}
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff_1,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=300..},distance=0..10] run data modify entity @s Motion set from entity @e[type=wither_skull,tag=splitoff,tag=!splitoff_1,sort=nearest,limit=1] Motion
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff_1,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=300..},distance=0..10] run data modify entity @s Motion[1] set value -1
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff_1,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=300..},distance=0..10] run data modify entity @s dangerous set from entity @e[type=wither_skull,tag=splitoff,tag=!splitoff_1,sort=nearest,limit=1] dangerous
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff_1,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=300..},distance=0..10] run tag @s remove wither_not_setup
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=!splitoff_1] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=300..},distance=0..10] run tag @s add splitoff_1

execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=splitoff_1,tag=!splitoff_2] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=400..},distance=0..10] run summon wither_skull ^ ^ ^1 {Tags:['wither_not_setup','splitoff_2','splitoff_1','splitoff'],Motion:[0.0,-1.0,0.0]}
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=splitoff_2,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=400..},distance=0..10] run data modify entity @s Motion set from entity @e[type=wither_skull,tag=splitoff,tag=splitoff_1,tag=!splitoff_2,sort=nearest,limit=1] Motion
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=splitoff_2,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=400..},distance=0..10] run data modify entity @s Motion[1] set value -1
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=splitoff_2,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=400..},distance=0..10] run data modify entity @s dangerous set from entity @e[type=wither_skull,tag=splitoff,tag=splitoff_1,tag=!splitoff_2,sort=nearest,limit=1] dangerous
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=splitoff_2,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=400..},distance=0..10] run tag @s remove wither_not_setup
execute if entity @e[type=wither,limit=1] as @e[type=wither_skull,tag=splitoff,tag=splitoff_1,tag=!splitoff_2] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=400..},distance=0..10] run tag @s add splitoff_2

execute as @e[type=wither_skull] at @s unless entity @e[type=wither,distance=..75] unless entity @e[type=tnt,distance=0..10] run summon tnt ~ ~3 ~ {fuse:0}

execute as @e[type=wither,scores={currentWitherSizeAttribute=200..}] at @s as @e[tag=fish,distance=0..60] run effect give @s wither 10 0
execute as @e[type=wither,scores={currentWitherSizeAttribute=200..}] at @s as @e[tag=fish,distance=0..40] run effect give @s wither 10 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=200..}] at @s as @e[tag=fish,distance=0..30] run effect give @s wither 10 2
execute as @e[type=wither,scores={currentWitherSizeAttribute=200..}] at @s as @e[tag=fish,distance=0..20] run tp @s ~ ~-500 ~

execute as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:nether_star"}}] run scoreboard players set @e[tag=gstools_worker,type=marker] witherHasBeenKilled 1
execute as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:nether_star"}}] run data merge entity @s {Invulnerable:1b}
execute if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:tropical_fish"}}] run tag @s add wither_killable
execute if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:cod"}}] run tag @s add wither_killable
execute if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:salmon"}}] run tag @s add wither_killable
execute if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:pufferfish"}}] run tag @s add wither_killable
execute if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:ink_sac"}}] run tag @s add wither_killable
execute if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:kelp"}}] run tag @s add wither_killable
execute as @e[type=item,tag=!wither_item_searched] run tag @s add wither_item_searched

execute as @e[type=wither] at @s as @e[tag=wither_killable,type=item,distance=0..100] run kill @s 