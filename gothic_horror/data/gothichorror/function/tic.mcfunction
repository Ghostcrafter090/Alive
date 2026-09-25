# Define

# Main
execute as @e[scores={hGeneralTic=0..}] run scoreboard players remove @s hGeneralTic 1

# Day Cycle

function gothichorror:version_conflict/gamerule_0
function gothichorror:version_conflict/gamerule_1
execute if entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=!overrided_daylight_cycle] run tag @s add overrided_daylight_cycle
execute if entity @a[scores={horrorIndex=100..}] if entity @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=overrided_daylight_cycle,scores={ticQuarter=1..1}] run time add 1t

# Banshee
execute as @a run scoreboard players add @s lastBansheeTic 1