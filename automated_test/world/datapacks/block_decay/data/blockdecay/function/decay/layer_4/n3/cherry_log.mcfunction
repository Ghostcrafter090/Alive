# Define

# Main
execute if block ~ ~-1 ~ cherry_log[axis=x] run fill ~ ~-1 ~ ~ ~-1 ~ stripped_cherry_log[axis=x] replace cherry_log
execute if block ~ ~-1 ~ cherry_log[axis=y] run fill ~ ~-1 ~ ~ ~-1 ~ stripped_cherry_log[axis=y] replace cherry_log
execute if block ~ ~-1 ~ cherry_log[axis=z] run fill ~ ~-1 ~ ~ ~-1 ~ stripped_cherry_log[axis=z] replace cherry_log