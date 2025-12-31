# Define

# Main
execute if block ~ ~-1 ~ prismarine_brick_slab[type=top] if block ~ ~-1 ~ prismarine_brick_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_slab[type=top,waterlogged=true] replace prismarine_brick_slab
execute if block ~ ~-1 ~ prismarine_brick_slab[type=top] if block ~ ~-1 ~ prismarine_brick_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_slab[type=top,waterlogged=false] replace prismarine_brick_slab
execute if block ~ ~-1 ~ prismarine_brick_slab[type=bottom] if block ~ ~-1 ~ prismarine_brick_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_slab[type=bottom,waterlogged=true] replace prismarine_brick_slab
execute if block ~ ~-1 ~ prismarine_brick_slab[type=bottom] if block ~ ~-1 ~ prismarine_brick_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_slab[type=bottom,waterlogged=false] replace prismarine_brick_slab
execute if block ~ ~-1 ~ prismarine_brick_slab[type=double] if block ~ ~-1 ~ prismarine_brick_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_slab[type=double,waterlogged=true] replace prismarine_brick_slab
execute if block ~ ~-1 ~ prismarine_brick_slab[type=double] if block ~ ~-1 ~ prismarine_brick_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_slab[type=double,waterlogged=false] replace prismarine_brick_slab