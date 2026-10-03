# Define
scoreboard objectives add _playerIsActive dummy
scoreboard objectives add playerIsActive dummy
scoreboard objectives add _globalsPlayerX dummy
scoreboard objectives add _globalsPlayerY dummy
scoreboard objectives add _globalsPlayerZ dummy
scoreboard objectives add _globalsPlayerYaw dummy
scoreboard objectives add _globalsPlayerPitch dummy
scoreboard objectives add _globalsPlayerXOld dummy
scoreboard objectives add _globalsPlayerYOld dummy
scoreboard objectives add _globalsPlayerZOld dummy
scoreboard objectives add _globalsPlayerYawOld dummy
scoreboard objectives add _globalsPlayerPitchOld dummy

# Main
execute as @s store result score @s _globalsPlayerX run data get entity @s Pos[0] 1000
execute as @s store result score @s _globalsPlayerY run data get entity @s Pos[1] 1000
execute as @s store result score @s _globalsPlayerZ run data get entity @s Pos[2] 1000
execute as @s store result score @s _globalsPlayerYaw run data get entity @s Rotation[0] 1000
execute as @s store result score @s _globalsPlayerPitch run data get entity @s Rotation[1] 1000

execute unless score @s _globalsPlayerX = @s _globalsPlayerXOld run scoreboard players set @s _playerIsActive -20
execute unless score @s _globalsPlayerY = @s _globalsPlayerYOld run scoreboard players set @s _playerIsActive -20
execute unless score @s _globalsPlayerZ = @s _globalsPlayerZOld run scoreboard players set @s _playerIsActive -20
execute unless score @s _globalsPlayerYaw = @s _globalsPlayerYawOld run scoreboard players set @s _playerIsActive -20
execute unless score @s _globalsPlayerPitch = @s _globalsPlayerPitchOld run scoreboard players set @s _playerIsActive -20
execute unless entity @s[scores={_playerIsActive=1..}] run scoreboard players add @s _playerIsActive 1

scoreboard players operation @s _globalsPlayerXOld = @s _globalsPlayerX
scoreboard players operation @s _globalsPlayerYOld = @s _globalsPlayerY
scoreboard players operation @s _globalsPlayerZOld = @s _globalsPlayerZ
scoreboard players operation @s _globalsPlayerYawOld = @s _globalsPlayerYaw
scoreboard players operation @s _globalsPlayerPitchOld = @s _globalsPlayerPitch

execute unless entity @s[scores={_playerIsActive=1..}] run scoreboard players set @s playerIsActive 1
execute if entity @s[scores={_playerIsActive=1..}] run scoreboard players set @s playerIsActive 0