# Define
                                           
# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex2=0..0}] run function gstools:cursor/chunk/forceload/3/1/1/seek_depth_3
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex2=1..1}] run function gstools:cursor/chunk/forceload/3/1/2/seek_depth_3
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex2=2..2}] run function gstools:cursor/chunk/forceload/3/1/3/seek_depth_3
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex2=3..3}] run function gstools:cursor/chunk/forceload/3/1/4/seek_depth_3
