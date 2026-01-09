# Defome
scoreboard objectives add climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add sneaktime minecraft.custom:minecraft.sneak_time
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add walkowater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add walkuwater minecraft.custom:minecraft.walk_under_water_one_cm

scoreboard objectives add stamina dummy

scoreboard objectives add staminaRegulatorA dummy
scoreboard objectives add staminaRegulatorB dummy

# Main
execute as @a[scores={stamina=0..200}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 2
execute as @a[scores={stamina=200..400}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 3
execute as @a[scores={stamina=400..1000}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 4
execute as @a[scores={sneaktime=1..}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 6
execute as @a[scores={staminaRegulatorA=5..5}] run scoreboard players set @s staminaRegulatorA 0
scoreboard players add @a staminaRegulatorA 1

scoreboard players add @a thirstRegulatorA 2
execute as @a[scores={thirstRegulatorA=240..}] run function enhancedsurvival:effects/stamina_sub/26
execute as @a[scores={staminaRegulatorB=2..2}] run scoreboard players set @s staminaRegulatorB 0
scoreboard players add @a staminaRegulatorB 1

execute as @a[scores={stamina=..0}] run scoreboard players set @s stamina 0
execute as @a[scores={stamina=1500..}] run scoreboard players set @s stamina 1500
execute as @a[scores={staminaRegulatorA=1..2}] run scoreboard players set @s climb 0
execute as @a[scores={staminaRegulatorA=1..4}] run scoreboard players set @s crouch 0
execute as @a[scores={staminaRegulatorA=1..1}] run function enhancedsurvival:effects/stamina_sub/40
execute as @a[scores={staminaRegulatorA=1..4}] run function enhancedsurvival:effects/stamina_sub/43

execute as @a[scores={staminaRegulatorA=1..1,jump=1..}] run scoreboard players set @s sprint 0
execute as @a[scores={staminaRegulatorA=1..4,jump=0..0}] run scoreboard players set @s sprint 0
execute as @a[scores={staminaRegulatorA=1..5,jump=0..0}] at @s if block ~ ~ ~ water run scoreboard players set @s sprint 0

execute as @a[scores={walk=1..}] run scoreboard players add @a stamina 40
execute as @a[scores={staminaRegulatorA=1..5}] run scoreboard players set @s walkuwater 0

execute as @a run function enhancedsurvival:effects/stamina_sub/54

execute as @a run function enhancedsurvival:effects/stamina_sub/59

# Effects
execute as @a[scores={stamina=..200}] run effect give @s weakness 5 0
execute as @a[scores={stamina=..150}] run function enhancedsurvival:effects/stamina_sub/71
execute as @a[scores={stamina=..100}] run function enhancedsurvival:effects/stamina_sub/73
execute as @a[scores={stamina=..50}] run function enhancedsurvival:effects/stamina_sub/75












