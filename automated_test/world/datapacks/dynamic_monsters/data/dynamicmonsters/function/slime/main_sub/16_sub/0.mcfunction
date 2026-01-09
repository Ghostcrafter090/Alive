execute if block ~ ~-1 ~ #minecraft:ice run scoreboard players add @s slimeNegate 5
execute if block ~ ~-1 ~ #minecraft:sand run function dynamicmonsters:slime/main_sub/16_sub/0_sub/1
execute unless entity @s[nbt={Fire:0s}] run function dynamicmonsters:slime/main_sub/16_sub/0_sub/3