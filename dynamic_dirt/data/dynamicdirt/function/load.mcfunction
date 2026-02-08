# Define
scoreboard objectives add dynamicDirtTicRate dummy
execute as @e[type=marker,tag=gstools_worker] unless entity @s[scores={dynamicDirtTicRate=0..100}] run scoreboard players set @s dynamicDirtTicRate 100

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] dynamicDirtLoaded 1

say "   > Dynamic Dirt loaded.