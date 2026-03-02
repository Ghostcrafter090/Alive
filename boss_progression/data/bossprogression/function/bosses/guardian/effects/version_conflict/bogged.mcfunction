execute as @e[type=skeleton,tag=replace_skeleton_to_bogged,limit=1,sort=random] at @s run tag @s add replace_working
execute as @e[type=skeleton,tag=replace_skeleton_to_bogged,tag=replace_working] at @s run playsound entity.skeleton.converted_to_stray master @a ~ ~ ~ 1 0.1
execute as @e[type=skeleton,tag=replace_skeleton_to_bogged,tag=replace_working] at @s run summon bogged ~ ~ ~ {Tags:['bogged_not_setup']}
execute as @e[type=bogged,tag=bogged_not_setup] run data modify entity @s {} set from entity @e[type=skeleton,tag=replace_skeleton_to_bogged,tag=replace_working,limit=1,sort=nearest]
execute as @e[type=skeleton,tag=replace_skeleton_to_bogged,tag=replace_working] at @s run tp @s ~ -500 ~
execute as @e[type=skeleton,tag=replace_skeleton_to_bogged,tag=replace_working] at @s run kill @s
execute as @e[type=bogged,tag=bogged_not_setup] run tag @s remove bogged_not_setup