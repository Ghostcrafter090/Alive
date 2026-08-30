# Define
scoreboard objectives add doDaylightCycleCache dummy

# Main
schedule function gothichorror:hallow/main 1t append
schedule function gothichorror:effects/main 2t append

# Dark Rumble
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=11900..11999},tag=!after_sunset] as @e[tag=is_alive,sort=random,limit=30] run function gstools:util/is_outside
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=11900..11999},tag=!after_sunset] as @e[type=#minecraft:undead,sort=random,limit=30] run function gstools:util/is_outside
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=17900..17999},tag=!after_sunset] as @e[tag=is_alive,sort=random,limit=30] run function gstools:util/is_outside
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=17900..17999},tag=!after_sunset] as @e[type=#minecraft:undead,sort=random,limit=30] run function gstools:util/is_outside


execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[tag=is_alive,sort=nearest,limit=10] run function gstools:horror/getindex
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[tag=is_alive,sort=nearest,limit=10] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[tag=is_alive,sort=nearest,limit=10] if score @s random100 < @s horrorIndex at @s unless entity @s[scores={isOutside=1..,horrorIndex=..90}] run playsound minecraft:gothichorror.rumble hostile @a[scores={horrorIndex=1..}] ~ ~ ~ 9 1
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[tag=is_alive,sort=nearest,limit=10] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[tag=is_alive,sort=nearest,limit=10] if score @s random100 < @s horrorIndex at @s unless entity @s[scores={isOutside=1..,horrorIndex=..100}] run playsound minecraft:gothichorror.hallow.woman.sunset hostile @a[scores={horrorIndex=1..}] ~ ~ ~ 0.3 1
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[type=#minecraft:undead,sort=nearest,limit=10] run function gstools:horror/getindex
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[type=#minecraft:undead,sort=nearest,limit=10] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[type=#minecraft:undead,sort=nearest,limit=10] if score @s random100 < @s horrorIndex at @s unless entity @s[scores={isOutside=1..,horrorIndex=..90}] run playsound minecraft:gothichorror.rumble hostile @a[scores={horrorIndex=1..}] ~ ~ ~ 9 1
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[type=#minecraft:undead,sort=nearest,limit=10] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @a at @s as @e[type=#minecraft:undead,sort=nearest,limit=10] if score @s random100 < @s horrorIndex at @s unless entity @s[scores={isOutside=1..,horrorIndex=..90}] run playsound minecraft:gothichorror.hallow.woman.sunset hostile @a[scores={horrorIndex=1..}] ~ ~ ~ 9 1
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=12000..},tag=!after_sunset] as @e[tag=gstools_worker,type=marker] run tag @s add after_sunset


execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @a at @s as @e[tag=is_alive,sort=nearest,limit=10] run function gstools:horror/getindex
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @a at @s as @e[tag=is_alive,sort=nearest,limit=10] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @a at @s as @e[tag=is_alive,sort=nearest,limit=10] if score @s random100 < @s horrorIndex at @s unless entity @s[scores={isOutside=1..,horrorIndex=..90}] run playsound minecraft:gothichorror.rumble hostile @a[scores={horrorIndex=1..}] ~ ~ ~ 9 1
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @a at @s as @e[type=#minecraft:undead,sort=nearest,limit=10] run function gstools:horror/getindex
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @a at @s as @e[type=#minecraft:undead,sort=nearest,limit=10] run function gstools:util/random
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @a at @s as @e[type=#minecraft:undead,sort=nearest,limit=10] if score @s random100 < @s horrorIndex at @s unless entity @s[scores={isOutside=1..,horrorIndex=..90}] run playsound minecraft:gothichorror.rumble hostile @a[scores={horrorIndex=1..}] ~ ~ ~ 9 1
execute if entity @e[tag=gstools_worker,type=marker,scores={timeOfDay=18000..},tag=!after_midnight] as @e[tag=gstools_worker,type=marker] run tag @s add after_midnight

execute as @e[tag=gstools_worker,type=marker,scores={timeOfDay=..1000},tag=after_sunset] run tag @s remove after_sunset
execute as @e[tag=gstools_worker,type=marker,scores={timeOfDay=..1000},tag=after_midnight] run tag @s remove after_midnight