# Define
                                           
# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex0=0..0}] run function gstools:cursor/chunk/forceload/1/seek_depth_1
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex0=1..1}] run function gstools:cursor/chunk/forceload/2/seek_depth_1
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex0=2..2}] run function gstools:cursor/chunk/forceload/3/seek_depth_1
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex0=3..3}] run function gstools:cursor/chunk/forceload/4/seek_depth_1
