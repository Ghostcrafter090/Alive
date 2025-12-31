# Define

# Main
execute if block ~ ~-1 ~ dark_prismarine_slab[type=top] if block ~ ~-1 ~ dark_prismarine_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_brick_slab[type=top,waterlogged=true] replace dark_prismarine_slab
execute if block ~ ~-1 ~ dark_prismarine_slab[type=top] if block ~ ~-1 ~ dark_prismarine_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_brick_slab[type=top,waterlogged=false] replace dark_prismarine_slab
execute if block ~ ~-1 ~ dark_prismarine_slab[type=bottom] if block ~ ~-1 ~ dark_prismarine_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_brick_slab[type=bottom,waterlogged=true] replace dark_prismarine_slab
execute if block ~ ~-1 ~ dark_prismarine_slab[type=bottom] if block ~ ~-1 ~ dark_prismarine_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_brick_slab[type=bottom,waterlogged=false] replace dark_prismarine_slab
execute if block ~ ~-1 ~ dark_prismarine_slab[type=double] if block ~ ~-1 ~ dark_prismarine_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_brick_slab[type=double,waterlogged=true] replace dark_prismarine_slab
execute if block ~ ~-1 ~ dark_prismarine_slab[type=double] if block ~ ~-1 ~ dark_prismarine_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ prismarine_brick_slab[type=double,waterlogged=false] replace dark_prismarine_slab