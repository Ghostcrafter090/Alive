execute if entity @s[scores={diseaseTime=2000..3000,hasImmunityTime=290..291}] run effect give @s hunger 1 0
execute if entity @s[scores={diseaseTime=3000..4000,hasImmunityTime=290..291}] run effect give @s hunger 3 1
execute if entity @s[scores={diseaseTime=4000..5000}] run effect give @s hunger 5 2
execute if entity @s[scores={diseaseTime=5000..}] run effect give @s hunger 7 3