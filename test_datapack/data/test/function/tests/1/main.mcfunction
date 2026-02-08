# Define
scoreboard objectives add testGstoolsWorkerCount dummy
scoreboard objectives add test1HasSetup dummy

# Main
execute unless score $test test1HasSetup = $test test1 run function test:tests/1/setup

execute as @e[tag=test_creeper] at @s run summon small_fireball ~ ~5 ~ {Motion:[0.0,-1.0,0.0]}

execute if entity @e[tag=test_creeper,nbt={ignited:1b}] if entity @e[tag=test_creeper,scores={secondsTillExtinguished=1..}] run say Creeper Found!
execute if entity @e[tag=test_creeper,nbt={ignited:1b}] if entity @e[tag=test_creeper,scores={secondsTillExtinguished=1..}] run scoreboard players set $test testSuccess 1
execute if entity @e[tag=test_creeper,nbt={ignited:1b}] if entity @e[tag=test_creeper,scores={secondsTillExtinguished=1..}] run scoreboard players set $test testComplete 1