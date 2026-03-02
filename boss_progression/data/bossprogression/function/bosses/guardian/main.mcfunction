# Define

# Main
function bossprogression:bosses/guardian/util/toggle

execute as @e[type=elder_guardian,tag=!elder_guardian_drop_setup,sort=random,limit=1] run data merge entity @s {equipment:{feet:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"boss_progression:sea_shard","minecraft:enchantment_glint_override":true,"minecraft:custom_name":{"bold":false,"color":"aqua","italic":false,"shadow_color":1010480090,"text":"Enchanted Sea Shard"}}}},drop_chances:{feet:1.000}}
execute as @e[type=elder_guardian,tag=!elder_guardian_drop_setup,sort=random,limit=1] run data merge entity @s {ArmorItems:[{},{id:"minecraft:prismarine_shard",Count:1b,tag:{display:{Name:'{"text":"Enchanted Sea Shard","color":"aqua","bold":false,"italic":false}'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1s}]}},{},{}],ArmorDropChances:[0.085F,1.000F,0.085F,0.085F]}
execute as @e[type=elder_guardian,tag=!elder_guardian_drop_setup,sort=random,limit=1] run tag @s add elder_guardian_drop_setup

function bossprogression:bosses/guardian/effects/main

# 1.21.4 + # give @p prismarine_shard[item_model="boss_progression:sea_shard",enchantment_glint_override=true,custom_name={"bold":false,"color":"aqua","italic":false,"shadow_color":1010480090,"text":"Enchanted Sea Shard"}] 1

# /give @p totem_of_undying[enchantment_glint_override=true,custom_name={"bold":false,"color":"aqua","italic":false,"shadow_color":1010480090,"text":"Enchanted Totem Of Undying"}] 1