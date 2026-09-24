# Define

# Main
execute as @e[scores={hGeneralTic=0..}] run scoreboard players remove @s hGeneralTic 1

# Day Cycle

execute unless entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=1..1}] run gamerule doDaylightCycle true
execute unless entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=0..0}] run gamerule doDaylightCycle false
execute unless entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=overrided_daylight_cycle] run tag @s remove overrided_daylight_cycle

execute as @e[tag=gstools_worker,type=marker,tag=!after_sunset,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=1..1}] run gamerule doDaylightCycle true
execute as @e[tag=gstools_worker,type=marker,tag=!after_sunset,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=0..0}] run gamerule doDaylightCycle false
execute as @e[tag=gstools_worker,type=marker,tag=!after_sunset,tag=overrided_daylight_cycle] run tag @s remove overrided_daylight_cycle

execute if entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=!overrided_daylight_cycle] store result score @s doDaylightCycleCache run gamerule doDaylightCycle
execute if entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=!overrided_daylight_cycle] run gamerule doDaylightCycle false
execute if entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=!overrided_daylight_cycle] run tag @s add overrided_daylight_cycle
execute if entity @a[scores={horrorIndex=100..}] if entity @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=overrided_daylight_cycle,scores={ticQuarter=1..1}] run time add 1t

# Banshee
execute as @a run scoreboard players add @s lastBansheeTic 1