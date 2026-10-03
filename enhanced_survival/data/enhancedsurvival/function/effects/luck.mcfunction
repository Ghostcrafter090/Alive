# Define
scoreboard objectives add luck dummy
scoreboard objectives add mushroomsFound minecraft.picked_up:minecraft.red_mushroom
scoreboard objectives add mushroomBlocksFound minecraft.picked_up:minecraft.red_mushroom_block
scoreboard objectives add bambooFound minecraft.picked_up:minecraft.bamboo
scoreboard objectives add rabbitsFootFound minecraft.picked_up:minecraft.rabbit_foot
scoreboard objectives add rabbitsFootCrafted minecraft.crafted:minecraft.rabbit_foot
scoreboard objectives add rabbitsFootUsed minecraft.used:minecraft.rabbit_foot
scoreboard objectives add clockFound minecraft.picked_up:minecraft.clock

scoreboard objectives add glassBlockBroken minecraft.mined:glass_pane
scoreboard objectives add glassBroken minecraft.mined:glass

scoreboard objectives add luckReductionTic dummy

# Main

# Luck

# Cat
execute as @a at @s if entity @e[type=cat,distance=0..2] run scoreboard players add @s luck 10

# Fish
execute as @a at @s if entity @e[tag=fish,tag=!monster,distance=0..1.5] unless entity @e[tag=gstools_worker,type=marker,scores={guardianEffectsAreActive=1..}] run scoreboard players add @s luck 10
execute as @a at @s if entity @e[tag=fish,distance=0..1.5] if entity @e[tag=gstools_worker,type=marker,scores={guardianEffectsAreActive=1..}] run scoreboard players remove @s luck 20
execute as @a at @s if entity @e[type=guardian,distance=0..1.5] if entity @e[tag=gstools_worker,type=marker,scores={guardianEffectsAreActive=1..}] run scoreboard players remove @s luck 200

# Mushroom
execute as @a[scores={mushroomsFound=1..}] run scoreboard players add @s luck 100
execute as @a[scores={mushroomsFound=1..}] run scoreboard players remove @s mushroomsFound 10
execute as @a[scores={mushroomBlocksFound=1..}] run scoreboard players add @s luck 30
execute as @a[scores={mushroomBlocksFound=1..}] run scoreboard players remove @s mushroomsFound 10

# Bamboo
execute as @a[scores={bambooFound=1..}] run scoreboard players add @s luck 30
execute as @a[scores={bambooFound=1..}] run scoreboard players remove @s bambooFound 10

# Villagers
execute as @a at @s as @e[type=villager,distance=0..3] if entity @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run scoreboard players add @p luck 10
execute as @a at @s if entity @e[type=wandering_trader,distance=0..3] run scoreboard players add @s luck 10

# Rabbits
execute as @a[scores={rabbitsFootFound=1..}] run scoreboard players add @s luck 10
execute as @a[scores={rabbitsFootFound=1..}] run scoreboard players remove @s rabbitsFootFound 10
execute as @a[scores={rabbitsFootCrafted=1..}] run scoreboard players add @s luck 100
execute as @a[scores={rabbitsFootCrafted=1..}] run scoreboard players remove @s rabbitsFootCrafted 10
execute as @a[scores={rabbitsFootUsed=1..}] run scoreboard players add @s luck 10
execute as @a[scores={rabbitsFootUsed=1..}] run scoreboard players remove @s mushroomsFound 10

# Numbers
execute as @a[tag=!has_number_7,nbt={Inventory:[{count:7}]}] run scoreboard players add @s luck 70
execute as @a[tag=!has_number_7,nbt={Inventory:[{count:7}]}] run tag @s add has_number_7
execute as @a[tag=has_number_7] unless entity @s[nbt={Inventory:[{count:7}]}] run tag @s remove has_number_7

execute as @a[tag=!has_number_8,nbt={Inventory:[{count:8}]}] run scoreboard players add @s luck 80
execute as @a[tag=!has_number_8,nbt={Inventory:[{count:8}]}] run tag @s add has_number_8
execute as @a[tag=has_number_8] unless entity @s[nbt={Inventory:[{count:8}]}] run tag @s remove has_number_8



# Bad Luck

