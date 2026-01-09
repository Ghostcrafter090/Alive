fill ~ ~-1 ~ ~ ~ ~ farmland replace dirt_path
fill ~ ~-1 ~ ~ ~ ~ sand replace red_sand
fill ~ ~-1 ~ ~ ~ ~ sand replace gravel
fill ~ ~-1 ~ ~ ~ ~ coarse_dirt replace rooted_dirt
fill ~ ~-1 ~ ~ ~ ~ coarse_dirt replace packed_mud
fill ~ ~-1 ~ ~ ~ ~ gravel replace #dynamicdirt:mossy_cobblestone

fill ~ ~-1 ~ ~ ~ ~ mossy_cobblestone replace cobblestone
fill ~ ~-1 ~ ~ ~ ~ mossy_cobblestone_stairs replace cobblestone_stairs
fill ~ ~-1 ~ ~ ~ ~ mossy_cobblestone_slab replace cobblestone_slab
fill ~ ~-1 ~ ~ ~ ~ mossy_cobblestone_wall replace cobblestone_wall

fill ~ ~-1 ~ ~ ~ ~ gravel replace #dynamicdirt:andesite

fill ~ ~-1 ~ ~ ~ ~ andesite replace diorite
fill ~ ~-1 ~ ~ ~ ~ andesite_stairs replace diorite_stairs
fill ~ ~-1 ~ ~ ~ ~ andesite_slab replace diorite_slab
fill ~ ~-1 ~ ~ ~ ~ andesite_wall replace diorite_wall

fill ~ ~-1 ~ ~ ~ ~ diorite replace granite
fill ~ ~-1 ~ ~ ~ ~ diorite_stairs replace granite_stairs
fill ~ ~-1 ~ ~ ~ ~ diorite_slab replace granite_slab
fill ~ ~-1 ~ ~ ~ ~ diorite_wall replace granite_wall

fill ~ ~-1 ~ ~ ~ ~ cobblestone replace stone
fill ~ ~-1 ~ ~ ~ ~ cobblestone_stairs replace stone_stairs
fill ~ ~-1 ~ ~ ~ ~ cobblestone_slab replace stone_slab

fill ~ ~-1 ~ ~ ~ ~ stone replace cobbled_deepslate

fill ~ ~-1 ~ ~ ~ ~ cobbled_deepslate replace deepslate

fill ~ ~-1 ~ ~ ~ ~ stone_stairs replace cobbled_deepslate_stairs
fill ~ ~-1 ~ ~ ~ ~ stone_slab replace cobbled_deepslate_slab

function dynamicdirt:version_conflict/tuff_2

fill ~ ~-1 ~ ~ ~ ~ deepslate replace tuff

fill ~ ~-1 ~ ~ ~ ~ granite replace dripstone_block

fill ~4 ~-3 ~4 ~-4 ~3 ~-4 air replace pointed_dripstone[thickness=base] 

execute as @s[tag=dirt_collapse,type=marker] run function dynamicdirt:collapse_sub/43

execute if entity @e[tag=gstools_worker,type=marker,scores={averageTps=18..22}] run function dynamicdirt:collapse_sub/50

execute if entity @e[tag=gstools_worker,type=marker,scores={averageTps=18..22}] run function dynamicdirt:collapse_sub/55

execute if entity @e[tag=gstools_worker,type=marker,scores={averageTps=18..22}] run function dynamicdirt:collapse_sub/60

execute if entity @e[tag=gstools_worker,type=marker,scores={averageTps=18..22}] run function dynamicdirt:collapse_sub/65

execute if entity @e[tag=gstools_worker,type=marker,scores={averageTps=18..22}] run function dynamicdirt:collapse_sub/70

execute if entity @e[tag=gstools_worker,type=marker,scores={averageTps=18..22}] run function dynamicdirt:collapse_sub/75


# kill @e[tag=old_collapse,distance=0..2,type=marker]
summon marker ~ ~ ~ {Tags:['old_collapse']}
kill @s