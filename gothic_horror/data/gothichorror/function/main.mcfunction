# Define

# Main
schedule function gothichorror:hallow/h_general/main 1t append
schedule function gothichorror:effects/main 1t append

# Dark Rumble
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @e[tag=!tile] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @e[tag=!tile] run function gstools:horror/getindex
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @e[tag=!tile] run function gstools:util/is_outside
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @e[tag=!tile] if score @s random100 < @s horrorIndex at @s unless entity @s[scores={isOutside=1..,horrorIndex=..90}] run playsound minecraft:gothichorror.rumble hostile @a ~ ~ ~ 9 1
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @e[tag=gstools_worker,type=marker] run tag @s add after_sunset

execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @e[tag=!tile] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @e[tag=!tile] run function gstools:horror/getindex
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @e[tag=!tile] run function gstools:util/is_outside
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @e[tag=!tile] if score @s random100 < @s horrorIndex at @s unless entity @s[scores={isOutside=1..,horrorIndex=..90}] run playsound minecraft:gothichorror.rumble hostile @a ~ ~ ~ 9 1
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @e[tag=gstools_worker,type=marker] run tag @s add after_midnight

execute as @e[tag=gstools_worker,type=marker,scores={timeOfDay=..1000},tag=after_sunset] run tag @s remove after_sunset
execute as @e[tag=gstools_worker,type=marker,scores={timeOfDay=..1000},tag=after_midnight] run tag @s remove after_midnight