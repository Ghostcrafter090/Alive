# Define

# Main
worldborder set 59997968 10s
# 1.21.11 has an odd bug where it will only accept tics even if seconds are specified
worldborder set 59999968
worldborder set 59997968 200
scoreboard players set @e[tag=gstools_worker,type=marker] worldBorderVersionConflict 1
