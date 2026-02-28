# Define
scoreboard objectives add pillagerMiningBlockSoundTic dummy

# Main
execute as @e[tag=mining_pillager,type=pillager,scores={pillagerMiningDirection=1..}] run scoreboard players operation @s pillagerMiningBlockSoundTic = @s pillagerMiningBlockPercentage
execute as @e[tag=mining_pillager,type=pillager,scores={pillagerMiningDirection=1..}] run scoreboard players operation @s pillagerMiningBlockSoundTic %= @e[tag=gstools_worker,type=marker] 8

execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=1..1,entityVerticalMotion=-10..,random100=..97}] at @s if block ~1 ~ ~ #gstools:air if block ~1 ~1 ~ #gstools:air facing ~1 ~ ~ run tp @s ~0.1 ~ ~ ~ ~
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=2..2,entityVerticalMotion=-10..,random100=..97}] at @s if block ~-1 ~ ~ #gstools:air if block ~-1 ~1 ~ #gstools:air facing ~-1 ~ ~ run tp @s ~-0.1 ~ ~ ~ ~
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=3..3,entityVerticalMotion=-10..,random100=..97}] at @s if block ~ ~ ~1 #gstools:air if block ~ ~1 ~1 #gstools:air facing ~ ~ ~1 run tp @s ~ ~ ~0.1 ~ ~
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=4..4,entityVerticalMotion=-10..,random100=..97}] at @s if block ~ ~ ~-1 #gstools:air if block ~ ~1 ~-1 #gstools:air facing ~ ~ ~-1 run tp @s ~ ~ ~-0.1 ~ ~

execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=1..1,random100=..75,entityVerticalMotion=-10..}] at @s facing ~1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=2..2,random100=..75,entityVerticalMotion=-10..}] at @s facing ~-1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=3..3,random100=..75,entityVerticalMotion=-10..}] at @s facing ~ ~ ~1 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=4..4,random100=..75,entityVerticalMotion=-10..}] at @s facing ~ ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=5..,random100=..20,entityVerticalMotion=-10..}] at @s facing ~ ~-2 ~ run tp @s ~ ~ ~ 180 ~

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] unless entity @s[scores={pillagerMiningDirection=5..}] at @s rotated as @s unless block ^ ^ ^1 #minecraft:mineable/pickaxe unless block ^ ^ ^1 #minecraft:mineable/shovel unless block ^ ^ ^1 #minecraft:mineable/hoe unless block ^ ^ ^1 #minecraft:mineable/axe positioned ~ ~1 ~ unless block ^ ^ ^1 #minecraft:mineable/pickaxe unless block ^ ^ ^1 #minecraft:mineable/shovel unless block ^ ^ ^1 #minecraft:mineable/hoe unless block ^ ^ ^1 #minecraft:mineable/axe run scoreboard players set @s pillagerMiningBlockPercentage 0

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=20..20}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=40..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run fill ^ ^ ^1 ^ ^ ^1 air destroy

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=40..40}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=80..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run fill ^ ^ ^1 ^ ^ ^1 air destroy

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=40..40}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=80..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run fill ^ ^ ^1 ^ ^ ^1 air destroy

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=40..40}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=80..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run fill ^ ^ ^1 ^ ^ ^1 air destroy

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningDirection=5..}] at @s rotated as @s run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=40..,pillagerMiningDirection=5..}] at @s rotated as @s unless block ~ ~-1 ~ bedrock run fill ~ ~-1 ~ ~ ~-1 ~ air destroy
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=40..,pillagerMiningDirection=5..}] run scoreboard players set @s pillagerMiningBlockPercentage 0

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningBlockPercentage=81..}] run scoreboard players set @s pillagerMiningBlockPercentage 0

execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=2..2}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=2..2}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=6..6}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=6..6}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=4..4}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=4..4}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=4..4}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=4..4}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=4..4}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @a at @s as @e[tag=mining_pillager,type=pillager,sort=random,limit=10,distance=0..20] if entity @s[scores={pillagerMiningBlockSoundTic=4..4}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1

execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=1..1}] at @s if block ~-1 ~ ~ #gstools:air if entity @e[type=tnt,distance=0..12] run tp @s ~-0.3 ~ ~
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=2..2}] at @s if block ~1 ~ ~ #gstools:air if entity @e[type=tnt,distance=0..12] run tp @s ~0.3 ~ ~
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=3..3}] at @s if block ~ ~ ~-1 #gstools:air if entity @e[type=tnt,distance=0..12] run tp @s ~ ~ ~-0.3
execute as @e[tag=mining_pillager,type=pillager] if entity @s[scores={pillagerMiningDirection=4..4}] at @s if block ~ ~ ~1 #gstools:air if entity @e[type=tnt,distance=0..12] run tp @s ~ ~ ~0.3

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningDirection=1..1}] at @s if block ~1 ~-1 ~ #gstools:air unless predicate gstools:sky run fill ~1 ~-1 ~ ~1 ~-1 ~ dark_oak_slab[type=top] destroy
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningDirection=2..2}] at @s if block ~-1 ~-1 ~ #gstools:air unless predicate gstools:sky run fill ~-1 ~-1 ~ ~-1 ~-1 ~ dark_oak_slab[type=top] destroy
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningDirection=3..3}] at @s if block ~ ~-1 ~1 #gstools:air unless predicate gstools:sky run fill ~ ~-1 ~1 ~ ~-1 ~1 dark_oak_slab[type=top] destroy
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningDirection=4..4}] at @s if block ~ ~-1 ~-1 #gstools:air unless predicate gstools:sky run fill ~ ~-1 ~-1 ~ ~-1 ~-1 dark_oak_slab[type=top] destroy

execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=55] if entity @s[scores={pillagerMiningDirection=5..}] at @s unless block ~ ~1 ~1 #gstools:air if block ~ ~1 ~ #gstools:air run fill ~ ~1 ~ ~ ~1 ~ ladder[facing=north] destroy

execute as @e[type=tnt,tag=pillager_tnt] run scoreboard players add @s pillagerTntAliveTime 1

execute as @e[tag=attack_portal_node,tag=pillager_made] at @s if entity @e[type=small_fireball,distance=0..4] at @s run summon tnt ~ ~1 ~ {fuse:1}
execute as @e[tag=attack_portal_node,tag=pillager_made] at @s as @e[type=small_fireball,distance=0..4] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:magma_block replace minecraft:obsidian