# Define
scoreboard objectives add testGstoolsWorkerCount dummy
scoreboard objectives add test3HasSetup dummy

# Main
execute unless score $test test3HasSetup = $test test1 run function test:tests/2/setup

scoreboard players set $test testSuccess 1
execute unless entity @e[type=marker,tag=gstools_worker,scores={desirePathsLoaded=1..}] run scoreboard players set $test testSuccess 0
execute unless entity @e[type=marker,tag=gstools_worker,scores={dynamicDirtLoaded=1..}] run scoreboard players set $test testSuccess 0
execute unless entity @e[type=marker,tag=gstools_worker,scores={dynamicMonstersLoaded=1..}] run scoreboard players set $test testSuccess 0
execute unless entity @e[type=marker,tag=gstools_worker,scores={lifeAndDeathLoaded=1..}] run scoreboard players set $test testSuccess 0
execute unless entity @e[type=marker,tag=gstools_worker,scores={enhancedSurvivalLoaded=1..}] run scoreboard players set $test testSuccess 0
execute unless entity @e[type=marker,tag=gstools_worker,scores={blockDecayLoaded=1..}] run scoreboard players set $test testSuccess 0
execute unless entity @e[type=marker,tag=gstools_worker,scores={gothicHorrorLoaded=1..}] run scoreboard players set $test testSuccess 0
execute unless entity @e[type=marker,tag=gstools_worker,scores={ghostsAndGhoulsLoaded=1..}] run scoreboard players set $test testSuccess 0
execute unless entity @e[type=marker,tag=gstools_worker,scores={undeadExpandedLoaded=1..}] run scoreboard players set $test testSuccess 0

scoreboard players set $test testComplete 1