# Define
execute if block ~ ~ ~ burnt:burnt_log

# Main
# <node:no_compile_mode>
execute if block ~ ~-1 ~ #burnt:burnt run tag @s add decayed_burnt_block
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_0/main
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_1/main
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_2/main
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_3/main
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_4/main
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_5/main
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_6/main
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_7/main
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_8/main
execute if block ~ ~-1 ~ #burnt:burnt if blocks ~ ~-1 ~ ~ ~-1 ~ 0 0 0 all run function blockdecay:compat/burnt/layer_9/main
# <node:no_compile_mode/>