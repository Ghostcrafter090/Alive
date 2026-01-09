# Define
scoreboard objectives add randomuuida dummy
scoreboard objectives add randomuuidb dummy
scoreboard objectives add randomuuidc dummy
scoreboard objectives add randomuuidd dummy
scoreboard objectives add randomposx dummy
scoreboard objectives add randomposy dummy
scoreboard objectives add randomposz dummy
scoreboard objectives add randMultVal dummy
scoreboard players set @s 2 2

# Main
execute store result score @s randomuuida as @e[limit=1,sort=random] run data get entity @s UUID[0] 0.0001
execute store result score @s randomuuidb as @e[limit=1,sort=random] run data get entity @s UUID[1] 0.0001
execute store result score @s randomuuidc as @e[limit=1,sort=random] run data get entity @s UUID[2] 0.0001
execute store result score @s randomuuidd as @e[limit=1,sort=random] run data get entity @s UUID[3] 0.0001
execute store result score @s randomposx as @e[limit=1,sort=random] run data get entity @s UUID[0]
execute store result score @s randomposy as @e[limit=1,sort=random] run data get entity @s UUID[1]
execute store result score @s randomposz as @e[limit=1,sort=random] run data get entity @s UUID[2]
scoreboard players operation @s random = @s randomuuida
scoreboard players operation @s random *= @s randomuuidb
scoreboard players operation @s random *= @s randomuuidc
scoreboard players operation @s random *= @s randomuuidd
scoreboard players operation @s random *= @s randomposx
scoreboard players operation @s random *= @s randomposy
scoreboard players operation @s random *= @s randomposz
execute as @s run function gstools:util/version_conflict/random_0_sub/26
scoreboard players set @s randMultVal 20
execute as @s run function gstools:util/version_conflict/random_0_sub/33
scoreboard players set @s randMultVal 100
execute as @s run function gstools:util/version_conflict/random_0_sub/36
scoreboard players set @s randMultVal 200
execute as @s run function gstools:util/version_conflict/random_0_sub/39
scoreboard players set @s randMultVal 2000
execute as @s run function gstools:util/version_conflict/random_0_sub/42

scoreboard players set @s randMultVal 40
execute as @s run function gstools:util/version_conflict/random_0_sub/46
scoreboard players set @s randMultVal 400
execute as @s run function gstools:util/version_conflict/random_0_sub/50

execute as @s run scoreboard players remove @s randomSigned100 100