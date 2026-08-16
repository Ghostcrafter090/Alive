# Define
scoreboard objectives add vectorX dummy
scoreboard objectives add vectorY dummy
scoreboard objectives add vectorZ dummy

scoreboard objectives add PosEntityX dummy
scoreboard objectives add PosEntityY dummy
scoreboard objectives add PosEntityZ dummy

scoreboard objectives add vectorScale dummy

# Main
execute unless entity @s[scores={vectorScale=-2147483647..2147483647}] run scoreboard players set @s vectorScale 100

execute store result score @s PosEntityX run data get entity @s Pos[0] 1
execute store result score @s PosEntityY run data get entity @s Pos[1] 1
execute store result score @s PosEntityZ run data get entity @s Pos[2] 1

execute store result score @s vectorX as @e[type=marker,tag=vector,limit=1,sort=nearest] run data get entity @s Pos[0] 100
execute store result score @s vectorY as @e[type=marker,tag=vector,limit=1,sort=nearest] run data get entity @s Pos[1] 100
execute store result score @s vectorZ as @e[type=marker,tag=vector,limit=1,sort=nearest] run data get entity @s Pos[2] 100

kill @e[type=marker,tag=vector]

scoreboard players operation @s vectorX -= @s PosEntityX
scoreboard players operation @s vectorY -= @s PosEntityY
scoreboard players operation @s vectorZ -= @s PosEntityZ

scoreboard players operation @s vectorX /= @s vectorScale
scoreboard players operation @s vectorY /= @s vectorScale
scoreboard players operation @s vectorZ /= @s vectorScale

scoreboard players set @s vectorScale 100

