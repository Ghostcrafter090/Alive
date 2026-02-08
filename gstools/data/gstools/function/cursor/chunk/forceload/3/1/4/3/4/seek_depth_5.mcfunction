# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=1..1}] run forceload add ~80 ~-192 ~80 ~-192
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=1..1}] run forceload add ~80 ~-176 ~80 ~-176
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=1..1}] run forceload add ~96 ~-192 ~96 ~-192
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=1..1}] run forceload add ~96 ~-176 ~96 ~-176
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=0..0}] run forceload remove ~80 ~-192 ~80 ~-192
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=0..0}] run forceload remove ~80 ~-176 ~80 ~-176
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=0..0}] run forceload remove ~96 ~-192 ~96 ~-192
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=0..0}] run forceload remove ~96 ~-176 ~96 ~-176
