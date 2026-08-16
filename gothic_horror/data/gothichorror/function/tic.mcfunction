# Define

# Main
execute as @e[scores={hGeneralTic=0..}] run scoreboard players remove @s hGeneralTic 1

execute as @r run function gstools:util/random
execute as @r if score @s random1000 > @s horrorIndex run team modify gothic_ghost color black
execute as @r if score @s random1000 < @s horrorIndex run team modify gothic_ghost color dark_gray