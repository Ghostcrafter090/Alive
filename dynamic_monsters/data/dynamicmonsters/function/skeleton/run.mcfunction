# Define
scoreboard objectives add DeathTime dummy
scoreboard objectives add skeletonEquipmentVersionConflict dummy

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
