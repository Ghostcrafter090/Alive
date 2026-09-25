# Define
scoreboard objectives add numberOfUndeadMonsters dummy
scoreboard objectives add numberOfNetherMonsters dummy
scoreboard objectives add gothicMonsterRemovalTic dummy
scoreboard objectives add gothicMonsterTicRate dummy

# Main
function ghostsandghouls:effects/version_conflict/follow_range_0
function ghostsandghouls:effects/version_conflict/follow_range_1

function ghostsandghouls:effects/ghosts/main

execute store result score @e[type=marker,tag=gstools_worker] numberOfUndeadMonsters if entity @e[type=#minecraft:undead]
execute store result score @e[type=marker,tag=gstools_worker] numberOfNetherMonsters if entity @e[tag=nether,tag=monster]
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s gothicMonsterTicRate = @s averageTpsGothicHorror
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s gothicMonsterTicRate *= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s gothicMonsterRemovalTic > @s gothicMonsterTicRate if score @s numberOfUndeadMonsters > @s 20 as @e[type=#minecraft:undead,limit=1,sort=random] at @s run function gstools:horror/getindex
execute as @e[type=marker,tag=gstools_worker] if score @s gothicMonsterRemovalTic > @s gothicMonsterTicRate if score @s numberOfUndeadMonsters > @s 20 as @e[type=#minecraft:undead,limit=1,sort=random] run scoreboard players add @s horrorIndex 35
execute as @e[type=marker,tag=gstools_worker] if score @s gothicMonsterRemovalTic > @s gothicMonsterTicRate if score @s numberOfUndeadMonsters > @s 20 as @e[type=#minecraft:undead,limit=1,sort=random] at @s if score @s horrorIndex < @e[type=marker,tag=gstools_worker,limit=1] numberOfUndeadMonsters run tp @s ~ ~-400 ~
execute as @e[type=marker,tag=gstools_worker] if score @s gothicMonsterRemovalTic > @s gothicMonsterTicRate if score @s numberOfNetherMonsters > @s 20 as @e[type=#minecraft:undead,limit=1,sort=random] at @s if score @s horrorIndex < @e[type=marker,tag=gstools_worker,limit=1] numberOfNetherMonsters run tp @s ~ ~-400 ~
execute as @e[type=marker,tag=gstools_worker] if score @s gothicMonsterRemovalTic > @s gothicMonsterTicRate run scoreboard players set @s gothicMonsterRemovalTic 0
scoreboard players add @e[tag=gstools_worker,type=marker] gothicMonsterRemovalTic 1