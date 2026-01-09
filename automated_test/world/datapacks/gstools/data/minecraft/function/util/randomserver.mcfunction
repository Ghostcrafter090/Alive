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
scoreboard objectives add random50 dummy
scoreboard objectives add random100 dummy
scoreboard objectives add randMultVal dummy


# Main
execute as @e[limit=1,sort=random] run function gstools:util/randomserver_sub/16
scoreboard players operation @e[tag=gstools_worker,type=marker] random = @e[tag=gstools_worker,type=marker] randomuuida
scoreboard players operation @e[tag=gstools_worker,type=marker] random *= @e[tag=gstools_worker,type=marker] randomuuidb
scoreboard players operation @e[tag=gstools_worker,type=marker] random *= @e[tag=gstools_worker,type=marker] randomuuidc
scoreboard players operation @e[tag=gstools_worker,type=marker] random *= @e[tag=gstools_worker,type=marker] randomuuidd
scoreboard players operation @e[tag=gstools_worker,type=marker] random *= @e[tag=gstools_worker,type=marker] randomposx
scoreboard players operation @e[tag=gstools_worker,type=marker] random *= @e[tag=gstools_worker,type=marker] randomposy
scoreboard players operation @e[tag=gstools_worker,type=marker] random *= @e[tag=gstools_worker,type=marker] randomposz
execute as @e[tag=gstools_worker,type=marker] run function gstools:util/randomserver_sub/30
scoreboard players set @e[tag=gstools_worker,type=marker] randMultVal 10
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s random10 %= @e[tag=gstools_worker,type=marker] randMultVal
scoreboard players set @e[tag=gstools_worker,type=marker] randMultVal 50
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s random50 %= @e[tag=gstools_worker,type=marker] randMultVal
scoreboard players set @e[tag=gstools_worker,type=marker] randMultVal 100
execute as @e[tag=gstools_worker,type=marker] run scoreboard players operation @s random100 %= @e[tag=gstools_worker,type=marker] randMultVal