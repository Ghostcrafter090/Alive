# Define

# Main
scoreboard players set $test testSuccess 0
scoreboard players set $test testComplete 0

scoreboard players set $test testNumberWorker 0
execute if score $test testNumber = $test testNumberWorker run function test:tests/0/main
execute if score $test testComplete = $test test1 if score $test testSuccess = $test test1 run say "<test> {"testName":0,"success":true}"
execute if score $test testComplete = $test test1 unless score $test testSuccess = $test test1 run say "<test> {"testName":0,"success":false}"

scoreboard players set $test testNumberWorker 1
execute if score $test testNumber = $test testNumberWorker run function test:tests/1/main
execute if score $test testComplete = $test test1 if score $test testSuccess = $test test1 run say "<test> {"testName":1,"success":true}"
execute if score $test testComplete = $test test1 unless score $test testSuccess = $test test1 run say "<test> {"testName":1,"success":false}"

execute if score $test testComplete = $test test1 run scoreboard players add $test testNumber 1

scoreboard players set $test testNumberWorker 1
execute if score $test testNumber > $test testNumberWorker run say [framework_testing_ended]