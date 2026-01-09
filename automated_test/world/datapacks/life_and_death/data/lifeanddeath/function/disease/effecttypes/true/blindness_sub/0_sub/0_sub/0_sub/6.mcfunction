execute if entity @s[scores={diseaseTime=1000..2000,hasImmunityTime=290..291}] run effect give @s blindness 1 0
execute if entity @s[scores={diseaseTime=2000..3000,hasImmunityTime=290..291}] run effect give @s blindness 3 1
execute if entity @s[scores={diseaseTime=3000..4000,hasImmunityTime=290..291}] run effect give @s blindness 5 2
execute if entity @s[scores={diseaseTime=4000..}] run effect give @s blindness 7 3