execute as @a run attribute @s gstools:disease_effect_weakness base set 0
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=1..1,weak_boolean=1..1,weak_max_tier=1..1,diseaseTime=1000..}] run attribute @s gstools:disease_effect_weakness base set 9
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=1..1,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=1000..2000}] run attribute @s gstools:disease_effect_weakness base set 17
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=1..1,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=2000..}] run attribute @s gstools:disease_effect_weakness base set 17
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=2..2,weak_boolean=1..1,weak_max_tier=1..1,diseaseTime=2000..}] run attribute @s gstools:disease_effect_weakness base set 10
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=2..2,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=2000..3000}] run attribute @s gstools:disease_effect_weakness base set 18
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=2..2,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=3000..}] run attribute @s gstools:disease_effect_weakness base set 18
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=3..,weak_boolean=1..1,weak_max_tier=1..1,diseaseTime=3000..}] run attribute @s gstools:disease_effect_weakness base set 11
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=3..,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=3000..4000}] run attribute @s gstools:disease_effect_weakness base set 19
execute as @a if entity @s[scores={hasDiseaseBoolean=1..2,weak_minact_tier=3..,weak_boolean=1..1,weak_max_tier=2..,diseaseTime=4000..}] run attribute @s gstools:disease_effect_weakness base set 19
