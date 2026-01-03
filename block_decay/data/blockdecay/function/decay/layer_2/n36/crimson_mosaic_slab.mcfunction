# Define

# Main
execute if block ~ ~-1 ~ crimson_mosaic_slab[type=top] if block ~ ~-1 ~ crimson_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ crimson_slab[type=top,waterlogged=true] replace crimson_mosaic_slab
execute if block ~ ~-1 ~ crimson_mosaic_slab[type=top] if block ~ ~-1 ~ crimson_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ crimson_slab[type=top,waterlogged=false] replace crimson_mosaic_slab
execute if block ~ ~-1 ~ crimson_mosaic_slab[type=bottom] if block ~ ~-1 ~ crimson_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ crimson_slab[type=bottom,waterlogged=true] replace crimson_mosaic_slab
execute if block ~ ~-1 ~ crimson_mosaic_slab[type=bottom] if block ~ ~-1 ~ crimson_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ crimson_slab[type=bottom,waterlogged=false] replace crimson_mosaic_slab
execute if block ~ ~-1 ~ crimson_mosaic_slab[type=double] if block ~ ~-1 ~ crimson_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ crimson_slab[type=double,waterlogged=true] replace crimson_mosaic_slab
execute if block ~ ~-1 ~ crimson_mosaic_slab[type=double] if block ~ ~-1 ~ crimson_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ crimson_slab[type=double,waterlogged=false] replace crimson_mosaic_slab