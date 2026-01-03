# Define

# Main
execute if block ~ ~-1 ~ jungle_mosaic_slab[type=top] if block ~ ~-1 ~ jungle_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ jungle_slab[type=top,waterlogged=true] replace jungle_mosaic_slab
execute if block ~ ~-1 ~ jungle_mosaic_slab[type=top] if block ~ ~-1 ~ jungle_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ jungle_slab[type=top,waterlogged=false] replace jungle_mosaic_slab
execute if block ~ ~-1 ~ jungle_mosaic_slab[type=bottom] if block ~ ~-1 ~ jungle_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ jungle_slab[type=bottom,waterlogged=true] replace jungle_mosaic_slab
execute if block ~ ~-1 ~ jungle_mosaic_slab[type=bottom] if block ~ ~-1 ~ jungle_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ jungle_slab[type=bottom,waterlogged=false] replace jungle_mosaic_slab
execute if block ~ ~-1 ~ jungle_mosaic_slab[type=double] if block ~ ~-1 ~ jungle_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ jungle_slab[type=double,waterlogged=true] replace jungle_mosaic_slab
execute if block ~ ~-1 ~ jungle_mosaic_slab[type=double] if block ~ ~-1 ~ jungle_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ jungle_slab[type=double,waterlogged=false] replace jungle_mosaic_slab