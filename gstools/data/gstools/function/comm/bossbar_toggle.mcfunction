# Define
scoreboard objectives add displayPerformanceBossBar dummy

# Main
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run scoreboard players set @s displayPerformanceBossBar 2
execute unless entity @a[scores={displayPerformanceBossBar=0..2}] run scoreboard players set @s displayPerformanceBossBar 1
execute if entity @a[scores={displayPerformanceBossBar=0..0}] run scoreboard players set @s displayPerformanceBossBar 1

execute if entity @a[scores={displayPerformanceBossBar=2..2}] run scoreboard players set @s displayPerformanceBossBar 0

execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set block_decay_tps visible true
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set boss_progression_tps visible true
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set desire_paths_tps visible true
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set dynamic_dirt_tps visible true
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set dynamic_ecosystems_tps visible true
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set dynamic_monsters_tps visible true
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set enhanced_survival_tps visible true
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set gothic_horror_tps visible true
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set life_and_death_tps visible true
execute if entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set all_tps visible true

execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set block_decay_tps visible false
execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set boss_progression_tps visible false
execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set desire_paths_tps visible false
execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set dynamic_dirt_tps visible false
execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set dynamic_ecosystems_tps visible false
execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set dynamic_monsters_tps visible false
execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set enhanced_survival_tps visible false
execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set gothic_horror_tps visible false
execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set life_and_death_tps visible false
execute unless entity @a[scores={displayPerformanceBossBar=1..1}] run bossbar set all_tps visible false



