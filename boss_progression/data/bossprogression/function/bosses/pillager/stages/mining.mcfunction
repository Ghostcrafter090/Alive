# Define

# Main
execute as @e[tag=gstools_cursor_vertical] at @s if block ~ ~ ~ #minecraft:air unless entity @e[tag=mining_pillager,distance=0..40] run summon pillager ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["mining_pillager"],equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:stone_pickaxe",count:1},offhand:{id:"minecraft:shield",count:1}}}
execute as @e[tag=mining_pillager] at @s unless entity @e[type=marker,tag=mining_pillager_torch,distance=0..10] run fill ~ ~ ~ ~ ~ ~ redstone_torch replace #gstools:air
execute as @e[tag=mining_pillager] at @s unless entity @e[type=marker,tag=mining_pillager_torch,distance=0..10] run kill @e[tag=mining_pillager_torch,distance=0..15,limit=1,sort=nearest]
execute as @e[tag=mining_pillager] at @s unless entity @e[type=marker,tag=mining_pillager_torch,distance=0..10] run summon marker ~ ~ ~ {Tags:['mining_pillager_torch']}
