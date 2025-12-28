# Define
scoreboard objectives add skeletonHasOffhand dummy

# Main
tag @s add mainhand
execute store success score @s skeletonHasOffhand run data get entity @s ArmorItems[-1].id
execute if entity @e[scores={skeletonHasOffhand=1..1}] run tag @s add ignore_skeleton

execute at @s run tag @s add skeleton_setup