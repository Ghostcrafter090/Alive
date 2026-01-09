# Define
scoreboard objectives add slimeTick dummy
scoreboard objectives add slimeSize dummy
scoreboard objectives add slimeNegate dummy

# Main
execute as @e[type=slime] run function dynamicmonsters:slime/main_sub/6
execute as @e[type=slime,scores={slimeTick=1000..}] run scoreboard players add @s slimeSize 1
execute as @e[type=slime,scores={slimeSize=40..}] run scoreboard players set @s slimeSize 20
execute as @e[type=slime,scores={slimeTick=1000..}] run function dynamicmonsters:slime/main_sub/10
execute as @e[type=slime] at @s unless block ~ ~ ~ water run scoreboard players add @s slimeNegate 1
execute as @e[type=slime,scores={slimeNegate=1000..}] run function dynamicmonsters:slime/main_sub/13
execute as @e[type=slime] run function dynamicmonsters:slime/main_sub/16

function dynamicmonsters:slime/version_conflict/oozing_0


