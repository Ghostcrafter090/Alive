# Define
scoreboard objectives add witherHasBeenKilled dummy

# Main
schedule function bossprogression:bosses/wither/util/toggle 11t append
execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] run schedule function bossprogression:bosses/wither/util/size 1t append
execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] if entity @e[type=wither] run function bossprogression:bosses/wither/util/skeleton

execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] run schedule function bossprogression:bosses/wither/portal/main 2t append

execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:nether_star"}}] run scoreboard players set @e[tag=gstools_worker,type=marker] witherHasBeenKilled 1
execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:tropical_fish"}}] run tag @s add wither_killable
execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:cod"}}] run tag @s add wither_killable
execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:salmon"}}] run tag @s add wither_killable
execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:pufferfish"}}] run tag @s add wither_killable
execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:ink_sac"}}] run tag @s add wither_killable
execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] if entity @e[type=wither,limit=1] as @e[type=item,tag=!wither_item_searched] if entity @s[nbt={Item:{id:"minecraft:kelp"}}] run tag @s add wither_killable
execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] as @e[type=item,tag=!wither_item_searched] run tag @s add wither_item_searched

execute if entity @e[tag=gstools_worker,type=marker,scores={guardiansHaveBeenKilled=1..1}] as @e[type=wither] at @s as @e[tag=wither_killable,type=item,distance=0..100] run kill @s 