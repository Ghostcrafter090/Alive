# Define

# Main
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] run scoreboard players set @s hasDiseaseBoolean 0
execute unless entity @e[tag=gstools_worker,type=marker,scores={lifeAndDeath_disableDiseases=1..1}] run scoreboard players set @s diseaseTime 0