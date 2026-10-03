# Define

# Main
schedule function bossprogression:bosses/wither/spell/check 1t append
schedule function bossprogression:bosses/wither/spell/main 2t append

schedule function bossprogression:bosses/guardian/spell/check 3t append
schedule function bossprogression:bosses/guardian/spell/main 4t append

schedule function bossprogression:bosses/guardian/spell/enchantedheart/check 5t append
schedule function bossprogression:bosses/guardian/spell/enchantedheart/main 6t append

schedule function bossprogression:bosses/pillager/stages/mining/tic 7t append
schedule function bossprogression:bosses/guardian/tic 8t append

execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:nether_star"}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:totem_of_undying",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:prismarine_shard"}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:heart_of_the_sea",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:wither_rose",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:amethyst_shard"}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:blaze_powder"}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] run tag @s add boss_item_checked
