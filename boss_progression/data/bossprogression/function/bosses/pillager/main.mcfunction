# Define

# Main
schedule function bossprogression:bosses/pillager/util/toggle 8t append

schedule function bossprogression:bosses/pillager/stages/main 9t append

execute as @e[type=marker,tag=gstools_cursor,sort=random,limit=3] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace structure_block