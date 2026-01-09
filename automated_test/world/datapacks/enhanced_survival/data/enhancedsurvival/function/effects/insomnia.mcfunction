# Define
scoreboard objectives add insomnia minecraft.custom:minecraft.time_since_rest

# Main
execute as @a[scores={insomnia=25000..,staminaRegulatorA=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=35000..,staminaRegulatorA=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=45000..,staminaRegulatorA=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=55000..,staminaRegulatorA=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=65000..,staminaRegulatorA=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=75000..,staminaRegulatorA=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=85000..,staminaRegulatorA=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=95000..,staminaRegulatorA=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=105000..,staminaRegulatorA=1..1}] run scoreboard players remove @a stamina 1

execute as @a[scores={diseaseTime=3000..}] run scoreboard players add @s insomnia 1
execute as @a[scores={diseaseTime=5000..}] run scoreboard players add @s insomnia 1
execute as @a[scores={diseaseTime=7000..}] run scoreboard players add @s insomnia 1