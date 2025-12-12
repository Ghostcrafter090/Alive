# Define
scoreboard objectives add randomuuida dummy
scoreboard objectives add randomuuidb dummy
scoreboard objectives add randomuuidc dummy
scoreboard objectives add randomuuidd dummy
scoreboard objectives add randomposx dummy
scoreboard objectives add randomposy dummy
scoreboard objectives add randomposz dummy
scoreboard objectives add random dummy
scoreboard objectives add random10 dummy
scoreboard objectives add randomSigned10 dummy
scoreboard objectives add random50 dummy
scoreboard objectives add random100 dummy
scoreboard objectives add randomSigned100 dummy
scoreboard objectives add random1000 dummy
scoreboard objectives add randMultVal dummy


# Main
execute as @e[limit=1,sort=random] store result score @s randomuuida run data get entity @s UUID[0] 0.0001
execute as @e[limit=1,sort=random] store result score @s randomuuidb run data get entity @s UUID[1] 0.0001
execute as @e[limit=1,sort=random] store result score @s randomuuidc run data get entity @s UUID[2] 0.0001
execute as @e[limit=1,sort=random] store result score @s randomuuidd run data get entity @s UUID[3] 0.0001
execute as @e[limit=1,sort=random] store result score @s randomposx run data get entity @s UUID[0]
execute as @e[limit=1,sort=random] store result score @s randomposy run data get entity @s UUID[1]
execute as @e[limit=1,sort=random] store result score @s randomposz run data get entity @s UUID[2]
scoreboard players operation @s random = @s randomuuida
scoreboard players operation @s random *= @s randomuuidb
scoreboard players operation @s random *= @s randomuuidc
scoreboard players operation @s random *= @s randomuuidd
scoreboard players operation @s random *= @s randomposx
scoreboard players operation @s random *= @s randomposy
scoreboard players operation @s random *= @s randomposz
execute as @s run scoreboard players operation @s random10 = @r random
execute as @s run scoreboard players operation @s random50 = @r random
execute as @s run scoreboard players operation @s random100 = @r random
execute as @s run scoreboard players operation @s randomSigned10 = @r random
execute as @s run scoreboard players operation @s randomSigned100 = @r random
execute as @s run scoreboard players operation @s random1000 = @r random
scoreboard players set @s randMultVal 10
execute as @s run scoreboard players operation @s random10 %= @s randMultVal
scoreboard players set @s randMultVal 50
execute as @s run scoreboard players operation @s random50 %= @s randMultVal
scoreboard players set @s randMultVal 100
execute as @s run scoreboard players operation @s random100 %= @s randMultVal
scoreboard players set @s randMultVal 1000
execute as @s run scoreboard players operation @s random1000 %= @s randMultVal
scoreboard players set @s randMultVal 20
execute as @s run scoreboard players operation @s randomSigned10 %= @s randMultVal
execute as @s run scoreboard players remove @s randomSigned10 10
scoreboard players set @s randMultVal 200
execute as @s run scoreboard players operation @s randomSigned100 %= @s randMultVal
execute as @s run scoreboard players remove @s randomSigned100 100

