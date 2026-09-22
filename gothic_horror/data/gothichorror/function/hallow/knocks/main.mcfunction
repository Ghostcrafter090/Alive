# Define
scoreboard objectives add gothicHorrorKnockQueTic dummy

# Main
execute as @a[tag=gothic_knock_pending] run scoreboard players add @s gothicHorrorKnockQueTic 1
execute as @a[tag=gothic_knock_pending] run function gstools:horror/getindex
execute as @a[tag=gothic_knock_pending] run function gstools:util/random
execute as @a[tag=gothic_knock_pending] run scoreboard players operation @s random1000 *= @e[tag=gstools_worker,type=marker] 10
execute as @a[tag=gothic_knock_pending] if score @s random100 < @s horrorIndex if score @s random1000 < @s gothicHorrorKnockQueTic run scoreboard players set @s gothicHorrorKnockQueTic -1000

execute as @a[scores={gothicHorrorKnockQueTic=..-100}] at @s as @e[sort=random,limit=1,distance=0..50] at @s run playsound minecraft:gothichorror.hallow.knock hostile @a ~ ~ ~
