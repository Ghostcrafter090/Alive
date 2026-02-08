# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=1..1}] run forceload add ~-160 ~-352 ~-160 ~-352
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=1..1}] run forceload add ~-160 ~-336 ~-160 ~-336
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=1..1}] run forceload add ~-144 ~-352 ~-144 ~-352
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=1..1}] run forceload add ~-144 ~-336 ~-144 ~-336
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=0..0}] run forceload remove ~-160 ~-352 ~-160 ~-352
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=0..0}] run forceload remove ~-160 ~-336 ~-160 ~-336
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=0..0}] run forceload remove ~-144 ~-352 ~-144 ~-352
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=0..0}] run forceload remove ~-144 ~-336 ~-144 ~-336
