# Define

# Main
execute if block ~ ~-1 ~ smooth_sandstone_slab[type=top] if block ~ ~-1 ~ smooth_sandstone_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ sandstone_slab[type=top,waterlogged=true] replace smooth_sandstone_slab
execute if block ~ ~-1 ~ smooth_sandstone_slab[type=top] if block ~ ~-1 ~ smooth_sandstone_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ sandstone_slab[type=top,waterlogged=false] replace smooth_sandstone_slab
execute if block ~ ~-1 ~ smooth_sandstone_slab[type=bottom] if block ~ ~-1 ~ smooth_sandstone_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ sandstone_slab[type=bottom,waterlogged=true] replace smooth_sandstone_slab
execute if block ~ ~-1 ~ smooth_sandstone_slab[type=bottom] if block ~ ~-1 ~ smooth_sandstone_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ sandstone_slab[type=bottom,waterlogged=false] replace smooth_sandstone_slab
execute if block ~ ~-1 ~ smooth_sandstone_slab[type=double] if block ~ ~-1 ~ smooth_sandstone_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ sandstone_slab[type=double,waterlogged=true] replace smooth_sandstone_slab
execute if block ~ ~-1 ~ smooth_sandstone_slab[type=double] if block ~ ~-1 ~ smooth_sandstone_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ sandstone_slab[type=double,waterlogged=false] replace smooth_sandstone_slab