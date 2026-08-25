# Define

# Main
execute as @e[type=minecraft:elder_guardian,limit=1,sort=random] at @s run particle burnt:tall_fog ~ 93 ~ 50 10 50 0 150 force @a[tag=!hide_guardian_fog]
execute as @e[type=minecraft:elder_guardian,limit=1,sort=random] at @s run particle burnt:tall_fog ~ 64 ~ 25 1 25 0 50 force @a[tag=!hide_guardian_fog]
execute as @e[type=minecraft:elder_guardian,limit=1,sort=random] at @s run particle burnt:tall_fog ~ 93 ~ 50 10 50 0 15 force
execute as @e[type=minecraft:elder_guardian,limit=1,sort=random] at @s run particle burnt:tall_fog ~ 64 ~ 25 1 25 0 5 force

execute as @e[type=minecraft:marker,limit=1,sort=random,tag=guardian_spell] at @s run particle burnt:tall_fog ~ 93 ~ 50 10 50 0 150 force @a[tag=!hide_guardian_fog]
execute as @e[type=minecraft:marker,limit=1,sort=random,tag=guardian_spell] at @s run particle burnt:tall_fog ~ 64 ~ 25 1 25 0 50 force @a[tag=!hide_guardian_fog]
execute as @e[type=minecraft:marker,limit=1,sort=random,tag=guardian_spell] at @s run particle burnt:tall_fog ~ 93 ~ 50 10 50 0 15 force
execute as @e[type=minecraft:marker,limit=1,sort=random,tag=guardian_spell] at @s run particle burnt:tall_fog ~ 64 ~ 25 1 25 0 5 force

execute as @a at @s if block ~ ~1 ~ water run stopsound @s weather weather.rain