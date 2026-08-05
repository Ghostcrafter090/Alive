# Define

# Main
execute if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[type=top] if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:cut_smoldering_slab[type=top,waterlogged=true] replace burnt:waxed_cut_smoldering_slab
execute if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[type=top] if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:cut_smoldering_slab[type=top,waterlogged=false] replace burnt:waxed_cut_smoldering_slab
execute if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[type=bottom] if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:cut_smoldering_slab[type=bottom,waterlogged=true] replace burnt:waxed_cut_smoldering_slab
execute if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[type=bottom] if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:cut_smoldering_slab[type=bottom,waterlogged=false] replace burnt:waxed_cut_smoldering_slab
execute if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[type=double] if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[waterlogged=true] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:cut_smoldering_slab[type=double,waterlogged=true] replace burnt:waxed_cut_smoldering_slab
execute if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[type=double] if block ~ ~-1 ~ burnt:waxed_cut_smoldering_slab[waterlogged=false] run fill ~ ~-1 ~ ~ ~-1 ~ burnt:cut_smoldering_slab[type=double,waterlogged=false] replace burnt:waxed_cut_smoldering_slab