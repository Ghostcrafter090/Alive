# Define
scoreboard objectives add commandBlockOutputGameruleCache dummy

# Main
execute store result score @e[tag=gstools_worker,type=marker] commandBlockOutputGameruleCache run gamerule commandBlockOutput
gamerule commandBlockOutput false
# <node:no_compile_mode>
execute positioned 0 0 0 run setblock ~ ~ ~ command_block{auto:1b,Command:"execute as @e[tag=weather2_node,type=marker] at @s run weather2 summon storm_hail"} destroy
# <node:no_compile_mode/>
execute if entity @e[tag=gstools_worker,type=marker,scores={commandBlockOutputGameruleCache=1..1}] run gamerule commandBlockOutput true
execute if entity @e[tag=gstools_worker,type=marker,scores={commandBlockOutputGameruleCache=0..0}] run gamerule commandBlockOutput false
