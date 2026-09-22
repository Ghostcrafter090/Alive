# Define
scoreboard objectives add lastBansheeTic dummy
scoreboard objectives add bansheeNearbyMonsters dummy
scoreboard objectives add bansheeWorkingHealth dummy

# Main
execute as @a[scores={lastBansheeTic=5000..}] at @s store result score @s bansheeNearbyMonsters if entity @e[tag=monster,distance=0..45]
execute as @a[scores={lastBansheeTic=5000..}] if entity @s[scores={bansheeNearbyMonsters=1..}] at @s run function gstools:horror/getindex
execute as @a[scores={lastBansheeTic=5000..}] if entity @s[scores={bansheeNearbyMonsters=1..}] run function gstools:util/random
execute as @a[scores={lastBansheeTic=5000..}] if entity @s[scores={bansheeNearbyMonsters=1..}] run scoreboard players operation @s horrorIndex *= @s random100
execute as @a[scores={lastBansheeTic=5000..}] if entity @s[scores={bansheeNearbyMonsters=1..}] run scoreboard players operation @s horrorIndex /= @e[type=marker,tag=gstools_worker] 100
execute as @a[scores={lastBansheeTic=5000..}] if entity @s[scores={bansheeNearbyMonsters=1..}] if score @s bansheeNearbyMonsters > @s horrorIndex at @s as @e[tag=monster,distance=0..45,sort=random,limit=1] at @s run playsound minecraft:gothichorror.hallow.banshee hostile @a ~ ~ ~ 3
execute as @a[scores={lastBansheeTic=5000..}] if entity @s[scores={bansheeNearbyMonsters=1..}] if score @s bansheeNearbyMonsters > @s horrorIndex run scoreboard players set @s lastBansheeTic 0

execute as @a[scores={lastBansheeTic=5000..}] run scoreboard players operation @s bansheeWorkingHealth = @e[tag=gstools_worker,type=marker] 20
execute as @a[scores={lastBansheeTic=5000..}] run scoreboard players operation @s bansheeWorkingHealth -= @s health
execute as @a[scores={lastBansheeTic=5000..}] run function gstools:util/random
execute as @a[scores={lastBansheeTic=5000..}] run function gstools:horror/getindex
execute as @a[scores={lastBansheeTic=5000..}] run scoreboard players operation @s horrorIndex *= @s random100
execute as @a[scores={lastBansheeTic=5000..}] run scoreboard players operation @s horrorIndex /= @e[type=marker,tag=gstools_worker] 100
execute as @a[scores={lastBansheeTic=5000..}] if entity @s[scores={bansheeWorkingHealth=1..}] if score @s bansheeWorkingHealth > @s horrorIndex at @s as @e[tag=monster,distance=0..45,sort=random,limit=1] at @s run playsound minecraft:gothichorror.hallow.banshee hostile @a ~ ~ ~ 3
execute as @a[scores={lastBansheeTic=5000..}] if entity @s[scores={bansheeWorkingHealth=1..}] if score @s bansheeWorkingHealth > @s horrorIndex run scoreboard players set @s lastBansheeTic 0