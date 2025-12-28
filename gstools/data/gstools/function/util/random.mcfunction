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
execute as @s run scoreboard players operation @s random10 = @s random
execute as @s run scoreboard players operation @s random50 = @s random
execute as @s run scoreboard players operation @s random100 = @s random
execute as @s run scoreboard players operation @s randomSigned10 = @s random
execute as @s run scoreboard players operation @s randomSigned100 = @s random
execute as @s run scoreboard players operation @s random1000 = @s random
scoreboard players set @s randMultVal 20
execute as @s run scoreboard players operation @s random10 %= @s randMultVal
execute as @s run scoreboard players operation @s random10 /= @s 2
scoreboard players set @s randMultVal 100
execute as @s run scoreboard players operation @s random50 %= @s randMultVal
execute as @s run scoreboard players operation @s random50 /= @s 2
scoreboard players set @s randMultVal 200
execute as @s run scoreboard players operation @s random100 %= @s randMultVal
execute as @s run scoreboard players operation @s random100 /= @s 2
scoreboard players set @s randMultVal 2000
execute as @s run scoreboard players operation @s random1000 %= @s randMultVal
execute as @s run scoreboard players operation @s random1000 /= @s 2

scoreboard players set @s randMultVal 40
execute as @s run scoreboard players operation @s randomSigned10 %= @s randMultVal
execute as @s run scoreboard players operation @s randomSigned10 /= @s 2
execute as @s run scoreboard players remove @s randomSigned10 10
scoreboard players set @s randMultVal 400
execute as @s run scoreboard players operation @s randomSigned100 %= @s randMultVal
execute as @s run scoreboard players operation @s randomSigned100 /= @s 2

execute as @s run scoreboard players remove @s randomSigned100 100

