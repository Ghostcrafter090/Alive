# Define
scoreboard objectives add sqrtInput dummy

scoreboard objectives add sqrtResult dummy
scoreboard objectives add __sqrtG dummy
scoreboard objectives add ___sqrtG dummy
scoreboard objectives add _sqrtL dummy
scoreboard objectives add _sqrtH dummy
scoreboard objectives add _sqrtN dummy

scoreboard players operation @s sqrtInput *= @e[type=marker,tag=gstools_worker] 100

scoreboard players operation @s sqrtResult = @s sqrtInput
scoreboard players operation @s sqrtResult /= @e[type=marker,tag=gstools_worker] 2
scoreboard players set @s _sqrtL 0
scoreboard players operation @s _sqrtH = @s sqrtInput

# <node:no_compile_mode>
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
execute unless score @s ___sqrtG = @s sqrtInput run function gstools:util/sqrt/process
# </node:no_compile_mode>

scoreboard players set @e[type=marker,tag=gstools_worker] 10 10
scoreboard players operation @s sqrtResult = @s __sqrtG
scoreboard players operation @s sqrtInput /= @e[type=marker,tag=gstools_worker] 100
scoreboard players operation @s _sqrtN = @s sqrtResult
scoreboard players operation @s _sqrtN /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @s _sqrtN *= @e[type=marker,tag=gstools_worker] 10
scoreboard players add @s _sqrtN 5
execute if score @s sqrtResult >= @s _sqrtN run scoreboard players set @s _sqrtL 1
execute unless score @s sqrtResult >= @s _sqrtN run scoreboard players set @s _sqrtL 0

scoreboard players operation @s sqrtResult /= @e[type=marker,tag=gstools_worker] 10
scoreboard players operation @s sqrtResult += @s _sqrtL
