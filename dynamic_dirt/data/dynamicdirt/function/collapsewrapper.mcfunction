# Define

# Main
function dynamicdirt:collapse
scoreboard players add @e[tag=gstools_worker,type=marker] numberOfCollapses 1
execute unless score @e[tag=gstools_worker,type=marker,limit=1] numberOfCollapses >= @e[tag=gstools_worker,type=marker,limit=1] dynamicDirt_collapseRate as @e[tag=dirt_collapse,type=marker,limit=1,sort=random] at @s run function dynamicdirt:collapsewrapper