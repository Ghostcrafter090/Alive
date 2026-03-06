# Define
scoreboard objectives add heartOfTheSeaSpellTic dummy

# Main
execute unless entity @s[scores={heartOfTheSeaSpellTic=1..}] run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 9 1
execute unless entity @s[scores={heartOfTheSeaSpellTic=1..}] run particle nautilus ~ ~ ~ 0 0 0 10 500 force
scoreboard players add @s heartOfTheSeaSpellTic 1

playsound minecraft:particle.soul_escape master @a ~ ~ ~ 9 1

execute if entity @s[scores={heartOfTheSeaSpellTic=30..}] run summon lightning_bolt ~ ~ ~
execute if entity @s[scores={heartOfTheSeaSpellTic=30..}] run setblock ~ ~ ~ soul_fire strict
execute if entity @s[scores={heartOfTheSeaSpellTic=30..}] run kill @e[type=item,distance=0..1]
execute if entity @s[scores={heartOfTheSeaSpellTic=30..}] run summon item ~ ~ ~ {Glowing:1b,Invulnerable:1b,Item:{id:"minecraft:heart_of_the_sea",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:custom_name":{"bold":false,"color":"aqua","italic":false,"shadow_color":1010582698,"text":"Enchanted Heart Of The Sea"}}}}
execute if entity @s[scores={heartOfTheSeaSpellTic=30..}] run kill @s