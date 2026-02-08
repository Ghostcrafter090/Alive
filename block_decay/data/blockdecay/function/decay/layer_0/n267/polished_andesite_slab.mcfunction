# Define

# Main
execute if block ~ ~-1 ~ polished_andesite_slab[type=top] if block ~ ~-1 ~ polished_andesite_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ andeside_slab[type=top,waterlogged=true] replace polished_andesite_slab
execute if block ~ ~-1 ~ polished_andesite_slab[type=top] if block ~ ~-1 ~ polished_andesite_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ andeside_slab[type=top,waterlogged=false] replace polished_andesite_slab
execute if block ~ ~-1 ~ polished_andesite_slab[type=bottom] if block ~ ~-1 ~ polished_andesite_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ andeside_slab[type=bottom,waterlogged=true] replace polished_andesite_slab
execute if block ~ ~-1 ~ polished_andesite_slab[type=bottom] if block ~ ~-1 ~ polished_andesite_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ andeside_slab[type=bottom,waterlogged=false] replace polished_andesite_slab
execute if block ~ ~-1 ~ polished_andesite_slab[type=double] if block ~ ~-1 ~ polished_andesite_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ andeside_slab[type=double,waterlogged=true] replace polished_andesite_slab
execute if block ~ ~-1 ~ polished_andesite_slab[type=double] if block ~ ~-1 ~ polished_andesite_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ andeside_slab[type=double,waterlogged=false] replace polished_andesite_slab