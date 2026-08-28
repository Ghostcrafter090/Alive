# Define
scoreboard objectives add luck dummy
scoreboard objectives add mushroomsFound minecraft.picked_up:minecraft.red_mushroom
scoreboard objectives add mushroomBlocksFound minecraft.picked_up:minecraft.red_mushroom_block
scoreboard objectives add bambooFound minecraft.picked_up:minecraft.bamboo
scoreboard objectives add rabbitsFootFound minecraft.picked_up:minecraft.rabbit_foot
scoreboard objectives add rabbitsFootCrafted minecraft.crafted:minecraft.rabbit_foot
scoreboard objectives add rabbitsFootUsed minecraft.used:minecraft.rabbit_foot
scoreboard objectives add clockFound minecraft.picked_up:minecraft.clock

scoreboard objectives add glassBlockBroken minecraft.mined:minecraft.glass_pane
scoreboard objectives add glassBroken minecraft.mined:minecraft.glass

scoreboard objectives add luckReductionTic dummy

# Main

# Luck

# Cat
execute as @a at @s if entity @e[type=cat,distance=0..2] run scoreboard players add @s luck 1

# Fish
execute as @a at @s if entity @e[tag=fish,tag=!monster,distance=0..1.5] unless entity @e[tag=gstools_worker,type=marker,scores={guardianEffectsAreActive=1..}] run scoreboard players add @s luck 1
execute as @a at @s if entity @e[tag=fish,tag=!monster,distance=0..1.5] if entity @e[tag=gstools_worker,type=marker,scores={guardianEffectsAreActive=1..}] run scoreboard players remove @s luck 2

# Mushroom
execute as @a[scores={mushroomsFound=1..}] run scoreboard players add @s luck 10
execute as @a[scores={mushroomsFound=1..}] run scoreboard players remove @s mushroomsFound 1
execute as @a[scores={mushroomBlocksFound=1..}] run scoreboard players add @s luck 3
execute as @a[scores={mushroomBlocksFound=1..}] run scoreboard players remove @s mushroomsFound 1

# Bamboo
execute as @a[scores={bambooFound=1..}] run scoreboard players add @s luck 3
execute as @a[scores={bambooFound=1..}] run scoreboard players remove @s bambooFound 1

# Villagers
execute as @a at @s as @e[type=villager,distance=0..3] if entity @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run scoreboard players add @p luck 1
execute as @a at @s if entity @e[type=wandering_trader,distance=0..3] run scoreboard players add @s luck 1

# Rabbits
execute as @a[scores={rabbitsFootFound=1..}] run scoreboard players add @s luck 1
execute as @a[scores={rabbitsFootFound=1..}] run scoreboard players remove @s rabbitsFootFound 1
execute as @a[scores={rabbitsFootCrafted=1..}] run scoreboard players add @s luck 10
execute as @a[scores={rabbitsFootCrafted=1..}] run scoreboard players remove @s rabbitsFootCrafted 1
execute as @a[scores={rabbitsFootUsed=1..}] run scoreboard players add @s luck 1
execute as @a[scores={rabbitsFootUsed=1..}] run scoreboard players remove @s mushroomsFound 1

# Numbers
execute as @a[tag=!has_number_7,nbt={Inventory:[{count:7}]}] run scoreboard players add @s luck 7
execute as @a[tag=!has_number_7,nbt={Inventory:[{count:7}]}] run tag @s add has_number_7
execute as @a[tag=has_number_7] unless entity @s[nbt={Inventory:[{count:7}]}] run tag @s remove has_number_7

execute as @a[tag=!has_number_8,nbt={Inventory:[{count:8}]}] run scoreboard players add @s luck 8
execute as @a[tag=!has_number_8,nbt={Inventory:[{count:8}]}] run tag @s add has_number_8
execute as @a[tag=has_number_8] unless entity @s[nbt={Inventory:[{count:8}]}] run tag @s remove has_number_8



# Bad Luck

# Glass
execute as @a[scores={glassBroken=1..}] run scoreboard players remove @s luck 49
execute as @a[scores={glassBroken=1..}] run scoreboard players remove @s bambooFound 1
execute as @a[scores={glassBlockBroken=1..}] run scoreboard players remove @s luck 49
execute as @a[scores={glassBlockBroken=1..}] run scoreboard players remove @s bambooFound 1

