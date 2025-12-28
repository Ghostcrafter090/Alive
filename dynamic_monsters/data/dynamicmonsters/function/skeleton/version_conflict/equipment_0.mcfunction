execute if entity @s[tag=mainhand] at @s if entity @e[tag=golem,distance=0..5] run data modify entity @s ArmorItems[-1] set from entity @s HandItems[0]
execute if entity @s[tag=mainhand] at @s if entity @e[tag=golem,distance=0..5] run data modify entity @s HandItems[0] set value {Count:1,id:"minecraft:stone_sword"}
execute if entity @s[tag=mainhand] at @s if entity @e[tag=golem,distance=0..5] run tag @s remove mainhand

execute if entity @s[tag=!mainhand] at @s unless entity @e[tag=golem,distance=0..5] run data modify entity @s HandItems[0] set from entity @s ArmorItems[-1]
execute if entity @s[tag=!mainhand] at @s unless entity @e[tag=golem,distance=0..5] run data remove entity @s ArmorItems[-1]
execute if entity @s[tag=!mainhand] at @s unless entity @e[tag=golem,distance=0..5] run tag @s add mainhand