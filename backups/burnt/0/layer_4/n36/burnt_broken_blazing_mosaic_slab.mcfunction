# Define

# Main
execute if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[type=top] if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:broken_blazing_slab[type=top,waterlogged=true] replace burnt:broken_blazing_mosaic_slab
execute if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[type=top] if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:broken_blazing_slab[type=top,waterlogged=false] replace burnt:broken_blazing_mosaic_slab
execute if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[type=bottom] if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:broken_blazing_slab[type=bottom,waterlogged=true] replace burnt:broken_blazing_mosaic_slab
execute if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[type=bottom] if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:broken_blazing_slab[type=bottom,waterlogged=false] replace burnt:broken_blazing_mosaic_slab
execute if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[type=double] if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:broken_blazing_slab[type=double,waterlogged=true] replace burnt:broken_blazing_mosaic_slab
execute if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[type=double] if block ~ ~-1 ~ burnt:broken_blazing_mosaic_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:broken_blazing_slab[type=double,waterlogged=false] replace burnt:broken_blazing_mosaic_slab