# Define

# Main
function enhancedsurvival:breathing/main
function enhancedsurvival:effects/compat/eyes_in_the_darkness

# Eyes
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=2..}] run effect give @s speed 1 0 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=100..}] run effect clear @s slowness
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=2..}] run effect give @s slowness 1 0 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=2..}] run effect clear @s speed
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=300..}] run effect give @s speed 1 1 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=600..}] run effect clear @s slowness
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=300..}] run effect give @s slowness 1 1 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=300..}] run effect clear @s speed
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=900..}] run effect give @s speed 1 2 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=1500..}] run effect clear @s slowness
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=900..}] run effect give @s slowness 1 2 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=900..}] run effect clear @s speed
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=2700..}] run effect give @s speed 1 3 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=1..1}] as @a[scores={hasLookedAtEyes=4500..}] run effect clear @s slowness
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=2700..}] run effect give @s slowness 1 3 true
execute if entity @e[tag=gstools_worker,type=marker,scores={ticHalf=0..0}] as @a[scores={hasLookedAtEyes=2700..}] run effect clear @s speed
execute as @a[scores={hasLookedAtEyes=1..}] run scoreboard players remove @s stamina 10
execute as @a[scores={hasLookedAtEyes=1..}] run scoreboard players remove @s luck 10
execute as @a[scores={hasLookedAtEyes=1..}] run scoreboard players remove @s hasLookedAtEyes 1
execute as @a[scores={hasLookedAtEyes=100..}] run scoreboard players remove @s hasLookedAtEyes 10
execute as @a[scores={hasLookedAtEyes=1000..}] run scoreboard players remove @s hasLookedAtEyes 100
execute as @a[scores={hasLookedAtEyes=10000..}] run scoreboard players remove @s hasLookedAtEyes 1000

