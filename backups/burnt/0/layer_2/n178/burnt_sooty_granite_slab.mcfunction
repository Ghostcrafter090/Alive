# Define

# Main
execute if block ~ ~-1 ~ burnt:sooty_granite_slab[type=top] if block ~ ~-1 ~ burnt:sooty_granite_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ polished_blackstone_slab[type=top,waterlogged=true] replace burnt:sooty_granite_slab
execute if block ~ ~-1 ~ burnt:sooty_granite_slab[type=top] if block ~ ~-1 ~ burnt:sooty_granite_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ polished_blackstone_slab[type=top,waterlogged=false] replace burnt:sooty_granite_slab
execute if block ~ ~-1 ~ burnt:sooty_granite_slab[type=bottom] if block ~ ~-1 ~ burnt:sooty_granite_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ polished_blackstone_slab[type=bottom,waterlogged=true] replace burnt:sooty_granite_slab
execute if block ~ ~-1 ~ burnt:sooty_granite_slab[type=bottom] if block ~ ~-1 ~ burnt:sooty_granite_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ polished_blackstone_slab[type=bottom,waterlogged=false] replace burnt:sooty_granite_slab
execute if block ~ ~-1 ~ burnt:sooty_granite_slab[type=double] if block ~ ~-1 ~ burnt:sooty_granite_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ polished_blackstone_slab[type=double,waterlogged=true] replace burnt:sooty_granite_slab
execute if block ~ ~-1 ~ burnt:sooty_granite_slab[type=double] if block ~ ~-1 ~ burnt:sooty_granite_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ polished_blackstone_slab[type=double,waterlogged=false] replace burnt:sooty_granite_slab