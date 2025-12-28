# Define
scoreboard objectives add desirePathsTicRate dummy
execute as @e[type=marker,tag=gstools_worker] unless entity @s[scores={desirePathsTicRate=0..100}] run scoreboard players set @s desirePathsTicRate 100

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] desirePathsLoaded 1
say "   > Desire paths loaded.