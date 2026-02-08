# Define

# Main
execute store result score @e[tag=gstools_worker,type=marker] functionCommandLimit run gamerule functionCommandLimit
execute if entity @e[tag=gstools_worker,type=marker,scores={functionCommandLimit=10000..10000}] run gamerule functionCommandLimit 1000000000