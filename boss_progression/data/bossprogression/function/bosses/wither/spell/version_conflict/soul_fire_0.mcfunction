# Define
scoreboard objectives add soulFireStrictVersionConflict dummy

# Main
execute as @e[type=marker,tag=wither_spell] at @s run setblock ~ ~ ~ soul_fire strict
execute as @e[type=marker,tag=wither_spell] run scoreboard players set @s soulFireStrictVersionConflict 1