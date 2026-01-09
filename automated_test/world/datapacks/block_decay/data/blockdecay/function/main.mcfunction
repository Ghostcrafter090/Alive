# Define
scoreboard objectives add collapseAccumulate dummy

# Main
execute as @e[tag=gstools_cursor,type=marker] at @s unless entity @e[tag=is_human,distance=0..20] run function blockdecay:decay/at
execute as @e[tag=gstools_vertical_cursor,type=marker] at @s positioned ~ ~1 ~ unless entity @e[tag=is_human,distance=0..20] run function blockdecay:decay/at