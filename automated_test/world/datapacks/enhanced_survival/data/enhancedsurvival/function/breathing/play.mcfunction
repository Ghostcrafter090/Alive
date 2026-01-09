# Define
execute unless entity @e[scores={lifeAndDeathLoaded=1..1}] run function enhancedsurvival:breathing/play_sub/1
# Main
execute as @a[scores={consumptionStrength=4..4}] run function enhancedsurvival:breathing/play_sub/4

execute as @a[scores={consumptionStrength=3..3}] run function enhancedsurvival:breathing/play_sub/7

execute as @a[scores={consumptionStrength=2..2}] run function enhancedsurvival:breathing/play_sub/12

execute as @a[scores={consumptionStrength=..1}] run function enhancedsurvival:breathing/play_sub/19