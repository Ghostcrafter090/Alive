# Define
scoreboard objectives add collapseAccumulate dummy
scoreboard objectives add oldCollapseMarkerCount dummy

# Main
execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/5

execute as @e[tag=gstools_cursor] run function dynamicdirt:main_sub/10

execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/15

execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/20

execute as @e[type=falling_block,tag=!collapsed] run function dynamicdirt:main_sub/25

execute as @e[type=falling_block,tag=!play_land] run function dynamicdirt:main_sub/36

execute as @e[type=falling_block,tag=!collapsed] run function dynamicdirt:main_sub/41

execute as @e[type=item] run function dynamicdirt:main_sub/47

execute as @e[type=item] run function dynamicdirt:main_sub/50

execute as @e[type=arrow] run function dynamicdirt:main_sub/53

execute as @e[type=arrow] run function dynamicdirt:main_sub/56

execute as @e[type=arrow] run function dynamicdirt:main_sub/59

execute as @e[type=arrow] run function dynamicdirt:main_sub/62


execute as @e[type=warden] run function dynamicdirt:main_sub/66

execute as @e[type=warden] run function dynamicdirt:main_sub/69

execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/72

execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/84

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ gravel replace #dynamicdirt:andesite

execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/91

execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/96

execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/101

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ stone replace cobbled_deepslate

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ cobbled_deepslate replace deepslate

execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/109

function dynamicdirt:version_conflict/tuff_0

function dynamicdirt:version_conflict/tuff_1

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ granite replace dripstone_block

execute as @e[tag=gstools_vertical_cursor] run function dynamicdirt:main_sub/118

execute as @e[tag=gstools_cursor] run function dynamicdirt:main_sub/137

execute as @e[tag=dirt_collapse,type=marker,limit=1,sort=random] at @s run function dynamicdirt:collapse
execute if score @e[tag=gstools_worker,type=marker,limit=1] ticTenth > @e[tag=gstools_worker,type=marker,limit=1] random10 run kill @e[tag=old_collapse,limit=1,sort=random]

execute as @e[tag=old_collapse,type=marker] at @s store result score @s collapseAccumulate if entity @e[tag=old_collapse,type=marker,distance=0..2]

execute as @e[tag=old_collapse,type=marker,scores={collapseAccumulate=200..},limit=1,sort=random] run function dynamicdirt:main_sub/164

execute as @e[type=falling_block,tag=!sound_played] at @s if entity @e[tag=dirt_collapse,distance=0..10,type=marker] run playsound dynamicdirt.collapse.crumble block @a ~ ~ ~ 1
# execute as @e[type=falling_block,tag=!sound_played] at @s if entity @e[tag=dirt_collapse,distance=0..10,type=marker] if entity @e[tag=gstools_worker,type=marker,scores={random10=0..3}] run playsound minecraft:entity.creaking.ambient master @a ~ ~ ~ 3 0.1
# execute as @e[type=falling_block,tag=!sound_played] at @s if entity @e[tag=dirt_collapse,distance=0..10,type=marker] if entity @e[tag=gstools_worker,type=marker,scores={random10=4..6}] run playsound minecraft:entity.creaking.spawn master @a ~ ~ ~ 3 0.1
# execute as @e[type=falling_block,tag=!sound_played] at @s if entity @e[tag=dirt_collapse,distance=0..10,type=marker] if entity @e[tag=gstools_worker,type=marker,scores={random10=7..9}] run playsound minecraft:entity.creaking.twitch master @a ~ ~ ~ 3 0.1
execute as @e[type=falling_block,tag=!sound_played] at @s if entity @e[tag=dirt_collapse,distance=0..10,type=marker] if entity @e[tag=gstools_worker,type=marker,scores={random10=1..9}] run particle ash ~ ~ ~ 0.3 0.3 0.3 10 50 normal
# execute as @e[type=falling_block,tag=!sound_played] at @s if entity @e[tag=dirt_collapse,distance=0..10,type=marker] if entity @e[tag=gstools_worker,type=marker,scores={random10=1..9}] run particle minecraft:falling_dust{color:[1, 1, 1], scale:1,block_state:dirt} ~ ~ ~ 0.3 0.3 0.3 1 5 normal
function dynamicdirt:version_conflict/falling_dust_0

execute as @e[type=falling_block,tag=!sound_played] at @s run tag @s add sound_played

execute as @e[type=marker,tag=dirt_collapse,tag=!sound_played] at @s if entity @e[tag=gstools_worker,type=marker,scores={random10=1..9}] run particle ash ~ ~ ~ 0.3 0.3 0.3 10 10 normal
function dynamicdirt:version_conflict/dust_0

execute as @e[type=marker,tag=dirt_collapse,tag=!sound_played] run tag @s add sound_played

execute as @e[type=marker,tag=old_collapse] at @s unless entity @e[tag=dirt_collapse,type=marker,distance=0..5] run kill @s
execute store result score @e[tag=gstools_worker,type=marker] oldCollapseMarkerCount if entity @e[type=marker,tag=old_collapse]
execute if entity @e[type=marker,tag=gstools_worker,scores={oldCollapseMarkerCount=300..}] run kill @e[tag=dirt_collapse]