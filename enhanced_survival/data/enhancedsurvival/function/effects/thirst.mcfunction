# Define
scoreboard objectives add thirst dummy
scoreboard objectives add thirstRegulatorA dummy

scoreboard objectives add drinkPotion minecraft.used:minecraft.potion
scoreboard objectives add drinkMilk minecraft.used:minecraft.milk_bucket
scoreboard objectives add drinkMushroomStew minecraft.used:minecraft.mushroom_stew
scoreboard objectives add drinkSusStew minecraft.used:minecraft.suspicious_stew
scoreboard objectives add drinkRabbitStew minecraft.used:minecraft.rabbit_stew
scoreboard objectives add drinkBeetrootSoup minecraft.used:minecraft.beetroot_soup

# Main
execute as @a unless entity @s[scores={thirst=-1000..1000}] run scoreboard players set @s thirst 100

execute as @a[scores={drinkPotion=1..,thirst=..100}] run scoreboard players add @s thirst 30
execute as @a[scores={drinkPotion=1..}] run scoreboard players set @s drinkPotion 0

execute as @a[scores={drinkMilk=1..,thirst=..100}] run scoreboard players add @s thirst 5
execute as @a[scores={drinkMilk=1..}] run scoreboard players set @s drinkMilk 0

execute as @a[scores={drinkMushroomStew=1..,thirst=..100}] run scoreboard players add @s thirst 10
execute as @a[scores={drinkMushroomStew=1..}] run scoreboard players set @s drinkMushroomStew 0

execute as @a[scores={drinkSusStew=1..,thirst=..100}] run scoreboard players add @s thirst 8
execute as @a[scores={drinkSusStew=1..}] run scoreboard players set @s drinkSusStew 0

execute as @a[scores={drinkRabbitStew=1..,thirst=..100}] run scoreboard players add @s thirst 5
execute as @a[scores={drinkRabbitStew=1..}] run scoreboard players set @s drinkRabbitStew 0

execute as @a[scores={drinkBeetrootSoup=1..,thirst=..100}] run scoreboard players add @s thirst 15
execute as @a[scores={drinkBeetrootSoup=1..}] run scoreboard players set @s drinkBeetrootSoup 0

# Disease
execute as @a[scores={thirst=..10,}] unless entity @s[scores={hasDiseaseBoolean=1..2}] run scoreboard players set @s hasDiseaseBoolean 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s hung_boolean 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s nau_boolean 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s weak_boolean 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s hung_max_tier 2
execute as @a[scores={thirst=..10,}] run scoreboard players set @s weak_max_tier 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s nau_max_tier 4
execute as @a[scores={thirst=..10,}] run scoreboard players set @s hung_minact_tier 2
execute as @a[scores={thirst=..10,}] run scoreboard players set @s weak_minact_tier 3
execute as @a[scores={thirst=..10,}] run scoreboard players set @s nau_minact_tier 1

# Creative
execute as @a[gamemode=creative] run scoreboard players set @s thirst 100
execute as @a[gamemode=spectator] run scoreboard players set @s thirst 100

# Effects
execute as @a[scores={thirst=..20}] run effect give @s weakness 4 0
execute as @a[scores={thirst=..15}] run effect give @s weakness 4 1
execute as @a[scores={thirst=..15}] run effect give @s mining_fatigue 4 0
execute as @a[scores={thirst=..10}] run effect give @s weakness 4 1
execute as @a[scores={thirst=..10}] run effect give @s mining_fatigue 4 0
execute as @a[scores={thirst=..10}] run effect give @s weakness 4 1
execute as @a[scores={thirst=..10}] run effect give @s slowness 4 0
execute as @a[scores={thirst=..10}] run effect give @s mining_fatigue 4 0
execute as @a[scores={thirst=..10}] run effect give @s nausea 4 0
execute as @a[scores={thirst=..5}] run effect give @s nausea 4 1
execute as @a[scores={thirst=..5}] run effect give @s slowness 4 1
execute as @a[scores={thirst=..0}] run effect give @s wither 2 0








