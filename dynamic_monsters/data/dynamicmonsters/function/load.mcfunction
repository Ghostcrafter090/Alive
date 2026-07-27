# Define

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] dynamicMonstersLoaded 1

execute if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say "   > Dynamic Monsters loaded.