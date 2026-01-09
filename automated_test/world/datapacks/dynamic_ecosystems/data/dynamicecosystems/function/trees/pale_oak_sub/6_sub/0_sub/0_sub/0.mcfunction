execute positioned ~ ~-8 ~ run function gstools:compat/sereneseasons/temperature
execute if entity @s[scores={currentTemperature=-4..10}] run summon marker ~ ~ ~ {Tags:['pale_oak_tree_worker']}