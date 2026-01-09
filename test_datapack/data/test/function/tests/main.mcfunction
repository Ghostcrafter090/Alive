# Define
scoreboard objectives add testTimeSinceStart dummy

# Main
scoreboard players set $test testSuccess 0
scoreboard players set $test testComplete 0

scoreboard players set $test testNumberWorker 0
execute if score $test testNumber = $test testNumberWorker run function test:tests/0/main
execute if score $test testNumber = $test testNumberWorker if score $test testComplete = $test test1 if score $test testSuccess = $test test1 run say <test> {"testName":0,"success":true}
execute if score $test testNumber = $test testNumberWorker if score $test testComplete = $test test1 unless score $test testSuccess = $test test1 run say <test> {"testName":0,"success":false}

scoreboard players set $test testNumberWorker 1
execute if score $test testNumber = $test testNumberWorker run function test:tests/1/main
execute unless score $test testTimeSinceStart < $test test1000 run scoreboard players set $test testComplete 1
execute if score $test testNumber = $test testNumberWorker if score $test testComplete = $test test1 if score $test testSuccess = $test test1 run say <test> {"testName":1,"success":true}
execute if score $test testNumber = $test testNumberWorker if score $test testComplete = $test test1 unless score $test testSuccess = $test test1 run say <test> {"testName":1,"success":false}

execute if score $test testNumber = $test testNumberWorker if score $test testComplete = $test test1 run say [framework_testing_ended]

scoreboard players add $test testTimeSinceStart 1

execute if score $test testComplete = $test test1 run scoreboard players set $test testTimeSinceStart 0
execute if score $test testComplete = $test test1 run scoreboard players add $test testNumber 1
