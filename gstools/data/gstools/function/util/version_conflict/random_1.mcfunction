# Define

# Main
execute store result score @s random run random value -2147483646..2147483646
execute store result score @s random10 run random value 0..10
execute store result score @s randomSigned10 run random value -10..10
execute store result score @s random50 run random value 0..50
execute store result score @s random100 run random value 0..100
execute store result score @s randomSigned100 run random value -100..100
execute store result score @s random1000 run random value 0..1000
execute store result score @s randomSigned1000 run random value -1000..1000
execute store result score @s randomNegate run random value 0..1

execute if entity @s[scores={randomNegate=0..0}] run scoreboard players set @s randomNegate -1

scoreboard players set @s newRandomCompatible 1





