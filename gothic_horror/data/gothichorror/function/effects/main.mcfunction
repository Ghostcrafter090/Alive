# Define
scoreboard objectives add numberOfUndeadMonsters dummy
scoreboard objectives add numberOfNetherMonsters dummy
scoreboard objectives add gothicMonsterRemovalTic dummy
scoreboard objectives add gothicMonsterTicRate dummy

# Main
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

execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=..-30},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 10
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=-31..-20},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 20
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=-21..-10},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 30
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=-11..0},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 40
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=1..10},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 50
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=11..20},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 60
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=21..30},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 70
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=31..40},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 80
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=41..50},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 90
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=51..60},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 100
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=61..70},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 110
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=71..80},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 120
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=81..90},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 130
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=91..100},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 140
execute as @e[type=#minecraft:undead,sort=random,limit=1,scores={horrorIndex=101..},tag=!gothic_ghost] run attribute @s minecraft:generic.follow_range base set 150

function gothichorror:effects/ghosts/main





