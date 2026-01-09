execute if block ~ ~-1 ~ #minecraft:mineable/pickaxe run playsound minecraft:entity.zombie.attack_wooden_door ambient @a ~ ~ ~ 3 0.1
execute if block ~ ~-1 ~ #minecraft:mineable/shovel run playsound minecraft:entity.zombie.infect ambient @a ~ ~ ~ 1 0.1
execute if block ~ ~-1 ~ #minecraft:mineable/axe run playsound minecraft:entity.zombie.break_wooden_door ambient @a ~ ~ ~ 1 0.1
execute unless block ~ ~-1 ~ #dynamicdirt:air run tag @s add play_land