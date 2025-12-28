# Define
scoreboard objectives add attributeWorker dummy

# Main
scoreboard players set @a diseaseHudModCompatibility 1
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2}] run attribute @s gstools:has_disease_boolean base set 1
execute as @a unless entity @s[scores={hasDiseaseBoolean=1..2}] run attribute @s gstools:has_disease_boolean base set 0

execute as @a[scores={diseaseTime=0..1000}] run attribute @s gstools:disease_time base set 1
execute as @a[scores={diseaseTime=1000..2000}] run attribute @s gstools:disease_time base set 1001
execute as @a[scores={diseaseTime=2000..3000}] run attribute @s gstools:disease_time base set 2001
execute as @a[scores={diseaseTime=3000..4000}] run attribute @s gstools:disease_time base set 3001
execute as @a[scores={diseaseTime=4000..5000}] run attribute @s gstools:disease_time base set 4001
execute as @a[scores={diseaseTime=5000..6000}] run attribute @s gstools:disease_time base set 5001
execute as @a[scores={diseaseTime=6000..7000}] run attribute @s gstools:disease_time base set 6001
execute as @a[scores={diseaseTime=7000..8000}] run attribute @s gstools:disease_time base set 7001
execute as @a[scores={diseaseTime=8000..9000}] run attribute @s gstools:disease_time base set 8001


function lifeanddeath:hud/effects/wither
function lifeanddeath:hud/effects/weakness
function lifeanddeath:hud/effects/slowness
function lifeanddeath:hud/effects/poison
function lifeanddeath:hud/effects/nausea
function lifeanddeath:hud/effects/miningfatigue
function lifeanddeath:hud/effects/hunger
function lifeanddeath:hud/effects/blindness