# Pillager
execute as @a at @s if entity @e[tag=pillager,distance=0..2] run scoreboard players remove @s luck 10

# Clock
execute as @a[name=!Ghostcrafter090,scores={clockFound=1..}] run scoreboard players remove @s luck 10
execute as @a[name=Ghostcrafter090,scores={clockFound=1..}] run scoreboard players add @s luck 10
execute as @a[scores={clockFound=1..}] run scoreboard players remove @s clockFound 1

# Wolf
execute as @a at @s if entity @e[type=wolf,distance=0..2] run scoreboard players remove @s luck 1

# Ladder
execute as @a at @s if block ~ ~2 ~ ladder run scoreboard players remove @s luck 1

# Cat
execute as @a[name=!Ghostcrafter090] at @s as @e[type=cat,distance=0..3] if entity @s[nbt={variant:"minecraft:all_black"}] run scoreboard players remove @p luck 1
execute as @a[name=Ghostcrafter090] at @s as @e[type=cat,distance=0..3] if entity @s[nbt={variant:"minecraft:all_black"}] run scoreboard players add @p luck 1

# Numbers
execute as @a[tag=!has_number_9,nbt={Inventory:[{count:9}]}] run scoreboard players remove @s luck 9
execute as @a[tag=!has_number_9,nbt={Inventory:[{count:9}]}] run tag @s add has_number_9
execute as @a[tag=has_number_9] unless entity @s[nbt={Inventory:[{count:9}]}] run tag @s remove has_number_9

execute as @a[tag=!has_number_4,nbt={Inventory:[{count:4}]}] run scoreboard players remove @s luck 4
execute as @a[tag=!has_number_4,nbt={Inventory:[{count:4}]}] run tag @s add has_number_4
execute as @a[tag=has_number_4] unless entity @s[nbt={Inventory:[{count:4}]}] run tag @s remove has_number_4

execute as @a[name=!Ghostcrafter090,tag=!has_number_13,nbt={Inventory:[{count:13}]}] run scoreboard players remove @s luck 100
execute as @a[name=Ghostcrafter090,tag=!has_number_13,nbt={Inventory:[{count:13}]}] run scoreboard players add @s luck 100
execute as @a[tag=!has_number_13,nbt={Inventory:[{count:13}]}] run tag @s add has_number_13
execute as @a[tag=has_number_13] unless entity @s[nbt={Inventory:[{count:13}]}] run tag @s remove has_number_13

execute as @a[tag=!has_number_17,nbt={Inventory:[{count:17}]}] run scoreboard players remove @s luck 17
execute as @a[tag=!has_number_17,nbt={Inventory:[{count:17}]}] run tag @s add has_number_17
execute as @a[tag=has_number_17] unless entity @s[nbt={Inventory:[{count:17}]}] run tag @s remove has_number_17

execute as @a[scores={luck=5501..}] run scoreboard players set @s luck 5500
execute as @a[scores={luck=..-5501}] run scoreboard players set @s luck -5500


# Effect
execute as @a[scores={luck=-5500..-4500}] run effect give @s unluck 10 4 true
execute as @a[scores={luck=-4500..-3500}] run effect give @s unluck 10 3 true
execute as @a[scores={luck=-3500..-2500}] run effect give @s unluck 10 2 true
execute as @a[scores={luck=-2500..-1500}] run effect give @s unluck 10 1 true
execute as @a[scores={luck=-1500..-500}] run effect give @s unluck 10 0 true
execute as @a[scores={luck=500..1500}] run effect give @s luck 10 0 true
execute as @a[scores={luck=1500..2500}] run effect give @s luck 10 1 true
execute as @a[scores={luck=2500..3500}] run effect give @s luck 10 2 true
execute as @a[scores={luck=3500..4500}] run effect give @s luck 10 3 true
execute as @a[scores={luck=4500..5500}] run effect give @s luck 10 4 true

# Reduction
scoreboard players add @a luckReductionTic 1
execute as @a[scores={luckReductionTic=5,luck=1..}] run scoreboard players remove @s luck 1
execute as @a[scores={luckReductionTic=5,luck=..-1}] run scoreboard players add @s luck 1
execute as @a[scores={luckReductionTic=5}] run scoreboard players set @s luckReductionTic 0