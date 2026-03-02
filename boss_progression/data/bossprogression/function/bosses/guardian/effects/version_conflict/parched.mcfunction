execute as @e[type=parched] unless entity @s[scores={undeadHydrationConversionOverride=0..}] run scoreboard players set @s undeadHydrationConversionOverride 1800
scoreboard players remove @e[type=parched] undeadHydrationConversionOverride 1
execute as @e[type=parched] if entity @s[scores={undeadHydrationConversionOverride=0..}] at @s run particle minecraft:falling_water ~ ~ ~ 0.5 1 0.5 0 2
execute as @e[type=parched,scores={undeadHydrationConversionOverride=..0},sort=random,limit=5] run tag @s add replace_parched_to_skeleton

execute as @e[type=parched,tag=replace_parched_to_skeleton,limit=1,sort=random] at @s run tag @s add replace_working
execute as @e[type=parched,tag=replace_parched_to_skeleton,tag=replace_working] at @s run playsound entity.skeleton.converted_to_stray master @a ~ ~ ~ 1 2
execute as @e[type=parched,tag=replace_parched_to_skeleton,tag=replace_working] at @s run summon skeleton ~ ~ ~ {Tags:['skeleton_not_setup']}
execute as @e[type=skeleton,tag=skeleton_not_setup] run data modify entity @s {} set from entity @e[type=parched,tag=replace_parched_to_skeleton,tag=replace_working,limit=1,sort=nearest]
execute as @e[type=parched,tag=replace_parched_to_skeleton,tag=replace_working] at @s run tp @s ~ -500 ~
execute as @e[type=parched,tag=replace_parched_to_skeleton,tag=replace_working] at @s run kill @s
execute as @e[type=skeleton,tag=skeleton_not_setup] run tag @s remove skeleton_not_setup
