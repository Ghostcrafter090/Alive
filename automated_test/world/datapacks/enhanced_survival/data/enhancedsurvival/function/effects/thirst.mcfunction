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
execute as @a[scores={thirst=..10,}] run function enhancedsurvival:effects/thirst_sub/33

# Creative
execute as @a[gamemode=creative] run scoreboard players set @s thirst 100
execute as @a[gamemode=spectator] run scoreboard players set @s thirst 100

# Effects
execute as @a[scores={thirst=..20}] run effect give @s weakness 4 0
execute as @a[scores={thirst=..15}] run function enhancedsurvival:effects/thirst_sub/50
execute as @a[scores={thirst=..10}] run function enhancedsurvival:effects/thirst_sub/52
execute as @a[scores={thirst=..5}] run function enhancedsurvival:effects/thirst_sub/58
execute as @a[scores={thirst=..0}] run effect give @s wither 2 0








