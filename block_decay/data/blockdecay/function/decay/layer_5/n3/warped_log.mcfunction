# Define

# Main
execute if block ~ ~-1 ~ warped_log[axis=x] run fill ~ ~-1 ~ ~ ~-1 ~ stripped_warped_log[axis=x] replace warped_log
execute if block ~ ~-1 ~ warped_log[axis=y] run fill ~ ~-1 ~ ~ ~-1 ~ stripped_warped_log[axis=y] replace warped_log
execute if block ~ ~-1 ~ warped_log[axis=z] run fill ~ ~-1 ~ ~ ~-1 ~ stripped_warped_log[axis=z] replace warped_log