# Define
scoreboard objectives add viewFinderDebug dummy
scoreboard objectives add viewFinderCount dummy
scoreboard objectives add viewFinderPlayerCount dummy

# Main
execute as @a at @s unless entity @e[type=marker,tag=gstools_view_finder,distance=0..20,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:['gstools_view_finder']}

execute as @a at @s as @e[type=marker,tag=gstools_view_finder,distance=0..20,sort=nearest,limit=1] run tp @s ^ ^ ^15

execute as @e[type=marker,tag=gstools_view_finder] at @s unless entity @a[distance=0..20] run kill @s

execute as @a[scores={viewFinderDebug=1..1}] at @s as @e[tag=gstools_view_finder,type=marker,distance=0..20,sort=nearest,limit=1] at @s run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0 10 force

execute store result score @e[tag=gstools_worker,type=marker] viewFinderCount if entity @e[type=marker,tag=gstools_view_finder]
execute store result score @e[tag=gstools_worker,type=marker] viewFinderPlayerCount if entity @a
execute as @e[tag=gstools_worker,type=marker] if score @s viewFinderCount > @s viewFinderPlayerCount run kill @e[tag=gstools_view_finder,type=marker]
