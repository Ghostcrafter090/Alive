# Define

# Main
execute if block ~ ~-1 ~ waxed_cut_copper_slab[type=top] if block ~ ~-1 ~ waxed_cut_copper_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ cut_copper_slab[type=top,waterlogged=true] replace waxed_cut_copper_slab
execute if block ~ ~-1 ~ waxed_cut_copper_slab[type=top] if block ~ ~-1 ~ waxed_cut_copper_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ cut_copper_slab[type=top,waterlogged=false] replace waxed_cut_copper_slab
execute if block ~ ~-1 ~ waxed_cut_copper_slab[type=bottom] if block ~ ~-1 ~ waxed_cut_copper_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ cut_copper_slab[type=bottom,waterlogged=true] replace waxed_cut_copper_slab
execute if block ~ ~-1 ~ waxed_cut_copper_slab[type=bottom] if block ~ ~-1 ~ waxed_cut_copper_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ cut_copper_slab[type=bottom,waterlogged=false] replace waxed_cut_copper_slab
execute if block ~ ~-1 ~ waxed_cut_copper_slab[type=double] if block ~ ~-1 ~ waxed_cut_copper_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ cut_copper_slab[type=double,waterlogged=true] replace waxed_cut_copper_slab
execute if block ~ ~-1 ~ waxed_cut_copper_slab[type=double] if block ~ ~-1 ~ waxed_cut_copper_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ cut_copper_slab[type=double,waterlogged=false] replace waxed_cut_copper_slab