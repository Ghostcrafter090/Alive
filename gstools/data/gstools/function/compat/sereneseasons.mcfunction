# Define
scoreboard objectives add currentSeason dummy
scoreboard objectives add currentSubSeason dummy
scoreboard objectives add currentSeasonDay dummy

# Main
forceload add 5999368 0 5999368 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 0
fill 5999938 1 0 5999938 1 0 sereneseasons:season_sensor[season=0] destroy

execute if block 5999938 1 0 sereneseasons:season_sensor[power=1] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 1
execute if block 5999938 1 0 sereneseasons:season_sensor[power=2] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 2
execute if block 5999938 1 0 sereneseasons:season_sensor[power=3] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 3
execute if block 5999938 1 0 sereneseasons:season_sensor[power=4] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 4
execute if block 5999938 1 0 sereneseasons:season_sensor[power=5] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 5
execute if block 5999938 1 0 sereneseasons:season_sensor[power=6] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 6
execute if block 5999938 1 0 sereneseasons:season_sensor[power=7] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 7
execute if block 5999938 1 0 sereneseasons:season_sensor[power=8] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 8
execute if block 5999938 1 0 sereneseasons:season_sensor[power=9] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 9
execute if block 5999938 1 0 sereneseasons:season_sensor[power=10] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 10
execute if block 5999938 1 0 sereneseasons:season_sensor[power=11] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 11
execute if block 5999938 1 0 sereneseasons:season_sensor[power=12] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 12
execute if block 5999938 1 0 sereneseasons:season_sensor[power=13] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 13
execute if block 5999938 1 0 sereneseasons:season_sensor[power=14] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 14
execute if block 5999938 1 0 sereneseasons:season_sensor[power=15] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 15

fill 5999938 1 0 5999938 1 0 sereneseasons:season_sensor[season=1] replace

execute if block 5999938 1 0 sereneseasons:season_sensor[power=1] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 16
execute if block 5999938 1 0 sereneseasons:season_sensor[power=2] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 17
execute if block 5999938 1 0 sereneseasons:season_sensor[power=3] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 18
execute if block 5999938 1 0 sereneseasons:season_sensor[power=4] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 19
execute if block 5999938 1 0 sereneseasons:season_sensor[power=5] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 20
execute if block 5999938 1 0 sereneseasons:season_sensor[power=6] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 21
execute if block 5999938 1 0 sereneseasons:season_sensor[power=7] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 22
execute if block 5999938 1 0 sereneseasons:season_sensor[power=8] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 23
execute if block 5999938 1 0 sereneseasons:season_sensor[power=9] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 24
execute if block 5999938 1 0 sereneseasons:season_sensor[power=10] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 25
execute if block 5999938 1 0 sereneseasons:season_sensor[power=11] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 26
execute if block 5999938 1 0 sereneseasons:season_sensor[power=12] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 27
execute if block 5999938 1 0 sereneseasons:season_sensor[power=13] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 28
execute if block 5999938 1 0 sereneseasons:season_sensor[power=14] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 29
execute if block 5999938 1 0 sereneseasons:season_sensor[power=15] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 30

fill 5999938 1 0 5999938 1 0 sereneseasons:season_sensor[season=2] replace

execute if block 5999938 1 0 sereneseasons:season_sensor[power=1] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 31
execute if block 5999938 1 0 sereneseasons:season_sensor[power=2] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 32
execute if block 5999938 1 0 sereneseasons:season_sensor[power=3] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 33
execute if block 5999938 1 0 sereneseasons:season_sensor[power=4] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 34
execute if block 5999938 1 0 sereneseasons:season_sensor[power=5] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 35
execute if block 5999938 1 0 sereneseasons:season_sensor[power=6] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 36
execute if block 5999938 1 0 sereneseasons:season_sensor[power=7] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 37
execute if block 5999938 1 0 sereneseasons:season_sensor[power=8] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 38
execute if block 5999938 1 0 sereneseasons:season_sensor[power=9] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 39
execute if block 5999938 1 0 sereneseasons:season_sensor[power=10] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 40
execute if block 5999938 1 0 sereneseasons:season_sensor[power=11] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 41
execute if block 5999938 1 0 sereneseasons:season_sensor[power=12] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 42
execute if block 5999938 1 0 sereneseasons:season_sensor[power=13] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 43
execute if block 5999938 1 0 sereneseasons:season_sensor[power=14] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 44
execute if block 5999938 1 0 sereneseasons:season_sensor[power=15] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 45

fill 5999938 1 0 5999938 1 0 sereneseasons:season_sensor[season=3] replace

execute if block 5999938 1 0 sereneseasons:season_sensor[power=1] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 46
execute if block 5999938 1 0 sereneseasons:season_sensor[power=2] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 47
execute if block 5999938 1 0 sereneseasons:season_sensor[power=3] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 48
execute if block 5999938 1 0 sereneseasons:season_sensor[power=4] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 49
execute if block 5999938 1 0 sereneseasons:season_sensor[power=5] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 50
execute if block 5999938 1 0 sereneseasons:season_sensor[power=6] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 51
execute if block 5999938 1 0 sereneseasons:season_sensor[power=7] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 52
execute if block 5999938 1 0 sereneseasons:season_sensor[power=8] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 53
execute if block 5999938 1 0 sereneseasons:season_sensor[power=9] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 54
execute if block 5999938 1 0 sereneseasons:season_sensor[power=10] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 55
execute if block 5999938 1 0 sereneseasons:season_sensor[power=11] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 56
execute if block 5999938 1 0 sereneseasons:season_sensor[power=12] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 57
execute if block 5999938 1 0 sereneseasons:season_sensor[power=13] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 58
execute if block 5999938 1 0 sereneseasons:season_sensor[power=14] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 59
execute if block 5999938 1 0 sereneseasons:season_sensor[power=15] run scoreboard players set @e[type=marker,tag=gstools_worker] currentSeasonDay 60

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s currentSubSeason = @s currentSeasonDay
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s currentSubSeason %= @s 5

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s currentSeason = @s currentSeasonDay
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s currentSeason %= @s 15

fill 5999938 1 0 5999938 1 0 air destroy

forceload remove 5999368 0





