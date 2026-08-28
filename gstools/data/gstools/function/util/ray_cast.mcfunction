# Define
scoreboard objectives add rayCastDistance dummy

# Main
execute unless entity @s[scores={rayCastDistance=1..}] run scoreboard players set @s rayCastDistance 64
execute anchored eyes run summon marker ^ ^ ^ {Tags:['gstools_raycast']}
execute anchored eyes run tp @e[tag=gstools_raycast,type=marker,sort=nearest,limit=1] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=gstools_raycast,type=marker,sort=nearest,limit=1] rayCastDistance = @s rayCastDistance
execute as @e[tag=gstools_raycast,type=marker,sort=nearest,limit=1] at @s run function gstools:util/ray_cast/process
scoreboard players operation @s rayCastDistance = @e[tag=gstools_raycast,type=marker,sort=nearest,limit=1] rayCastDistance
kill @e[tag=gstools_raycast]