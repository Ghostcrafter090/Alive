# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=1..1}] run forceload add ~-192 ~-352 ~-192 ~-352
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=1..1}] run forceload add ~-192 ~-336 ~-192 ~-336
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=1..1}] run forceload add ~-176 ~-352 ~-176 ~-352
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=1..1}] run forceload add ~-176 ~-336 ~-176 ~-336
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=0..0}] run forceload remove ~-192 ~-352 ~-192 ~-352
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=0..0}] run forceload remove ~-192 ~-336 ~-192 ~-336
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=0..0}] run forceload remove ~-176 ~-352 ~-176 ~-352
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=0..0}] run forceload remove ~-176 ~-336 ~-176 ~-336
