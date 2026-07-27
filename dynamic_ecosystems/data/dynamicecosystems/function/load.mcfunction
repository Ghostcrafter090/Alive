# Define

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] dynamicEcosystemsLoaded 1

execute if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say "   > Dynamic Ecosystems loaded.