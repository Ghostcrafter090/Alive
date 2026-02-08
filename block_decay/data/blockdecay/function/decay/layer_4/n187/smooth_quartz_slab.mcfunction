# Define

# Main
execute if block ~ ~-1 ~ smooth_quartz_slab[type=top] if block ~ ~-1 ~ smooth_quartz_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ quartz_slab[type=top,waterlogged=true] replace smooth_quartz_slab
execute if block ~ ~-1 ~ smooth_quartz_slab[type=top] if block ~ ~-1 ~ smooth_quartz_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ quartz_slab[type=top,waterlogged=false] replace smooth_quartz_slab
execute if block ~ ~-1 ~ smooth_quartz_slab[type=bottom] if block ~ ~-1 ~ smooth_quartz_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ quartz_slab[type=bottom,waterlogged=true] replace smooth_quartz_slab
execute if block ~ ~-1 ~ smooth_quartz_slab[type=bottom] if block ~ ~-1 ~ smooth_quartz_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ quartz_slab[type=bottom,waterlogged=false] replace smooth_quartz_slab
execute if block ~ ~-1 ~ smooth_quartz_slab[type=double] if block ~ ~-1 ~ smooth_quartz_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ quartz_slab[type=double,waterlogged=true] replace smooth_quartz_slab
execute if block ~ ~-1 ~ smooth_quartz_slab[type=double] if block ~ ~-1 ~ smooth_quartz_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ quartz_slab[type=double,waterlogged=false] replace smooth_quartz_slab