# Define

# Main
execute if block ~ ~-1 ~ birch_mosaic_slab[type=top] if block ~ ~-1 ~ birch_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ birch_slab[type=top,waterlogged=true] replace birch_mosaic_slab
execute if block ~ ~-1 ~ birch_mosaic_slab[type=top] if block ~ ~-1 ~ birch_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ birch_slab[type=top,waterlogged=false] replace birch_mosaic_slab
execute if block ~ ~-1 ~ birch_mosaic_slab[type=bottom] if block ~ ~-1 ~ birch_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ birch_slab[type=bottom,waterlogged=true] replace birch_mosaic_slab
execute if block ~ ~-1 ~ birch_mosaic_slab[type=bottom] if block ~ ~-1 ~ birch_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ birch_slab[type=bottom,waterlogged=false] replace birch_mosaic_slab
execute if block ~ ~-1 ~ birch_mosaic_slab[type=double] if block ~ ~-1 ~ birch_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ birch_slab[type=double,waterlogged=true] replace birch_mosaic_slab
execute if block ~ ~-1 ~ birch_mosaic_slab[type=double] if block ~ ~-1 ~ birch_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ birch_slab[type=double,waterlogged=false] replace birch_mosaic_slab