# Define
scoreboard objectives add skeletonHasOffhand dummy
scoreboard objectives add skeletonHasFlamingBow dummy

# Main
tag @s add mainhand
execute store success score @s skeletonHasOffhand run data get entity @s ArmorItems[-1].id
execute if entity @s[scores={skeletonHasOffhand=1..1}] run tag @s add ignore_skeleton

execute store success score @s skeletonHasFlamingBow run data get entity @e[type=skeleton,limit=1,sort=random] equipment.mainhand.components."minecraft:enchantments"."minecraft:flame"
execute if entity @s[scores={skeletonHasOffhand=1..1}] run tag @s add ignore_skeleton_flame

execute at @s run tag @s add skeleton_setup