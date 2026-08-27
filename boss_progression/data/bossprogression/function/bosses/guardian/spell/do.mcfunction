# Define

# Main
function bossprogression:bosses/guardian/effects/run
execute if entity @e[tag=gstools_worker,scores={timeOfDay=0..12500}] run time add 18t

scoreboard players add @s guardianSpellTic 1

particle dripping_water ~ ~ ~ 1 100 1 0 100 force
particle minecraft:dolphin ~ ~ ~ 0 10 0 1 100 force
particle minecraft:bubble_column_up ~ ~ ~ 0 10 0 1 100 force
particle minecraft:underwater ~ ~ ~ 1 10 1 1 100 force

playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 10 1

execute if entity @s[scores={guardianSpellTic=50..}] if entity @s[tag=!guardian_spell_spawned_thunder] run kill @e[tag=weather2_node,type=marker]
execute if entity @s[scores={guardianSpellTic=50..}] if entity @s[tag=!guardian_spell_spawned_thunder] run summon marker ~ ~ ~ {Tags:['weather2_node']} 
execute if entity @s[scores={guardianSpellTic=50..}] if entity @s[tag=!guardian_spell_spawned_thunder] run function gstools:compat/weather2/comm/summon/thunder
execute if entity @s[scores={guardianSpellTic=50..}] if entity @s[tag=!guardian_spell_spawned_thunder] run tag @s add guardian_spell_spawned_thunder

execute if entity @s[scores={guardianSpellTic=400..410}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.1 0.1
execute if entity @s[scores={guardianSpellTic=410..420}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.2 0.1
execute if entity @s[scores={guardianSpellTic=420..430}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.3 0.1
execute if entity @s[scores={guardianSpellTic=430..440}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.4 0.1
execute if entity @s[scores={guardianSpellTic=440..450}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.5 0.1
execute if entity @s[scores={guardianSpellTic=450..460}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.6 0.1
execute if entity @s[scores={guardianSpellTic=460..470}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.7 0.1
execute if entity @s[scores={guardianSpellTic=470..480}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.8 0.1
execute if entity @s[scores={guardianSpellTic=480..490}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.9 0.1
execute if entity @s[scores={guardianSpellTic=490..500}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 1.0 0.1
execute if entity @s[scores={guardianSpellTic=500..600}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 2.0 0.1

execute if entity @s[scores={guardianSpellTic=500..510}] run summon lightning_bolt ~ ~50 ~
execute if entity @s[scores={guardianSpellTic=510..520}] run summon lightning_bolt ~ ~45 ~
execute if entity @s[scores={guardianSpellTic=520..530}] run summon lightning_bolt ~ ~40 ~
execute if entity @s[scores={guardianSpellTic=530..540}] run summon lightning_bolt ~ ~35 ~
execute if entity @s[scores={guardianSpellTic=540..550}] run summon lightning_bolt ~ ~30 ~
execute if entity @s[scores={guardianSpellTic=550..560}] run summon lightning_bolt ~ ~25 ~
execute if entity @s[scores={guardianSpellTic=560..570}] run summon lightning_bolt ~ ~20 ~
execute if entity @s[scores={guardianSpellTic=570..580}] run summon lightning_bolt ~ ~15 ~
execute if entity @s[scores={guardianSpellTic=580..590}] run summon lightning_bolt ~ ~10 ~
execute if entity @s[scores={guardianSpellTic=590..598}] run summon lightning_bolt ~ ~5 ~
execute if entity @s[scores={guardianSpellTic=599..599}] run fill ~1 ~-1 ~ ~1 ~-1 ~ obsidian
execute if entity @s[scores={guardianSpellTic=599..599}] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ obsidian
execute if entity @s[scores={guardianSpellTic=599..599}] run fill ~ ~-1 ~1 ~ ~-1 ~1 obsidian
execute if entity @s[scores={guardianSpellTic=599..599}] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 obsidian
execute if entity @s[scores={guardianSpellTic=599..599}] run summon creeper ~ ~ ~ {ExplosionRadius:50b,Fuse:1,ignited:1b,Motion:[0.0,-10.0,0.0]}
execute if entity @s[scores={guardianSpellTic=599..599}] run fill ~ ~-1 ~ ~ ~-1 ~ dark_prismarine
execute if entity @s[scores={guardianSpellTic=599..599}] run summon item ~ ~2 ~ {Glowing:1b,Invulnerable:1b,Item:{id:"minecraft:turtle_helmet",Count:1b,count:1,components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:coast"},"minecraft:enchantments":{"aqua_affinity":1,"respiration":1,"flame":1,"binding_curse":1},"minecraft:custom_name":{"color":"blue","italic":false,"text":"Crown Of The Sea"}},tag:{display:{Name:'{"text":"Crown Of The Sea","color":"blue","italic":false}'},Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}
execute if entity @s[scores={guardianSpellTic=599..599}] as @e[type=marker,tag=gstools_worker,limit=1] as @e[type=creeper] at @s run summon lightning_bolt ~ ~ ~
execute if entity @s[scores={guardianSpellTic=599..599}] as @e[type=marker,tag=gstools_worker,limit=1] run kill @e[tag=weather2_node,type=marker]
execute if entity @s[scores={guardianSpellTic=599..599}] run summon marker ~ ~ ~ {Tags:['weather2_node']}
execute if entity @s[scores={guardianSpellTic=599..599}] run function gstools:compat/weather2/comm/summon/tornado_f0
execute if entity @s[scores={guardianSpellTic=599..599}] as @e[type=marker,tag=gstools_worker,limit=1] run scoreboard players set @s crownOfTheSeaHasBeenSpawned 1
execute if entity @s[scores={guardianSpellTic=599..599}] as @e[type=marker,tag=gstools_worker,limit=1] run scoreboard players set @s guardiansHaveBeenKilled 0