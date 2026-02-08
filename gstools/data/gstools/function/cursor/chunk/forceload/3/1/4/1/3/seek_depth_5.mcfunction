# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=1..1}] run forceload add ~48 ~-128 ~48 ~-128
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=1..1}] run forceload add ~48 ~-112 ~48 ~-112
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=1..1}] run forceload add ~64 ~-128 ~64 ~-128
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=1..1}] run forceload add ~64 ~-112 ~64 ~-112
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=0..0}] run forceload remove ~48 ~-128 ~48 ~-128
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=0..0}] run forceload remove ~48 ~-112 ~48 ~-112
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=0..0}] run forceload remove ~64 ~-128 ~64 ~-128
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=0..0}] run forceload remove ~64 ~-112 ~64 ~-112
