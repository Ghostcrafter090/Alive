# Define
scoreboard objectives add skeletonWitherConversionTime dummy

# Main
execute as @e[type=wither,scores={currentWitherSizeAttribute=..100}] at @s as @e[type=skeleton,distance=..10] run scoreboard players add @s skeletonWitherConversionTime 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=101..150}] at @s as @e[type=skeleton,distance=..20] run scoreboard players add @s skeletonWitherConversionTime 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=151..200}] at @s as @e[type=skeleton,distance=..30] run scoreboard players add @s skeletonWitherConversionTime 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=201..250}] at @s as @e[type=skeleton,distance=..40] run scoreboard players add @s skeletonWitherConversionTime 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=251..300}] at @s as @e[type=skeleton,distance=..50] run scoreboard players add @s skeletonWitherConversionTime 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=301..350}] at @s as @e[type=skeleton,distance=..60] run scoreboard players add @s skeletonWitherConversionTime 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=351..400}] at @s as @e[type=skeleton,distance=..70] run scoreboard players add @s skeletonWitherConversionTime 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=400..}] at @s as @e[type=skeleton,distance=..80] run scoreboard players add @s skeletonWitherConversionTime 1

execute as @e[type=skeleton,sort=random,limit=1] run scoreboard players remove @s skeletonWitherConversionTime 1
execute as @e[type=skeleton,sort=random,limit=1] if entity @e[scores={skeletonWitherConversionTime=..0}] run scoreboard players set @s skeletonWitherConversionTime 0

execute as @e[type=skeleton,scores={skeletonWitherConversionTime=900..}] run tag @s add skeleton_wither_convert

execute as @e[type=skeleton,tag=skeleton_wither_convert] at @s run summon wither_skeleton ~ ~ ~ {Tags:['skeleton_conversion']}
execute as @e[type=skeleton,tag=skeleton_wither_convert] at @s run tp @s ~ -70 ~
execute as @e[tag=skeleton_conversion,type=wither_skeleton] at @s positioned ~ -70 ~ run data modify entity @s {} set from entity @e[type=skeleton,tag=skeleton_wither_convert,sort=nearest,limit=1] {}
execute as @e[tag=skeleton_conversion,type=wither_skeleton] run tag @s remove skeleton_conversion
execute as @e[type=skeleton,tag=skeleton_wither_convert] run kill @s

execute as @e[type=skeleton,scores={skeletonWitherConversionTime=900..}] run tag @s add skeleton_wither_convert