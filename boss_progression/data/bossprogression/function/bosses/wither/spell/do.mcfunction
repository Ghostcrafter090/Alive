# Define

# Main
scoreboard players add @s witherSpellTic 1

execute if entity @s[scores={witherSpellTic=0..5}] run particle soul_fire_flame ~ ~ ~ 5 5 5 0 100 force

particle flame ~ ~ ~ 1 100 1 0 100 force
playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 10 1
execute if entity @s[scores={witherSpellTic=400..410}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.1 0.1
execute if entity @s[scores={witherSpellTic=410..420}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.2 0.1
execute if entity @s[scores={witherSpellTic=420..430}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.3 0.1
execute if entity @s[scores={witherSpellTic=430..440}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.4 0.1
execute if entity @s[scores={witherSpellTic=440..450}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.5 0.1
execute if entity @s[scores={witherSpellTic=450..460}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.6 0.1
execute if entity @s[scores={witherSpellTic=460..470}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.7 0.1
execute if entity @s[scores={witherSpellTic=470..480}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.8 0.1
execute if entity @s[scores={witherSpellTic=480..490}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.9 0.1
execute if entity @s[scores={witherSpellTic=490..500}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1.0 0.1
execute if entity @s[scores={witherSpellTic=500..600}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 2.0 0.1

execute if entity @s[scores={witherSpellTic=500..510}] run summon lightning_bolt ~ ~50 ~
execute if entity @s[scores={witherSpellTic=510..520}] run summon lightning_bolt ~ ~45 ~
execute if entity @s[scores={witherSpellTic=520..530}] run summon lightning_bolt ~ ~40 ~
execute if entity @s[scores={witherSpellTic=530..540}] run summon lightning_bolt ~ ~35 ~
execute if entity @s[scores={witherSpellTic=540..550}] run summon lightning_bolt ~ ~30 ~
execute if entity @s[scores={witherSpellTic=550..560}] run summon lightning_bolt ~ ~25 ~
execute if entity @s[scores={witherSpellTic=560..570}] run summon lightning_bolt ~ ~20 ~
execute if entity @s[scores={witherSpellTic=570..580}] run summon lightning_bolt ~ ~15 ~
execute if entity @s[scores={witherSpellTic=580..590}] run summon lightning_bolt ~ ~10 ~
execute if entity @s[scores={witherSpellTic=590..598}] run summon lightning_bolt ~ ~5 ~
execute if entity @s[scores={witherSpellTic=599..599}] run fill ~1 ~-1 ~ ~1 ~-1 ~ obsidian
execute if entity @s[scores={witherSpellTic=599..599}] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ obsidian
execute if entity @s[scores={witherSpellTic=599..599}] run fill ~ ~-1 ~1 ~ ~-1 ~1 obsidian
execute if entity @s[scores={witherSpellTic=599..599}] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 obsidian
execute if entity @s[scores={witherSpellTic=599..599}] run summon fireball ~ ~ ~ {ExplosionPower:50,Motion:[0,-10,0]}
execute if entity @s[scores={witherSpellTic=599..599}] run fill ~ ~-1 ~ ~ ~-1 ~ netherrack
execute if entity @s[scores={witherSpellTic=599..599}] run fill ~ ~ ~ ~ ~ ~ fire
execute if entity @s[scores={witherSpellTic=599..599}] run summon item ~ ~2 ~ {Glowing:1b,Invulnerable:1b,Item:{id:"minecraft:wither_rose",Count:1b,count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:custom_name":{"color":"dark_red","italic":false,"text":"Enchanted Wither Rose"}},tag:{display:{Name:'{"text":"Enchanted Wither Rose","color":"red","italic":false}'},Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}
execute if entity @s[scores={witherSpellTic=599..599}] as @e[type=marker,tag=gstools_worker,limit=1] as @e[type=creeper] at @s run summon lightning_bolt ~ ~ ~
execute if entity @s[scores={witherSpellTic=1..1}] as @e[type=marker,tag=gstools_worker,limit=1] run scoreboard players set @s enchantedWitherRoseHasBeenSpawned 1
execute if entity @s[scores={witherSpellTic=1..1}] as @e[type=marker,tag=gstools_worker,limit=1] run scoreboard players set @s witherHasBeenKilled 0
execute if entity @s[scores={witherSpellTic=1..1}] as @e[type=marker,tag=gstools_worker,limit=1] run scoreboard players set @s currentTemperatureWitherModif 1000
execute if entity @s[scores={witherSpellTic=599..599}] as @e[type=marker,tag=gstools_worker,limit=1] run scoreboard players set @s currentTemperatureWitherModif 0