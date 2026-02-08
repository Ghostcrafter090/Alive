# Define
scoreboard objectives add chunkListCurrentIndex dummy
scoreboard objectives add chunkCoordIsSame dummy

# Main
execute at @s unless entity @e[tag=gstools_worker,type=marker,distance=0..16] run forceload remove ~ ~ ~ ~
kill @s
say killed chunk_worker!