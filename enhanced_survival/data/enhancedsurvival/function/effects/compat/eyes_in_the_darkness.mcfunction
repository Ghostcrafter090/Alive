# Define
scoreboard objectives add hasLookedAtEyes dummy

# Main
execute as @a at @s anchored eyes facing entity @e[type=eyesinthedarkness:eyes,limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run scoreboard players add @s hasLookedAtEyes 100
execute as @a at @s anchored eyes facing entity @e[type=eyesinthedarkness:eyes,limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run scoreboard players add @s hasLookedAtEyes 100
execute as @a at @s anchored eyes facing entity @e[type=eyesinthedarkness:eyes,limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run scoreboard players set @s AdrenalineApply 1
