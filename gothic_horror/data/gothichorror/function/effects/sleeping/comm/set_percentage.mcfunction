# Define
execute as @a at @s run function gstools:horror/getindex

# Main
execute unless entity @a[scores={playerIsActive=1..}] run function gothichorror:effects/sleeping/comm/version_conflict/gamerule_0
execute unless entity @a[scores={playerIsActive=1..}] run function gothichorror:effects/sleeping/comm/version_conflict/gamerule_1