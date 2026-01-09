# Define
scoreboard objectives add hasFinishedTesting dummy
scoreboard objectives add test1 dummy
scoreboard objectives add test0 dummy
scoreboard objectives add automatedTestingFrameworkStarted dummy
scoreboard objectives add testNumber dummy
scoreboard objectives add testNumberWorker dummy
scoreboard objectives add testSuccess dummy
scoreboard objectives add testComplete dummy

scoreboard players set $test test1 1
scoreboard players set $test test0 0

execute if entity @e[tag=gstools_worker,scores={averageTps=15..}] unless score $test automatedTestingFrameworkStarted = $test test1 run scoreboard players set $test testNumber 0
execute if entity @e[tag=gstools_worker,scores={averageTps=15..}] unless score $test automatedTestingFrameworkStarted = $test test1 run scoreboard players set $test hasFinishedTesting 0
execute if entity @e[tag=gstools_worker,scores={averageTps=15..}] unless score $test automatedTestingFrameworkStarted = $test test1 run say Running Automated Testing FrameWork...
execute if entity @e[tag=gstools_worker,scores={averageTps=15..}] unless score $test automatedTestingFrameworkStarted = $test test1 run say [framework_marker]
execute if entity @e[tag=gstools_worker,scores={averageTps=15..}] unless score $test automatedTestingFrameworkStarted = $test test1 run scoreboard players set $test automatedTestingFrameworkStarted 1

# Main
forceload add 0 0 0 0
function gstools:run
function test:tests/main

execute if entity