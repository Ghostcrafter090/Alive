# Define

# Main
execute store result score @e[tag=gstools_worker,type=marker] maxCommandForkCount run gamerule maxCommandForkCount
execute if entity @e[tag=gstools_worker,type=marker,scores={maxCommandForkCount=65536..65536}] run gamerule maxCommandForkCount 65536