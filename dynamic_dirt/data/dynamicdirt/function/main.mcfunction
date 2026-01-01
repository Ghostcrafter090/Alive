# Define
scoreboard objectives add collapseAccumulate dummy
scoreboard objectives add oldCollapseMarkerCount dummy

# Main
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~1 ~ ~ {Tags:['dirt_collapse']}
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~-1 ~ ~ {Tags:['dirt_collapse']}
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~ ~ ~1 {Tags:['dirt_collapse']}
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~ ~ ~-1 {Tags:['dirt_collapse']}

execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ #dynamicdirt:air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~1 ~ ~ {Tags:['dirt_collapse']}
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ #dynamicdirt:air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~-1 ~ ~ {Tags:['dirt_collapse']}
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ #dynamicdirt:air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~ ~ ~1 {Tags:['dirt_collapse']}
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ #dynamicdirt:air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~ ~ ~-1 {Tags:['dirt_collapse']}


execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ water if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~1 ~ ~ {Tags:['dirt_collapse']}
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ water if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~-1 ~ ~ {Tags:['dirt_collapse']}
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ water if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~ ~ ~1 {Tags:['dirt_collapse']}
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ water if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~ ~ ~-1 {Tags:['dirt_collapse']}

execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~1 ~ ~ {Tags:['dirt_collapse']}
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~-1 ~ ~ {Tags:['dirt_collapse']}
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~ ~ ~1 {Tags:['dirt_collapse']}
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air if block ~ ~-1 ~ #dynamicdirt:collapse_trigger run summon marker ~ ~ ~-1 {Tags:['dirt_collapse']}

execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ air unless block ~ ~-2 ~ air run summon marker ~1 ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ air unless block ~ ~-2 ~ air run summon marker ~-1 ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ air unless block ~ ~-2 ~ air run summon marker ~ ~-1 ~1 {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ air unless block ~ ~-2 ~ air run summon marker ~ ~-1 ~-1 {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ air unless block ~ ~-2 ~ air run tag @s add collapsed
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ water unless block ~ ~-2 ~ water unless block ~ ~-2 ~ air run summon marker ~1 ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ water unless block ~ ~-2 ~ water unless block ~ ~-2 ~ air run summon marker ~-1 ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ water unless block ~ ~-2 ~ water unless block ~ ~-2 ~ air run summon marker ~ ~-1 ~1 {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ water unless block ~ ~-2 ~ water unless block ~ ~-2 ~ air run summon marker ~ ~-1 ~-1 {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ water unless block ~ ~-2 ~ water unless block ~ ~-2 ~ air run tag @s add collapsed

execute as @e[type=falling_block,tag=!play_land] at @s if block ~ ~-1 ~ #minecraft:mineable/pickaxe run playsound minecraft:entity.zombie.attack_wooden_door ambient @a ~ ~ ~ 3 0.1
execute as @e[type=falling_block,tag=!play_land] at @s if block ~ ~-1 ~ #minecraft:mineable/shovel run playsound minecraft:entity.zombie.infect ambient @a ~ ~ ~ 1 0.1
execute as @e[type=falling_block,tag=!play_land] at @s if block ~ ~-1 ~ #minecraft:mineable/axe run playsound minecraft:entity.zombie.break_wooden_door ambient @a ~ ~ ~ 1 0.1
execute as @e[type=falling_block,tag=!play_land] at @s unless block ~ ~-1 ~ #dynamicdirt:air run tag @s add play_land

execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ cave_air unless block ~ ~-2 ~ cave_air run summon marker ~1 ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ cave_air unless block ~ ~-2 ~ cave_air run summon marker ~-1 ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ cave_air unless block ~ ~-2 ~ cave_air run summon marker ~ ~-1 ~1 {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ cave_air unless block ~ ~-2 ~ cave_air run summon marker ~ ~-1 ~-1 {Tags:['dirt_collapse']}
execute as @e[type=falling_block,tag=!collapsed] at @s if block ~ ~-3 ~ cave_air unless block ~ ~-2 ~ cave_air run tag @s add collapsed

execute as @e[type=item] at @s if block ~ ~-3 ~ #dynamicdirt:air unless block ~ ~-2 ~ #dynamicdirt:air if entity @s[tag=!collapsed] run summon marker ~ ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=item] at @s if block ~ ~-3 ~ #dynamicdirt:air unless block ~ ~-2 ~ #dynamicdirt:air if entity @s[tag=!collapsed] run tag @s add collapsed

execute as @e[type=item] at @s if block ~ ~-3 ~ water unless block ~ ~-2 ~ water if entity @s[tag=!collapsed] run summon marker ~ ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=item] at @s if block ~ ~-3 ~ water unless block ~ ~-2 ~ water if entity @s[tag=!collapsed] run tag @s add collapsed

execute as @e[type=arrow] at @s unless entity @a[distance=0..5] if block ~ ~-2 ~ water unless block ~ ~-1 ~ water if entity @s[tag=!collapsed] run summon marker ~ ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=arrow] at @s unless entity @a[distance=0..5] if block ~ ~-2 ~ water unless block ~ ~-1 ~ water if entity @s[tag=!collapsed] run tag @s add collapsed

execute as @e[type=arrow] at @s unless entity @a[distance=0..5] if block ~ ~-2 ~ #dynamicdirt:air unless block ~ ~-1 ~ #dynamicdirt:air if entity @s[tag=!collapsed] run summon marker ~ ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=arrow] at @s unless entity @a[distance=0..5] if block ~ ~-2 ~ #dynamicdirt:air unless block ~ ~-1 ~ #dynamicdirt:air if entity @s[tag=!collapsed] run tag @s add collapsed

execute as @e[type=arrow] at @s unless entity @a[distance=0..5] if block ~ ~ ~ #dynamicdirt:air unless block ~ ~1 ~ #dynamicdirt:air if entity @s[tag=!collapsed] run summon marker ~ ~1 ~ {Tags:['dirt_collapse']}
execute as @e[type=arrow] at @s unless entity @a[distance=0..5] if block ~ ~ ~ #dynamicdirt:air unless block ~ ~1 ~ #dynamicdirt:air if entity @s[tag=!collapsed] run tag @s add collapsed

execute as @e[type=arrow] at @s unless entity @a[distance=0..5] if block ~ ~ ~ water unless block ~ ~1 ~ water if entity @s[tag=!collapsed] run summon marker ~ ~1 ~ {Tags:['dirt_collapse']}
execute as @e[type=arrow] at @s unless entity @a[distance=0..5] if block ~ ~ ~ water unless block ~ ~1 ~ water if entity @s[tag=!collapsed] run tag @s add collapsed


execute as @e[type=warden] at @s unless entity @a[distance=0..5] if block ~ ~-2 ~ air unless block ~ ~-1 ~ air if entity @s[tag=!collapsed] run summon marker ~ ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=warden] at @s unless entity @a[distance=0..5] if block ~ ~-2 ~ air unless block ~ ~-1 ~ air if entity @s[tag=!collapsed] run tag @s add collapsed

execute as @e[type=warden] at @s unless entity @a[distance=0..5] if block ~ ~-2 ~ cave_air unless block ~ ~-1 ~ cave_air if entity @s[tag=!collapsed] run summon marker ~ ~-1 ~ {Tags:['dirt_collapse']}
execute as @e[type=warden] at @s unless entity @a[distance=0..5] if block ~ ~-2 ~ cave_air unless block ~ ~-1 ~ cave_air if entity @s[tag=!collapsed] run tag @s add collapsed

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ farmland replace dirt_path
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ farmland replace mud
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ dirt replace rooted_dirt
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ rooted_dirt replace coarse_dirt
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ coarse_dirt replace packed_mud
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ packed_mud replace mud
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ mud replace clay
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ clay replace sand
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ sand replace red_sand
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ sand replace gravel
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ gravel replace #dynamicdirt:mossy_cobblestone

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ mossy_cobblestone replace cobblestone
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ mossy_cobblestone_stairs replace cobblestone_stairs
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ mossy_cobblestone_slab replace cobblestone_slab
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ mossy_cobblestone_wall replace cobblestone_wall

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ gravel replace #dynamicdirt:andesite

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ andesite replace diorite
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ andesite_stairs replace diorite_stairs
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ andesite_slab replace diorite_slab
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ andesite_wall replace diorite_wall

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ diorite replace granite
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ diorite_stairs replace granite_stairs
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ diorite_slab replace granite_slab
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ diorite_wall replace granite_wall

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ cobblestone replace stone
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ cobblestone_stairs replace stone_stairs
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ cobblestone_slab replace stone_slab

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ stone replace cobbled_deepslate

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ cobbled_deepslate replace deepslate

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ stone_stairs replace cobbled_deepslate_stairs
execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ stone_slab replace cobbled_deepslate_slab

function dynamicdirt:version_conflict/tuff_0

function dynamicdirt:version_conflict/tuff_1

execute as @e[tag=gstools_vertical_cursor] at @s run fill ~ ~ ~ ~ ~ ~ granite replace dripstone_block

execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 sand replace clay
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 sand replace clay
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ void_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 sand replace clay
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 clay replace mud
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 clay replace mud
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ void_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 clay replace mud
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 mud replace coarse_dirt
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 mud replace coarse_dirt
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ void_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 mud replace coarse_dirt
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 coarse_dirt replace dirt
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 coarse_dirt replace dirt
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ void_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 coarse_dirt replace dirt
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 dirt replace grass_block
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 dirt replace grass_block
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ void_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 dirt replace grass_block
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 dirt replace dirt_path
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 dirt replace dirt_path
execute as @e[tag=gstools_vertical_cursor] at @s if block ~ ~-2 ~ void_air run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 dirt replace dirt_path

execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ sand replace clay
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~ ~-1 ~ ~ ~-1 ~ sand replace clay
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ void_air run fill ~ ~-1 ~ ~ ~-1 ~ sand replace clay
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ clay replace mud
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~ ~-1 ~ ~ ~-1 ~ clay replace mud
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ void_air run fill ~ ~-1 ~ ~ ~-1 ~ clay replace mud
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ mud replace coarse_dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~ ~-1 ~ ~ ~-1 ~ mud replace coarse_dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ void_air run fill ~ ~-1 ~ ~ ~-1 ~ mud replace coarse_dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ red_sand replace coarse_dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~ ~-1 ~ ~ ~-1 ~ red_sand replace coarse_dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ void_air run fill ~ ~-1 ~ ~ ~-1 ~ red_sand replace coarse_dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ coarse_dirt replace dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~ ~-1 ~ ~ ~-1 ~ coarse_dirt replace dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ void_air run fill ~ ~-1 ~ ~ ~-1 ~ coarse_dirt replace dirt
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace grass_block
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace grass_block
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ void_air run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace grass_block
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace dirt_path
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ cave_air run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace dirt_path
execute as @e[tag=gstools_cursor] at @s if block ~ ~-2 ~ void_air run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace dirt_path

execute as @e[tag=dirt_collapse,type=marker,limit=1,sort=random] at @s run function dynamicdirt:collapse
execute if score @e[tag=gstools_worker,type=marker,limit=1] ticTenth > @e[tag=gstools_worker,type=marker,limit=1] random10 run kill @e[tag=old_collapse,limit=1,sort=random]

execute as @e[tag=old_collapse,type=marker] at @s store result score @s collapseAccumulate if entity @e[tag=old_collapse,type=marker,distance=0..2]

execute as @e[tag=old_collapse,type=marker,scores={collapseAccumulate=200..},limit=1,sort=random] at @s run summon tnt ~ ~ ~
execute as @e[tag=old_collapse,type=marker,scores={collapseAccumulate=200..},limit=1,sort=random] at @s run kill @e[tag=old_collapse,type=marker,distance=0..2]

execute as @e[type=falling_block,tag=!sound_played] at @s if entity @e[tag=dirt_collapse,distance=0..10,type=marker] if entity @e[tag=gstools_worker,type=marker,scores={random10=0..3}] run playsound minecraft:entity.creaking.ambient master @a ~ ~ ~ 3 0.1
execute as @e[type=falling_block,tag=!sound_played] at @s if entity @e[tag=dirt_collapse,distance=0..10,type=marker] if entity @e[tag=gstools_worker,type=marker,scores={random10=4..6}] run playsound minecraft:entity.creaking.spawn master @a ~ ~ ~ 3 0.1
execute as @e[type=falling_block,tag=!sound_played] at @s if entity @e[tag=dirt_collapse,distance=0..10,type=marker] if entity @e[tag=gstools_worker,type=marker,scores={random10=7..9}] run playsound minecraft:entity.creaking.twitch master @a ~ ~ ~ 3 0.1
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