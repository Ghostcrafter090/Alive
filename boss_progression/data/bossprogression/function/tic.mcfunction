# Define

# Main
function bossprogression:bosses/wither/spell/check
function bossprogression:bosses/wither/spell/main

function bossprogression:bosses/pillager/stages/mining/tic

execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:nether_star"}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:totem_of_undying",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:prismarine_shard",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:heart_of_the_sea",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] if entity @s[nbt={Item:{id:"minecraft:wither_rose",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item_checked] run tag @s add boss_item_checked