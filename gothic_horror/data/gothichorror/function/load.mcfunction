# Define
scoreboard objectives add gothicHorrorTicRate dummy
execute as @e[type=marker,tag=gstools_worker] unless entity @s[scores={gothicHorrorTicRate=0..100}] run scoreboard players set @s gothicHorrorTicRate 100

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] gothicHorrorLoaded 1
execute if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say "   > Gothic Horror loaded.