# Glass
execute as @a[scores={glassBroken=1..}] run scoreboard players remove @s luck 490
execute as @a[scores={glassBroken=1..}] run scoreboard players remove @s glassBroken 10
execute as @a[scores={glassBlockBroken=1..}] run scoreboard players remove @s luck 490
execute as @a[scores={glassBlockBroken=1..}] run scoreboard players remove @s glassBlockBroken 10

# Pillager
execute as @a at @s if entity @e[tag=pillager,distance=0..5] run scoreboard players remove @s luck 100

# Clock
execute as @a[name=!Ghostcrafter090,scores={clockFound=1..}] run scoreboard players remove @s luck 100
execute as @a[name=Ghostcrafter090,scores={clockFound=1..}] run scoreboard players add @s luck 100
execute as @a[scores={clockFound=1..}] run scoreboard players remove @s clockFound 10

# Wolf
execute as @a at @s if entity @e[type=wolf,distance=0..2] run scoreboard players remove @s luck 10

# Ladder
execute as @a at @s if block ~ ~2 ~ ladder run scoreboard players remove @s luck 10

# Cat
execute as @a[name=!Ghostcrafter090] at @s as @e[type=cat,distance=0..3] if entity @s[nbt={variant:"minecraft:all_black"}] run scoreboard players remove @p luck 10
execute as @a[name=Ghostcrafter090] at @s as @e[type=cat,distance=0..3] if entity @s[nbt={variant:"minecraft:all_black"}] run scoreboard players add @p luck 10

# Numbers
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[tag=!has_number_9,nbt={Inventory:[{count:9}]}] run scoreboard players remove @s luck 90
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[tag=!has_number_9,nbt={Inventory:[{count:9}]}] run tag @s add has_number_9
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[tag=has_number_9] unless entity @s[nbt={Inventory:[{count:9}]}] run tag @s remove has_number_9

execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[tag=!has_number_4,nbt={Inventory:[{count:4}]}] run scoreboard players remove @s luck 40
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[tag=!has_number_4,nbt={Inventory:[{count:4}]}] run tag @s add has_number_4
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[tag=has_number_4] unless entity @s[nbt={Inventory:[{count:4}]}] run tag @s remove has_number_4

execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[name=!Ghostcrafter090,tag=!has_number_13,nbt={Inventory:[{count:13}]}] run scoreboard players remove @s luck 1000
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[name=Ghostcrafter090,tag=!has_number_13,nbt={Inventory:[{count:13}]}] run scoreboard players add @s luck 1000
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[tag=!has_number_13,nbt={Inventory:[{count:13}]}] run tag @s add has_number_13
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[tag=has_number_13] unless entity @s[nbt={Inventory:[{count:13}]}] run tag @s remove has_number_13

execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[tag=!has_number_17,nbt={Inventory:[{count:17}]}] run scoreboard players remove @s luck 170
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[tag=!has_number_17,nbt={Inventory:[{count:17}]}] run tag @s add has_number_17
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[tag=has_number_17] unless entity @s[nbt={Inventory:[{count:17}]}] run tag @s remove has_number_17

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
execute as @a[scores={luckReductionTic=20..,luck=1..}] run scoreboard players remove @s luck 1
execute as @a[scores={luckReductionTic=20..,luck=..-1}] run scoreboard players add @s luck 1
execute as @a[scores={luckReductionTic=20..,luck=1000..}] run scoreboard players remove @s luck 6
execute as @a[scores={luckReductionTic=20..,luck=..-1000}] run scoreboard players add @s luck 6
execute as @a[scores={luckReductionTic=20..,luck=2000..}] run scoreboard players remove @s luck 10
execute as @a[scores={luckReductionTic=20..,luck=..-2000}] run scoreboard players add @s luck 10
execute as @a[scores={luckReductionTic=20..,luck=3000..}] run scoreboard players remove @s luck 16
execute as @a[scores={luckReductionTic=20..,luck=..-3000}] run scoreboard players add @s luck 16
execute as @a[scores={luckReductionTic=20..,luck=4000..}] run scoreboard players remove @s luck 19
execute as @a[scores={luckReductionTic=20..,luck=..-4000}] run scoreboard players add @s luck 19
execute as @a[scores={luckReductionTic=20..,luck=5000..}] run scoreboard players remove @s luck 21
execute as @a[scores={luckReductionTic=20..,luck=..-5000}] run scoreboard players add @s luck 21
execute as @a[scores={luckReductionTic=20..}] run scoreboard players set @s luckReductionTic 0