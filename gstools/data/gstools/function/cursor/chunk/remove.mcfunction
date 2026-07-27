# Define
scoreboard objectives add chunkListCurrentIndex dummy
scoreboard objectives add chunkCoordIsSame dummy

# Main
execute at @s unless entity @e[tag=gstools_worker,type=marker,distance=0..16] run forceload remove ~ ~ ~ ~
kill @s
execute if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say killed chunk_worker!