execute positioned ~ ~-8 ~ run function gstools:compat/sereneseasons/temperature
execute if entity @s[scores={currentTemperature=10..30}] run summon marker ~ ~ ~ {Tags:['spruce_tree_worker']}