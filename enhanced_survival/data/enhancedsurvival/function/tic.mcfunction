# Define

# Main
function enhancedsurvival:breathing/main
function enhancedsurvival:effects/compat/eyes_in_the_darkness

# Eyes
execute if entity @e[tag=gstools_worker,type=marker] as @a[scores={hasLookedAtEyes=1..}] run effect give @s darkness 10 0
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=8..}] run effect give @s speed 1 0 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=400..}] run effect clear @s slowness
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=8..}] run effect give @s slowness 1 0 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=8..}] run effect clear @s speed
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=1200..}] run effect give @s speed 1 1 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=2400..}] run effect clear @s slowness
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=1200..}] run effect give @s slowness 1 1 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=1200..}] run effect clear @s speed
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=3600..}] run effect give @s speed 1 2 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=6000..}] run effect clear @s slowness
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=3600..}] run effect give @s slowness 1 2 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=3600..}] run effect clear @s speed
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=10800..}] run effect give @s speed 1 3 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=18000..}] run effect clear @s slowness
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=10800..}] run effect give @s slowness 1 3 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=10800..}] run effect clear @s speed
execute as @a[scores={hasLookedAtEyes=1..}] run scoreboard players remove @s stamina 10
execute as @a[scores={hasLookedAtEyes=1..}] run scoreboard players remove @s luck 10
execute as @a[scores={hasLookedAtEyes=1..}] run scoreboard players remove @s hasLookedAtEyes 1
execute as @a[scores={hasLookedAtEyes=10..}] run scoreboard players remove @s hasLookedAtEyes 3
execute as @a[scores={hasLookedAtEyes=100..}] run scoreboard players remove @s hasLookedAtEyes 10
execute as @a[scores={hasLookedAtEyes=1000..}] run scoreboard players remove @s hasLookedAtEyes 100
execute as @a[scores={hasLookedAtEyes=10000..}] run scoreboard players remove @s hasLookedAtEyes 1000
execute as @a[scores={hasLookedAtEyes=100000..}] run scoreboard players remove @s hasLookedAtEyes 10000

