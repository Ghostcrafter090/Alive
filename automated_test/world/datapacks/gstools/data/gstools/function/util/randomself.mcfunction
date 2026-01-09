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
execute as @e[limit=1,sort=random] run function gstools:util/randomself_sub/19
scoreboard players operation @s random = @s randomuuida
scoreboard players operation @s random *= @s randomuuidb
scoreboard players operation @s random *= @s randomuuidc
scoreboard players operation @s random *= @s randomuuidd
scoreboard players operation @s random *= @s randomposx
scoreboard players operation @s random *= @s randomposy
scoreboard players operation @s random *= @s randomposz
execute as @s run function gstools:util/randomself_sub/33
scoreboard players set @s randMultVal 10
execute as @s run scoreboard players operation @s random10 %= @s randMultVal
scoreboard players set @s randMultVal 50
execute as @s run scoreboard players operation @s random50 %= @s randMultVal
scoreboard players set @s randMultVal 100
execute as @s run scoreboard players operation @s random100 %= @s randMultVal
scoreboard players set @s randMultVal 1000
execute as @s run scoreboard players operation @s random1000 %= @s randMultVal
scoreboard players set @s randMultVal 20
execute as @s run function gstools:util/randomself_sub/48
scoreboard players set @s randMultVal 200
execute as @s run function gstools:util/randomself_sub/51

