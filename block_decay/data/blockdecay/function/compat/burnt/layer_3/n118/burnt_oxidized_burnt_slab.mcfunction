# Define

# Main
execute if block ~ ~-1 ~ burnt:oxidized_burnt_slab[type=top] if block ~ ~-1 ~ burnt:oxidized_burnt_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_burnt_slab_block[type=top,waterlogged=true] replace burnt:oxidized_burnt_slab
execute if block ~ ~-1 ~ burnt:oxidized_burnt_slab[type=top] if block ~ ~-1 ~ burnt:oxidized_burnt_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_burnt_slab_block[type=top,waterlogged=false] replace burnt:oxidized_burnt_slab
execute if block ~ ~-1 ~ burnt:oxidized_burnt_slab[type=bottom] if block ~ ~-1 ~ burnt:oxidized_burnt_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_burnt_slab_block[type=bottom,waterlogged=true] replace burnt:oxidized_burnt_slab
execute if block ~ ~-1 ~ burnt:oxidized_burnt_slab[type=bottom] if block ~ ~-1 ~ burnt:oxidized_burnt_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_burnt_slab_block[type=bottom,waterlogged=false] replace burnt:oxidized_burnt_slab
execute if block ~ ~-1 ~ burnt:oxidized_burnt_slab[type=double] if block ~ ~-1 ~ burnt:oxidized_burnt_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_burnt_slab_block[type=double,waterlogged=true] replace burnt:oxidized_burnt_slab
execute if block ~ ~-1 ~ burnt:oxidized_burnt_slab[type=double] if block ~ ~-1 ~ burnt:oxidized_burnt_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:raw_burnt_slab_block[type=double,waterlogged=false] replace burnt:oxidized_burnt_slab