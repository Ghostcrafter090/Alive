# Define
scoreboard objectives add medApply dummy
scoreboard objectives add medRegulate dummy

# Main
execute as @e[tag=is_alive,scores={hasDiseaseBoolean=1..2}] unless entity @s[scores={medApply=1..}] run function lifeanddeath:medecine/natural
scoreboard players remove @e[tag=!tile,scores={medApply=1..}] medApply 1
execute as @e[tag=!tile] unless entity @s[scores={medApply=-1000..}] run scoreboard players set @s medApply 1

# Run
scoreboard players add @e[type=marker,tag=gstools_worker] medRegulate 1
execute if entity @e[type=marker,tag=gstools_worker,scores={medRegulate=7..}] run scoreboard players set @e[type=marker,tag=gstools_worker] medRegulate 0
execute if entity @e[type=marker,tag=gstools_worker,scores={medRegulate=0..0}] run function lifeanddeath:medecine/types/immune
execute if entity @e[type=marker,tag=gstools_worker,scores={medRegulate=1..1}] run function lifeanddeath:medecine/types/sight
execute if entity @e[type=marker,tag=gstools_worker,scores={medRegulate=2..2}] run function lifeanddeath:medecine/types/appetite
execute if entity @e[type=marker,tag=gstools_worker,scores={medRegulate=3..3}] run function lifeanddeath:medecine/types/inflam
execute if entity @e[type=marker,tag=gstools_worker,scores={medRegulate=4..4}] run function lifeanddeath:medecine/types/nausea
execute if entity @e[type=marker,tag=gstools_worker,scores={medRegulate=5..5}] run function lifeanddeath:medecine/types/antidote
execute if entity @e[type=marker,tag=gstools_worker,scores={medRegulate=6..6}] run function lifeanddeath:medecine/types/anticars
