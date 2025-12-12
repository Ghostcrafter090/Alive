# Define
scoreboard objectives add medApply dummy


# Main
execute as @e[tag=!tile,scores={hasDiseaseBoolean=1..2}] unless entity @s[scores={medApply=1..}] run function lifeanddeath:medecine/natural
scoreboard players remove @e[tag=!tile,scores={medApply=1..}] medApply 1
execute as @e[tag=!tile] unless entity @s[scores={medApply=-1000..}] run scoreboard players set @s medApply 1

# Run
function lifeanddeath:medecine/types/immune
function lifeanddeath:medecine/types/sight
function lifeanddeath:medecine/types/appetite
function lifeanddeath:medecine/types/inflam
function lifeanddeath:medecine/types/nausea
function lifeanddeath:medecine/types/antidote
function lifeanddeath:medecine/types/anticars
