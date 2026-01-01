# Define
scoreboard objectives add DeathTime dummy
scoreboard objectives add skeletonEquipmentVersionConflict dummy
scoreboard objectives add skeletonTimeOnFire dummy

# Main
execute if entity @s[tag=!skeleton_setup] run function dynamicmonsters:skeleton/setup

execute if entity @s[tag=mainhand] at @s if entity @e[tag=golem,distance=0..5] run data modify entity @s equipment.saddle set from entity @s equipment.mainhand
execute if entity @s[tag=mainhand] at @s if entity @e[tag=golem,distance=0..5] run data modify entity @s equipment.mainhand set value {count:1,id:"minecraft:stone_sword"}
execute if entity @s[tag=mainhand] at @s if entity @e[tag=golem,distance=0..5] run tag @s remove mainhand

execute if entity @s[tag=!mainhand] at @s unless entity @e[tag=golem,distance=0..5] run data modify entity @s equipment.mainhand set from entity @s equipment.saddle
execute if entity @s[tag=!mainhand] at @s unless entity @e[tag=golem,distance=0..5] run data remove entity @s equipment.saddle
execute if entity @s[tag=!mainhand] at @s unless entity @e[tag=golem,distance=0..5] run tag @s add mainhand

execute unless entity @s[scores={skeletonEquipmentVersionConflict=0..1}] store success score @s skeletonEquipmentVersionConflict run data get entity @s equipment.mainhand
execute if entity @s[scores={skeletonEquipmentVersionConflict=0..0}] run function dynamicmonsters:skeleton/version_conflict/equipment_0

execute unless entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=0..12500}] if entity @s[type=skeleton] run effect give @s fire_resistance 10 1 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticQuarter=1..1}] store result score @s secondsTillExtinguished run data get entity @s Fire
execute if entity @s[scores={secondsTillExtinguished=1..}] run scoreboard players add @s skeletonTimeOnFire 1
execute if entity @s[scores={secondsTillExtinguished=1..},tag=!ignore_skeleton_flame] run enchant @s flame 1
execute unless entity @s[scores={secondsTillExtinguished=1..}] if entity @s[tag=!ignore_skeleton_flame] run data remove entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:flame"
execute if entity @s[scores={skeletonTimeOnFire=6000..}] at @s run summon wither_skeleton ~ ~ ~
execute if entity @s[scores={skeletonTimeOnFire=6000..}] at @s run tp @s ~ -100 ~
execute if entity @s[scores={skeletonTimeOnFire=6000..}] run kill @s

function gstools:util/random
execute if entity @s[scores={random1000=..5}] as @s at @s run summon arrow ~ ~2 ~ {Tags:['make_skeleton_attack'],damage:0.001d}
execute as @e[type=arrow,tag=make_skeleton_attack,tag=!modified] at @s run data modify entity @s Owner set from entity @e[tag=walkable,distance=3..,sort=nearest,limit=1] UUID
execute as @e[type=arrow,tag=make_skeleton_attack,tag=!modified] run tag @s add modified

