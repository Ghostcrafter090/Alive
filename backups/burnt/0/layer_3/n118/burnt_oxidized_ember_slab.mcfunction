# Define

# Main
execute if block ~ ~-1 ~ burnt:oxidized_ember_slab[type=top] if block ~ ~-1 ~ burnt:oxidized_ember_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_ember_slab_block[type=top,waterlogged=true] replace burnt:oxidized_ember_slab
execute if block ~ ~-1 ~ burnt:oxidized_ember_slab[type=top] if block ~ ~-1 ~ burnt:oxidized_ember_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_ember_slab_block[type=top,waterlogged=false] replace burnt:oxidized_ember_slab
execute if block ~ ~-1 ~ burnt:oxidized_ember_slab[type=bottom] if block ~ ~-1 ~ burnt:oxidized_ember_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_ember_slab_block[type=bottom,waterlogged=true] replace burnt:oxidized_ember_slab
execute if block ~ ~-1 ~ burnt:oxidized_ember_slab[type=bottom] if block ~ ~-1 ~ burnt:oxidized_ember_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_ember_slab_block[type=bottom,waterlogged=false] replace burnt:oxidized_ember_slab
execute if block ~ ~-1 ~ burnt:oxidized_ember_slab[type=double] if block ~ ~-1 ~ burnt:oxidized_ember_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_ember_slab_block[type=double,waterlogged=true] replace burnt:oxidized_ember_slab
execute if block ~ ~-1 ~ burnt:oxidized_ember_slab[type=double] if block ~ ~-1 ~ burnt:oxidized_ember_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_ember_slab_block[type=double,waterlogged=false] replace burnt:oxidized_ember_slab