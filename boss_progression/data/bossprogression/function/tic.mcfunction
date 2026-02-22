# Define

# Main
function bossprogression:bosses/wither/spell/check
function bossprogression:bosses/wither/spell/main

# Patrol Mining AI
execute as @e[tag=mining_pillager] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager] at @s rotated as @s unless block ^ ^ ^1 #minecraft:mineable/pickaxe unless block ^ ^ ^1 #minecraft:mineable/shovel positioned ~ ~1 ~ unless block ^ ^ ^1 #minecraft:mineable/pickaxe unless block ^ ^ ^1 #minecraft:mineable/shovel run scoreboard players set @s pillagerMiningBlockPercentage 0
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=20..20}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=2..2}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=4..4}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=6..6}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=8..8}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=10..10}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=12..12}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=14..14}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=16..16}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=18..18}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=40..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=22..22}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=24..24}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=26..26}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=28..28}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=30..30}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=32..32}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=34..34}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=36..36}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=38..38}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1

execute as @e[tag=mining_pillager] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=20..20}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=2..2}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=4..4}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=6..6}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=8..8}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=10..10}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=12..12}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=14..14}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=16..16}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=18..18}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=40..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=22..22}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=24..24}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=26..26}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=28..28}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=30..30}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=32..32}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=34..34}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=36..36}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=38..38}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.dirt.hit block @a ~ ~ ~ 1

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..1}] if block ~1 ~-1 ~ #gstools:air run fill ~1 ~-1 ~ ~1 ~-1 ~ oak_slab[type=top] destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=2..2}] if block ~-1 ~-1 ~ #gstools:air run fill ~-1 ~-1 ~ ~-1 ~-1 ~ oak_slab[type=top] destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=3..3}] if block ~ ~-1 ~1 #gstools:air run fill ~ ~-1 ~1 ~ ~-1 ~1 oak_slab[type=top] destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=4..4}] if block ~ ~-1 ~-1 #gstools:air run fill ~ ~-1 ~-1 ~ ~-1 ~-1 oak_slab[type=top] destroy
