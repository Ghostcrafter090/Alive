execute if entity @s[scores={diseaseTime=1000..2000,hasImmunityTime=290..291}] run effect give @s hunger 1 0
execute if entity @s[scores={diseaseTime=2000..3000,hasImmunityTime=290..291}] run effect give @s hunger 3 1
execute if entity @s[scores={diseaseTime=3000..}] run effect give @s hunger 5 2