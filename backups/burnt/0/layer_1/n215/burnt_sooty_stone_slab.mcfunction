# Define

# Main
execute if block ~ ~-1 ~ burnt:sooty_stone_slab[type=top] if block ~ ~-1 ~ burnt:sooty_stone_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:sooty_mossy_cobblestone_slab[type=top,waterlogged=true] replace burnt:sooty_stone_slab
execute if block ~ ~-1 ~ burnt:sooty_stone_slab[type=top] if block ~ ~-1 ~ burnt:sooty_stone_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:sooty_mossy_cobblestone_slab[type=top,waterlogged=false] replace burnt:sooty_stone_slab
execute if block ~ ~-1 ~ burnt:sooty_stone_slab[type=bottom] if block ~ ~-1 ~ burnt:sooty_stone_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:sooty_mossy_cobblestone_slab[type=bottom,waterlogged=true] replace burnt:sooty_stone_slab
execute if block ~ ~-1 ~ burnt:sooty_stone_slab[type=bottom] if block ~ ~-1 ~ burnt:sooty_stone_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:sooty_mossy_cobblestone_slab[type=bottom,waterlogged=false] replace burnt:sooty_stone_slab
execute if block ~ ~-1 ~ burnt:sooty_stone_slab[type=double] if block ~ ~-1 ~ burnt:sooty_stone_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:sooty_mossy_cobblestone_slab[type=double,waterlogged=true] replace burnt:sooty_stone_slab
execute if block ~ ~-1 ~ burnt:sooty_stone_slab[type=double] if block ~ ~-1 ~ burnt:sooty_stone_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:sooty_mossy_cobblestone_slab[type=double,waterlogged=false] replace burnt:sooty_stone_slab