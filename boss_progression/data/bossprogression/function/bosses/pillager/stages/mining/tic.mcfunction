# Define

# Main
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..1,entityVerticalMotion=-10..,random100=..97}] at @s if block ~1 ~ ~ #gstools:air if block ~1 ~1 ~ #gstools:air facing ~1 ~ ~ run tp @s ~0.1 ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=2..2,entityVerticalMotion=-10..,random100=..97}] at @s if block ~-1 ~ ~ #gstools:air if block ~-1 ~1 ~ #gstools:air facing ~-1 ~ ~ run tp @s ~-0.1 ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=3..3,entityVerticalMotion=-10..,random100=..97}] at @s if block ~ ~ ~1 #gstools:air if block ~ ~1 ~1 #gstools:air facing ~ ~ ~1 run tp @s ~ ~ ~0.1 ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=4..4,entityVerticalMotion=-10..,random100=..97}] at @s if block ~ ~ ~-1 #gstools:air if block ~ ~1 ~-1 #gstools:air facing ~ ~ ~-1 run tp @s ~ ~ ~-0.1 ~ ~

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..1,random100=..75,entityVerticalMotion=-10..}] at @s facing ~1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=2..2,random100=..75,entityVerticalMotion=-10..}] at @s facing ~-1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=3..3,random100=..75,entityVerticalMotion=-10..}] at @s facing ~ ~ ~1 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=4..4,random100=..75,entityVerticalMotion=-10..}] at @s facing ~ ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=5..,random100=..20,entityVerticalMotion=-10..}] at @s facing ~ ~-2 ~ run tp @s ~ ~ ~ 180 ~

execute as @e[tag=mining_pillager] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager] unless entity @s[scores={pillagerMiningDirection=5..}] at @s rotated as @s unless block ^ ^ ^1 #minecraft:mineable/pickaxe unless block ^ ^ ^1 #minecraft:mineable/shovel unless block ^ ^ ^1 #minecraft:mineable/hoe unless block ^ ^ ^1 #minecraft:mineable/axe positioned ~ ~1 ~ unless block ^ ^ ^1 #minecraft:mineable/pickaxe unless block ^ ^ ^1 #minecraft:mineable/shovel unless block ^ ^ ^1 #minecraft:mineable/hoe unless block ^ ^ ^1 #minecraft:mineable/axe run scoreboard players set @s pillagerMiningBlockPercentage 0

execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=20..20}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=2..2}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=6..6}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=10..10}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=14..14}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=18..18}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=40..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=22..22}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=26..26}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=30..30}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=34..34}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=38..38}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/pickaxe run playsound block.stone.hit block @a ~ ~ ~ 1

execute as @e[tag=mining_pillager] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=40..40}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=4..4}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=12..12}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=20..20}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=28..28}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=36..36}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=80..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=44..44}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=52..52}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=60..60}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=68..68}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=76..76}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/shovel run playsound block.gravel.hit block @a ~ ~ ~ 1

execute as @e[tag=mining_pillager] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=40..40}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=4..4}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=12..12}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=20..20}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=28..28}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=36..36}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=80..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=44..44}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=52..52}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=60..60}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=68..68}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=76..76}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/axe run playsound block.wood.hit block @a ~ ~ ~ 1

execute as @e[tag=mining_pillager] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=40..40}] at @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=4..4}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=12..12}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=20..20}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=28..28}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=36..36}] at @s rotated as @s positioned ~ ~1 ~ if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=80..}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run fill ^ ^ ^1 ^ ^ ^1 air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=44..44}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=52..52}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=60..60}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=68..68}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=76..76}] at @s rotated as @s if block ^ ^ ^1 #minecraft:mineable/hoe run playsound block.sculk.hit block @a ~ ~ ~ 1


execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=5..}] at @s rotated as @s run scoreboard players add @s pillagerMiningBlockPercentage 1
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=40..,pillagerMiningDirection=5..}] at @s rotated as @s unless block ~ ~-1 ~ bedrock run fill ~ ~-1 ~ ~ ~-1 ~ air destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=40..,pillagerMiningDirection=5..}] run scoreboard players set @s pillagerMiningBlockPercentage 0

execute as @e[tag=mining_pillager,scores={pillagerMiningBlockPercentage=81..}] run scoreboard players set @s pillagerMiningBlockPercentage 0

execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=1..1}] at @s if block ~1 ~-1 ~ #gstools:air unless predicate gstools:sky run fill ~1 ~-1 ~ ~1 ~-1 ~ dark_oak_slab[type=top] destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=2..2}] at @s if block ~-1 ~-1 ~ #gstools:air unless predicate gstools:sky run fill ~-1 ~-1 ~ ~-1 ~-1 ~ dark_oak_slab[type=top] destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=3..3}] at @s if block ~ ~-1 ~1 #gstools:air unless predicate gstools:sky run fill ~ ~-1 ~1 ~ ~-1 ~1 dark_oak_slab[type=top] destroy
execute as @e[tag=mining_pillager,scores={pillagerMiningDirection=4..4}] at @s if block ~ ~-1 ~-1 #gstools:air unless predicate gstools:sky run fill ~ ~-1 ~-1 ~ ~-1 ~-1 dark_oak_slab[type=top] destroy

execute as @e[tag=mining_pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=1..1},tag=pillager_tnt_run] at @s if block ~-1 ~ ~ #gstools:air run tp @s ~-0.3 ~ ~
execute as @e[tag=mining_pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=2..2},tag=pillager_tnt_run] at @s if block ~1 ~ ~ #gstools:air run tp @s ~0.3 ~ ~
execute as @e[tag=mining_pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=3..3},tag=pillager_tnt_run] at @s if block ~ ~ ~-1 #gstools:air run tp @s ~ ~ ~-0.3
execute as @e[tag=mining_pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=4..4},tag=pillager_tnt_run] at @s if block ~ ~ ~1 #gstools:air run tp @s ~ ~ ~0.3

execute as @e[type=tnt,tag=pillager_tnt] run scoreboard players add @s pillagerTntAliveTime 1