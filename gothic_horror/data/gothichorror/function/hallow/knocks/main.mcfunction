# Define
scoreboard objectives add gothicHorrorKnockQueTic dummy

# Main
execute as @e[tag=is_human,tag=gothic_knock_pending,limit=10,sort=random] run scoreboard players add @s gothicHorrorKnockQueTic 1
execute as @e[tag=is_human,tag=gothic_knock_pending,limit=10,sort=random] run function gstools:horror/getindex
execute as @e[tag=is_human,tag=gothic_knock_pending,limit=10,sort=random] run function gstools:util/random
execute as @e[tag=is_human,tag=gothic_knock_pending,limit=10,sort=random] run scoreboard players operation @s random1000 *= @e[tag=gstools_worker,type=marker] 10
execute as @e[tag=is_human,tag=gothic_knock_pending,limit=10,sort=random] if score @s random100 < @s horrorIndex if score @s random1000 < @s gothicHorrorKnockQueTic run scoreboard players set @s gothicHorrorKnockQueTic -1000

execute as @a[tag=gothic_knock_pending,limit=10,sort=random] run scoreboard players add @s gothicHorrorKnockQueTic 1
execute as @a[tag=gothic_knock_pending,limit=10,sort=random] run function gstools:horror/getindex
execute as @a[tag=gothic_knock_pending,limit=10,sort=random] run function gstools:util/random
execute as @a[tag=gothic_knock_pending,limit=10,sort=random] run scoreboard players operation @s random1000 *= @e[tag=gstools_worker,type=marker] 10
execute as @a[tag=gothic_knock_pending,limit=10,sort=random] if score @s random100 < @s horrorIndex if score @s random1000 < @s gothicHorrorKnockQueTic run scoreboard players set @s gothicHorrorKnockQueTic -1000

execute as @e[tag=is_human,scores={gothicHorrorKnockQueTic=..-100},sort=random,limit=10] at @s as @e[sort=random,limit=1,distance=0..50] at @s run playsound minecraft:gothichorror.hallow.knock hostile @a ~ ~ ~
execute as @e[tag=is_human,scores={gothicHorrorKnockQueTic=..-100},sort=random,limit=10] run tag @s remove gothic_knock_pending
execute as @e[tag=is_human,scores={gothicHorrorKnockQueTic=..-100},sort=random,limit=10] run scoreboard players set @s gothicHorrorKnockQueTic 0