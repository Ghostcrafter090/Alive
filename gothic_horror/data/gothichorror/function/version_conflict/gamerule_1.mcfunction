execute unless entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=1..1}] run gamerule advance_time true
execute unless entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=0..0}] run gamerule advance_time false
execute unless entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=overrided_daylight_cycle] run tag @s remove overrided_daylight_cycle

execute as @e[tag=gstools_worker,type=marker,tag=!after_sunset,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=1..1}] run gamerule advance_time true
execute as @e[tag=gstools_worker,type=marker,tag=!after_sunset,tag=overrided_daylight_cycle,scores={doDaylightCycleCache=0..0}] run gamerule advance_time false
execute as @e[tag=gstools_worker,type=marker,tag=!after_sunset,tag=overrided_daylight_cycle] run tag @s remove overrided_daylight_cycle

execute if entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=!overrided_daylight_cycle] store result score @s doDaylightCycleCache run gamerule advance_time
execute if entity @a[scores={horrorIndex=100..}] as @e[tag=gstools_worker,type=marker,tag=after_sunset,tag=!overrided_daylight_cycle] run gamerule advance_time false