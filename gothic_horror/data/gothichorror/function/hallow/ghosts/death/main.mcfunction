# Define
scoreboard objectives add deathGhostBehaviourMode dummy
scoreboard objectives add hasLookedAtEyes dummy
scoreboard objectives add EntityPosX dummy
scoreboard objectives add EntityPosY dummy
scoreboard objectives add EntityPosZ dummy
scoreboard objectives add EyesPosX dummy
scoreboard objectives add EyesPosY dummy
scoreboard objectives add EyesPosZ dummy

# Main
execute as @e[type=text_display,tag=death_ghost] unless entity @s[scores={deathGhostBehaviourMode=0..}] run scoreboard players set @s deathGhostBehaviourMode 0

execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=0..0}] at @s if entity @p[distance=0..30] run function gothichorror:hallow/ghosts/death/sprite/default
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=1..1}] run function gothichorror:hallow/ghosts/death/sprite/blink
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=2..2}] run function gothichorror:hallow/ghosts/death/sprite/mouth
execute as @e[type=text_display,tag=death_ghost,scores={deathGhostBehaviourMode=3..3}] run function gothichorror:hallow/ghosts/death/sprite/laugh

execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1,scores={deathGhostBehaviourMode=0..0}] run function gstools:util/random
execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1,scores={deathGhostBehaviourMode=0..0}] if entity @s[scores={random1000=..7}] at @s run playsound minecraft:gothichorror.hghost.death hostile @a ~ ~ ~
execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1,scores={deathGhostBehaviourMode=0..0}] if entity @s[scores={random1000=..50}] at @s if entity @p[distance=0..30] run scoreboard players set @s deathGhostBehaviourMode 1
execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1,scores={deathGhostBehaviourMode=0..0}] if entity @s[scores={random1000=..15}] at @s if entity @p[distance=0..30] run scoreboard players set @s deathGhostBehaviourMode 2
execute as @e[type=text_display,tag=death_ghost,sort=random,limit=1,scores={deathGhostBehaviourMode=0..0}] if entity @s[scores={random1000=..7}] at @s if entity @p[distance=0..30] run scoreboard players set @s deathGhostBehaviourMode 3

execute as @e[type=text_display,tag=death_ghost,tag=death_ghost_perform_death_laugh,limit=1] as @a[tag=death_ghost_perform_death_laugh] at @s facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_perform_death_laugh,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=text_display,tag=death_ghost,tag=death_ghost_perform_death_laugh,limit=1] at @s as @a[distance=0..10] at @s facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_perform_death_laugh,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=text_display,tag=death_ghost,tag=death_ghost_perform_death_laugh,limit=1,scores={deathGhostBehaviourMode=0..0}] run kill @s

# AI
execute as @r run function gstools:horror/getindex
execute as @r run function gstools:util/random
scoreboard players operation @s horrorIndex *= @e[type=marker,tag=gstools_worker] 2
execute as @r if score @s horrorIndex > @s random1000 at @s unless entity @e[type=text_display,tag=death_ghost,distance=0..30,limit=1] run summon text_display ~ ~ ~ {view_range:100f,glow_color_override:1b,width:4f,height:4f,billboard:"center",Tags:["death_ghost"],brightness:{sky:15,block:15},text:'{"text":"a","font":"gothichorror:images"}',background:16711680}
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] run scoreboard players set @s range 100
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] at @s run function gstools:util/fast_sp_3d
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] at @s run function gstools:util/light_level
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] if entity @s[scores={lightLevel=8..}] run kill @s
execute as @e[type=text_display,tag=death_ghost,tag=!death_ghost_setup] run tag @s add death_ghost_setup

# Player Interaction
execute as @a store result score @s EntityPosX run data get entity @s Pos[0]
execute as @a store result score @s EntityPosY run data get entity @s Pos[1]
execute as @a store result score @s EntityPosZ run data get entity @s Pos[2]
execute as @a run scoreboard players set @s rayCastDistance 64
execute as @a at @s run function gstools:util/ray_cast
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] store result score @s EyesPosX run data get entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] Pos[0]
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] store result score @s EyesPosY run data get entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] Pos[1]
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] store result score @s EyesPosZ run data get entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] Pos[2]
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosX -= @s EntityPosX
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosY -= @s EntityPosY
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosZ -= @s EntityPosZ
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosX *= @s EyesPosX
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosY *= @s EyesPosY
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosZ *= @s EyesPosZ
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosX += @s EyesPosY
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosX += @s EyesPosZ
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players set @s EyesPosY 64
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosY -= @s rayCastDistance
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] run scoreboard players operation @s EyesPosY *= @s EyesPosY
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] if score @s EyesPosY >= @s EyesPosX run scoreboard players add @s hasLookedAtEyes 100
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] if score @s EyesPosY >= @s EyesPosX run scoreboard players add @s hasLookedAtEyes 100
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] if score @s EyesPosY >= @s EyesPosX run scoreboard players set @s AdrenalineApply 1
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] if score @s EyesPosY >= @s EyesPosX run effect give @s nausea 8 0 true
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] if score @s EyesPosY >= @s EyesPosX run playsound minecraft:gothichorror.hghost.death hostile @a ~ ~ ~
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] if score @s EyesPosY >= @s EyesPosX run tag @s add death_ghost_perform_death_laugh
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] if score @s EyesPosY >= @s EyesPosX at @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace light
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] if score @s EyesPosY >= @s EyesPosX run scoreboard players set @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64,tag=!death_ghost_perform_death_laugh] deathGhostBehaviourMode 3
execute as @a at @s anchored eyes facing entity @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.07] if score @s EyesPosY >= @s EyesPosX run tag @e[type=text_display,tag=death_ghost,tag=death_ghost_setup,limit=1,sort=nearest,distance=0..64] add death_ghost_perform_death_laugh

# Light
execute as @e[tag=death_ghost] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace minecraft:light
execute as @e[tag=death_ghost,tag=death_ghost_setup,tag=!death_ghost_perform_death_laugh] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=1] replace air


