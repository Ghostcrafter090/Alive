execute unless entity @e[tag=sin,type=marker] run summon marker 0 100 0 {Tags:['sin']}
tp @e[tag=sin,limit=1,type=marker] 0 100 0 0 0
execute as @e[name=dmain,type=marker] store result score @s sin run data get entity @e[tag=sin,limit=1] Rotation[0]
execute as @e[name=dmain,type=marker] run scoreboard players operation @s sin += @s sin0
execute store result entity @e[tag=sin,limit=1] Rotation[0] float 1 run scoreboard players get @e[name=dmain,type=marker,limit=1] sin
execute as @e[name=dmain,type=marker] store result score @s sin run data get entity @e[tag=sin,limit=1] Rotation[0] 10000
scoreboard players set @e[name=dmain,type=marker] sin1 180000
execute as @e[name=dmain,type=marker] run scoreboard players operation @s sin -= @s sin1
scoreboard players set @e[name=dmain,type=marker] sin1 180
execute as @e[name=dmain,type=marker] run scoreboard players operation @s sin /= @s sin1