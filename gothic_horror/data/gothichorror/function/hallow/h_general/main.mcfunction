# Define
scoreboard objectives add hGeneralChanceWorkerA dummy
scoreboard objectives add hGeneralChanceWorkerB dummy
scoreboard objectives add hGeneralSpeed dummy
scoreboard objectives add hGeneralEvilChance dummy
scoreboard objectives add hGeneralSinisterChance dummy
scoreboard objectives add hGeneralDarkChance dummy
scoreboard objectives add hGeneralDyingChance dummy
scoreboard objectives add hGeneralDeathChance dummy
scoreboard objectives add hGeneralTicWorkerA dummy
scoreboard objectives add hGeneralTic dummy
scoreboard objectives add hGeneralChangeWorkerC dummy
# Main

# verticalCursorWorker
execute as @e[sort=random,limit=5,scores={hGeneralTic=..10}] at @s run function gstools:util/is_outside
execute as @e[sort=random,limit=5,scores={hGeneralTic=..10}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run function gstools:horror/getindex
execute as @e[sort=random,limit=5,scores={hGeneralTic=..10}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run scoreboard players operation @s hGeneralChangeWorkerC = @s horrorIndex
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run function gstools:util/random
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] store result score @s hGeneralChanceWorkerA run data get entity @s Pos[1] 1
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] as @e[tag=gstools_cursor,type=marker,limit=1,sort=nearest] store result score @s hGeneralChanceWorkerA run data get entity @s Pos[1] 1
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run scoreboard players operation @s hGeneralChanceWorkerB = @e[tag=gstools_cursor,type=marker,limit=1,sort=nearest] hGeneralChanceWorkerA
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run scoreboard players operation @s hGeneralChanceWorkerB -= @s hGeneralChanceWorkerA
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run scoreboard players operation @s hGeneralChanceWorkerB /= @e[tag=gstools_worker,type=marker] 10
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run scoreboard players operation @s horrorIndex *= @s hGeneralChanceWorkerB
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] if score @s random100 < @s horrorIndex run scoreboard players operation @s timeOfDay = @e[tag=gstools_worker,type=marker] timeOfDay
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] if score @s random100 < @s horrorIndex run function gothichorror:hallow/h_general/speed
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run function gothichorror:hallow/h_general/mood/standard
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run function gothichorror:hallow/h_general/mood/evil
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run function gothichorror:hallow/h_general/mood/sinister
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run function gothichorror:hallow/h_general/mood/dark
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] run function gothichorror:hallow/h_general/mood/dying
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s if entity @a[distance=0..100] run function gothichorror:hallow/h_general/mood/death
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] if entity @s[scores={currentHGeneralSpeed=110..}] run scoreboard players set @s hGeneralTicWorkerA 2840
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] if entity @s[scores={currentHGeneralSpeed=110..}] run scoreboard players operation @s hGeneralTicWorkerA *= @e[tag=gstools_worker,type=marker] 100
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] if entity @s[scores={currentHGeneralSpeed=110..}] run scoreboard players operation @s hGeneralTicWorkerA /= @s currentHGeneralSpeed
execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] if entity @s[scores={currentHGeneralSpeed=110..}] run scoreboard players operation @s hGeneralTic = @s hGeneralTicWorkerA
execute as @e[sort=random,limit=5] unless entity @s[scores={hGeneralTic=-1..}] run scoreboard players set @s hGeneralTic 0
# execute as @e[sort=random,limit=5,scores={hGeneralTic=..0}] at @s unless entity @s[scores={isOutside=1..1}] positioned ~ ~15 ~ unless entity @s[scores={isOutside=1..1}] positioned ~ ~-15 ~ if entity @a[distance=0..100] if score @s random100 < @s horrorIndex if entity @s[scores={currentHGeneralSpeed=<10x>..<10x1>}] if entity @s[scores={currentHGeneralSpeed=<x>..<x>}] run playsound gothichorror.hallow.general block @a ~ ~ ~ 0.5 <xn>