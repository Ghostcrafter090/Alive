# Define

# Main
execute if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[type=top] if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:chiseled_ember_slab[type=top,waterlogged=true] replace burnt:waxed_chiseled_ember_slab
execute if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[type=top] if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:chiseled_ember_slab[type=top,waterlogged=false] replace burnt:waxed_chiseled_ember_slab
execute if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[type=bottom] if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:chiseled_ember_slab[type=bottom,waterlogged=true] replace burnt:waxed_chiseled_ember_slab
execute if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[type=bottom] if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:chiseled_ember_slab[type=bottom,waterlogged=false] replace burnt:waxed_chiseled_ember_slab
execute if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[type=double] if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:chiseled_ember_slab[type=double,waterlogged=true] replace burnt:waxed_chiseled_ember_slab
execute if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[type=double] if block ~ ~-1 ~ burnt:waxed_chiseled_ember_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:chiseled_ember_slab[type=double,waterlogged=false] replace burnt:waxed_chiseled_ember_slab