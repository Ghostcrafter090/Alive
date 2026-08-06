# Define

# Main
execute if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[type=top] if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:burnt_soul_slab_ore[type=top,waterlogged=true] replace burnt:raw_burnt_soul_slab_block
execute if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[type=top] if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:burnt_soul_slab_ore[type=top,waterlogged=false] replace burnt:raw_burnt_soul_slab_block
execute if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[type=bottom] if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:burnt_soul_slab_ore[type=bottom,waterlogged=true] replace burnt:raw_burnt_soul_slab_block
execute if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[type=bottom] if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:burnt_soul_slab_ore[type=bottom,waterlogged=false] replace burnt:raw_burnt_soul_slab_block
execute if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[type=double] if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:burnt_soul_slab_ore[type=double,waterlogged=true] replace burnt:raw_burnt_soul_slab_block
execute if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[type=double] if block ~ ~-1 ~ burnt:raw_burnt_soul_slab_block[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:burnt_soul_slab_ore[type=double,waterlogged=false] replace burnt:raw_burnt_soul_slab_block