# Define

# Main
execute if block ~ ~-1 ~ polished_diorite_slab[type=top] if block ~ ~-1 ~ polished_diorite_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ diorite_slab[type=top,waterlogged=true] replace polished_diorite_slab
execute if block ~ ~-1 ~ polished_diorite_slab[type=top] if block ~ ~-1 ~ polished_diorite_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ diorite_slab[type=top,waterlogged=false] replace polished_diorite_slab
execute if block ~ ~-1 ~ polished_diorite_slab[type=bottom] if block ~ ~-1 ~ polished_diorite_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ diorite_slab[type=bottom,waterlogged=true] replace polished_diorite_slab
execute if block ~ ~-1 ~ polished_diorite_slab[type=bottom] if block ~ ~-1 ~ polished_diorite_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ diorite_slab[type=bottom,waterlogged=false] replace polished_diorite_slab
execute if block ~ ~-1 ~ polished_diorite_slab[type=double] if block ~ ~-1 ~ polished_diorite_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ diorite_slab[type=double,waterlogged=true] replace polished_diorite_slab
execute if block ~ ~-1 ~ polished_diorite_slab[type=double] if block ~ ~-1 ~ polished_diorite_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ diorite_slab[type=double,waterlogged=false] replace polished_diorite_slab