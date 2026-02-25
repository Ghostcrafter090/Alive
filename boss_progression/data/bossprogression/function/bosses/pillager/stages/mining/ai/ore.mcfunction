# Define
scoreboard objectives add pillagerTntAliveTime dummy

# Main
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~ ~-1 ~ #gstools:ore run tag @s add pillager_found_ore
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~1 ~ ~ #gstools:ore run tag @s add pillager_found_ore
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~1 ~1 ~ #gstools:ore run tag @s add pillager_found_ore
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~-1 ~ ~ #gstools:ore run tag @s add pillager_found_ore
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~-1 ~1 ~ #gstools:ore run tag @s add pillager_found_ore
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~ ~ ~1 #gstools:ore run tag @s add pillager_found_ore
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~ ~1 ~1 #gstools:ore run tag @s add pillager_found_ore
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~ ~ ~-1 #gstools:ore run tag @s add pillager_found_ore
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~ ~1 ~-1 #gstools:ore run tag @s add pillager_found_ore
execute as @e[tag=mining_pillager,type=pillager,sort=random,limit=10] at @s if block ~ ~2 ~ #gstools:ore run tag @s add pillager_found_ore

execute as @e[tag=mining_pillager,type=pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=1..1},tag=!pillager_tnt_run] at @s if block ~-10 ~ ~ #gstools:air run summon tnt ~ ~ ~ {Tags:['pillager_tnt']}
execute as @e[tag=mining_pillager,type=pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=1..1}] at @s unless block ~-10 ~ ~ #gstools:air run tag @s remove pillager_found_ore

execute as @e[tag=mining_pillager,type=pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=2..2},tag=!pillager_tnt_run] at @s if block ~10 ~ ~ #gstools:air run summon tnt ~ ~ ~ {Tags:['pillager_tnt']}
execute as @e[tag=mining_pillager,type=pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=2..2}] at @s unless block ~10 ~ ~ #gstools:air run tag @s remove pillager_found_ore

execute as @e[tag=mining_pillager,type=pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=3..3},tag=!pillager_tnt_run] at @s if block ~ ~ ~-10 #gstools:air run summon tnt ~ ~ ~ {Tags:['pillager_tnt']}
execute as @e[tag=mining_pillager,type=pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=3..3}] at @s unless block ~ ~ ~-10 #gstools:air run tag @s remove pillager_found_ore

execute as @e[tag=mining_pillager,type=pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=4..4},tag=!pillager_tnt_run] at @s if block ~ ~ ~10 #gstools:air run summon tnt ~ ~ ~ {Tags:['pillager_tnt']}
execute as @e[tag=mining_pillager,type=pillager,tag=pillager_found_ore] if entity @s[scores={pillagerMiningDirection=4..4}] at @s unless block ~ ~ ~10 #gstools:air run tag @s remove pillager_found_ore

execute as @e[tag=mining_pillager,type=pillager,tag=pillager_found_ore] unless entity @e[type=tnt,tag=pillager_tnt,distance=..40] run tag @s remove pillager_found_ore

execute as @e[tag=mining_pillager,type=pillager,tag=pillager_tnt_run] unless entity @e[tag=pillager_found_ore] run tag @s remove pillager_tnt_run

execute as @e[type=tnt,tag=pillager_tnt,scores={pillagerTntAliveTime=100..}] run kill @s