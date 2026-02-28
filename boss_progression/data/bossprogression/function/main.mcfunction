# Define

# Main
execute as @e[type=item,tag=!boss_item] if entity @s[nbt={Item:{id:"minecraft:nether_star"}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item] if entity @s[nbt={Item:{id:"minecraft:totem_of_undying",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item] if entity @s[nbt={Item:{id:"minecraft:prismarine_shard",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item] if entity @s[nbt={Item:{id:"minecraft:heart_of_the_sea",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=!boss_item] if entity @s[nbt={Item:{id:"minecraft:wither_rose",components:{"minecraft:enchantment_glint_override":1b}}}] run data merge entity @s {Invulnerable:1b}

function bossprogression:bosses/ender_dragon/main
function bossprogression:bosses/guardian/main
function bossprogression:bosses/warden/main
function bossprogression:bosses/pillager/main
function bossprogression:bosses/wither/main