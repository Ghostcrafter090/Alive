execute as @e[tag=animal,sort=random,limit=10] run scoreboard players add @s timeTillHorny 1
execute as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10000..}] run function lifeanddeath:disease/diseased_sub/8_sub/0_sub/1
execute as @e[tag=animal,sort=random,limit=10,scores={timeTillHorny=10001..}] run scoreboard players set @s timeTillHorny 9000
execute as @e[tag=fish,sort=random,limit=10] run scoreboard players add @s timeTillHorny 1
execute as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10000..}] run function lifeanddeath:disease/diseased_sub/8_sub/0_sub/5
execute as @e[tag=fish,sort=random,limit=10,scores={timeTillHorny=10001..}] run scoreboard players set @s timeTillHorny 9000