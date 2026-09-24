# Define
scoreboard objectives add ghostsAndGhoulsLoaded dummy

# Main
scoreboard players set @e[tag=gstools_worker,type=marker] ghostsAndGhoulsLoaded 1
execute if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say "   > Ghosts And Ghouls loaded.