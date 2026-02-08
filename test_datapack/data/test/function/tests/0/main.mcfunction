# Define
scoreboard objectives add testGstoolsWorkerCount dummy

# Main
execute store result score $test testGstoolsWorkerCount if entity @e[tag=gstools_worker]
execute if score $test testGstoolsWorkerCount = $test test1 run scoreboard players set $test testSuccess 1
scoreboard players set $test testComplete 1

say test