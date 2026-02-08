# Define
                                           
# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex3=0..0}] run function gstools:cursor/chunk/forceload/3/1/3/1/seek_depth_4
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex3=1..1}] run function gstools:cursor/chunk/forceload/3/1/3/2/seek_depth_4
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex3=2..2}] run function gstools:cursor/chunk/forceload/3/1/3/3/seek_depth_4
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex3=3..3}] run function gstools:cursor/chunk/forceload/3/1/3/4/seek_depth_4
