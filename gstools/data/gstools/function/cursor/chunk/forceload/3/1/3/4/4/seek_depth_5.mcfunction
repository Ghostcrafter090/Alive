# Define

# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=1..1}] run forceload add ~128 ~-192 ~128 ~-192
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=1..1}] run forceload add ~128 ~-176 ~128 ~-176
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=1..1}] run forceload add ~144 ~-192 ~144 ~-192
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=1..1}] run forceload add ~144 ~-176 ~144 ~-176
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=0..0,cursorForceloadAddCommand=0..0}] run forceload remove ~128 ~-192 ~128 ~-192
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=1..1,cursorForceloadAddCommand=0..0}] run forceload remove ~128 ~-176 ~128 ~-176
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=2..2,cursorForceloadAddCommand=0..0}] run forceload remove ~144 ~-192 ~144 ~-192
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex5=3..3,cursorForceloadAddCommand=0..0}] run forceload remove ~144 ~-176 ~144 ~-176
