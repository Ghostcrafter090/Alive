# Define
scoreboard objectives add canSeeSky dummy

# Main
execute as @s if predicate gstools:sky run scoreboard players set @s canSeeSky 1
execute as @s unless predicate gstools:sky run scoreboard players set @s canSeeSky 0
