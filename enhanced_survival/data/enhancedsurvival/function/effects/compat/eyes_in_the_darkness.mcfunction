# Define
scoreboard objectives add hasLookedAtEyes dummy
scoreboard objectives add EntityPosX dummy
scoreboard objectives add EntityPosY dummy
scoreboard objectives add EntityPosZ dummy
scoreboard objectives add EyesPosX dummy
scoreboard objectives add EyesPosY dummy
scoreboard objectives add EyesPosZ dummy


# Main
execute as @a store result score @s EntityPosX run data get entity @s Pos[0]
execute as @a store result score @s EntityPosY run data get entity @s Pos[1]
execute as @a store result score @s EntityPosZ run data get entity @s Pos[2]
execute as @a run scoreboard players set @s rayCastDistance 64
execute as @a run function gstools:util/ray_cast
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] store result score @s EyesPosX run data get entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] Pos[0]
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] store result score @s EyesPosY run data get entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] Pos[1]
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] store result score @s EyesPosZ run data get entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] Pos[2]
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosX -= @s EntityPosX
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosY -= @s EntityPosY
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosZ -= @s EntityPosZ
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosX *= @s EyesPosX
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosY *= @s EyesPosY
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosZ *= @s EyesPosZ
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosX += @s EyesPosY
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosX += @s EyesPosZ
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players set @s EyesPosY 64
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosY -= @s rayCastDistance
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run scoreboard players operation @s EyesPosY *= @s EyesPosY
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] if score @s EyesPosY <= @s EyesPosX run scoreboard players add @s hasLookedAtEyes 100
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] if score @s EyesPosY <= @s EyesPosX run scoreboard players add @s hasLookedAtEyes 100
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] if score @s EyesPosY <= @s EyesPosX run scoreboard players set @s AdrenalineApply 1
execute as @a at @s anchored eyes facing entity @e[type=zombie,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] if score @s EyesPosY <= @s EyesPosX run effect give @s nausea 5 0 true