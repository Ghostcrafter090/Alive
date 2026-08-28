# Define

# Main
function enhancedsurvival:breathing/main

# Eyes
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=2..}] run effect give @s speed 1 0
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=2..}] run effect clear @s slowness
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=100..}] run effect give @s slowness 1 0
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=2..}] run effect clear @s speed
execute as @a[scores={hasLookedAtEyes=1..}] run scoreboard players remove @s stamina 10
execute as @a[scores={hasLookedAtEyes=1..}] run scoreboard players remove @s luck 10
