# Define

# Main
execute if entity @e[type=creeper] run schedule function dynamicmonsters:creeper/main 1t append
execute if entity @e[type=#minecraft:skeletons] if entity @a[scores={playerIsActive=1..}] run schedule function dynamicmonsters:skeleton/main 2t append
execute if entity @e[type=ghast] if entity @a[scores={playerIsActive=1..}] run schedule function dynamicmonsters:ghast/main 3t append
execute if entity @e[type=guardian] run schedule function dynamicmonsters:guardian/main 4t append
execute if entity @e[type=magma_cube] run schedule function dynamicmonsters:magma_cube/main 5t append
execute if entity @e[type=slime] run schedule function dynamicmonsters:slime/main 6t append
schedule function dynamicmonsters:phantoms/main 7t append
schedule function dynamicmonsters:cold_blood/main 8t append
execute if entity @e[type=arrow] run schedule function dynamicmonsters:arrow/main 9t append
execute if entity @e[type=blaze] run schedule function dynamicmonsters:blaze/main 10t append