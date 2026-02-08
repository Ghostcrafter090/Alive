# Define

# Main
execute store result score @e[tag=gstools_worker,type=marker] maxCommandChainLength run gamerule maxCommandChainLength
execute if entity @e[tag=gstools_worker,type=marker,scores={maxCommandChainLength=65536..65536}] run gamerule maxCommandChainLength 1000000000