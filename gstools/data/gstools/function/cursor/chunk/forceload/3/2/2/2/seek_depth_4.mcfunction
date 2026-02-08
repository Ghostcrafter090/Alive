# Define
                                           
# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex4=0..0}] run function gstools:cursor/chunk/forceload/3/2/2/2/1/seek_depth_5
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex4=1..1}] run function gstools:cursor/chunk/forceload/3/2/2/2/2/seek_depth_5
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex4=2..2}] run function gstools:cursor/chunk/forceload/3/2/2/2/3/seek_depth_5
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex4=3..3}] run function gstools:cursor/chunk/forceload/3/2/2/2/4/seek_depth_5
