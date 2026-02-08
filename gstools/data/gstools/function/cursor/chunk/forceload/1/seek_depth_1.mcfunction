# Define
                                           
# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex1=0..0}] run function gstools:cursor/chunk/forceload/1/1/seek_depth_2
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex1=1..1}] run function gstools:cursor/chunk/forceload/1/2/seek_depth_2
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex1=2..2}] run function gstools:cursor/chunk/forceload/1/3/seek_depth_2
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex1=3..3}] run function gstools:cursor/chunk/forceload/1/4/seek_depth_2
