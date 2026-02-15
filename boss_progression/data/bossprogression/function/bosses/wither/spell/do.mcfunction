# Define

# Main
scoreboard players add @s witherSpellTic 3

particle flame ~ ~ ~ 1 100 1 0 100 force
playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 10 1
execute if entity @s[scores={witherSpellTic=1600..1610}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.1 0.1
execute if entity @s[scores={witherSpellTic=1610..1620}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.2 0.1
execute if entity @s[scores={witherSpellTic=1620..1630}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.3 0.1
execute if entity @s[scores={witherSpellTic=1630..1640}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.4 0.1
execute if entity @s[scores={witherSpellTic=1640..1650}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.5 0.1
execute if entity @s[scores={witherSpellTic=1650..1660}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.6 0.1
execute if entity @s[scores={witherSpellTic=1660..1670}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.7 0.1
execute if entity @s[scores={witherSpellTic=1670..1680}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.8 0.1
execute if entity @s[scores={witherSpellTic=1680..1690}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.9 0.1
execute if entity @s[scores={witherSpellTic=1690..1700}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1.0 0.1
execute if entity @s[scores={witherSpellTic=1700..1800}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 2.0 0.1

execute if entity @s[scores={witherSpellTic=1700..1710}] run summon lightning_bolt ~ ~50 ~
execute if entity @s[scores={witherSpellTic=1710..1720}] run summon lightning_bolt ~ ~45 ~
execute if entity @s[scores={witherSpellTic=1720..1730}] run summon lightning_bolt ~ ~40 ~
execute if entity @s[scores={witherSpellTic=1730..1740}] run summon lightning_bolt ~ ~35 ~
execute if entity @s[scores={witherSpellTic=1740..1750}] run summon lightning_bolt ~ ~30 ~
execute if entity @s[scores={witherSpellTic=1750..1760}] run summon lightning_bolt ~ ~25 ~
execute if entity @s[scores={witherSpellTic=1760..1770}] run summon lightning_bolt ~ ~20 ~
execute if entity @s[scores={witherSpellTic=1770..1780}] run summon lightning_bolt ~ ~15 ~
execute if entity @s[scores={witherSpellTic=1780..1790}] run summon lightning_bolt ~ ~10 ~
execute if entity @s[scores={witherSpellTic=1790..1798}] run summon lightning_bolt ~ ~5 ~
execute if entity @s[scores={witherSpellTic=1799..1799}] run fill ~1 ~-1 ~ ~1 ~-1 ~ obsidian
execute if entity @s[scores={witherSpellTic=1799..1799}] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ obsidian
execute if entity @s[scores={witherSpellTic=1799..1799}] run fill ~ ~-1 ~1 ~ ~-1 ~1 obsidian
execute if entity @s[scores={witherSpellTic=1799..1799}] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 obsidian
execute if entity @s[scores={witherSpellTic=1799..1799}] run summon fireball ~ ~ ~ {ExplosionPower:50,Motion:[0,-10,0]}
execute if entity @s[scores={witherSpellTic=1799..1799}] run fill ~ ~-1 ~ ~ ~-1 ~ netherrack
execute if entity @s[scores={witherSpellTic=1799..1799}] run fill ~ ~ ~ ~ ~ ~ fire
execute if entity @s[scores={witherSpellTic=1799..1799}] run summon item ~ ~2 ~ {Glowing:1b,Invulnerable:1b,Item:{id:"minecraft:wither_rose",Count:1b,count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:custom_name":{"color":"dark_red","italic":false,"text":"Enchanted Wither Rose"}},tag:{display:{Name:'{"text":"Enchanted Wither Rose","color":"red","italic":false}'},Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}


