# Define
scoreboard objectives add sqrtInput dummy

scoreboard objectives add sqrtResult dummy
scoreboard objectives add __sqrtG dummy
scoreboard objectives add ___sqrtG dummy
scoreboard objectives add _sqrtL dummy
scoreboard objectives add _sqrtH dummy
scoreboard objectives add _sqrtN dummy
scoreboard objectives add sqrtPresicion dummy
scoreboard objectives add internalPresicion dummy

scoreboard players set @s internalPresicion 1
scoreboard players operation @s sqrtInput *= @s sqrtPresicion
scoreboard players operation @s sqrtInput = @s sqrtInput

# <node:no_compile_mode>
execute if entity @s[scores={sqrtInput=46000..}] run tellraw @a {"score":{"name":"Ghostcrafter090","objective":"stormCheckWorkerC"}}
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s internalPresicion *= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s sqrtInput /= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s internalPresicion *= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s sqrtInput /= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s internalPresicion *= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s sqrtInput /= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s internalPresicion *= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s sqrtInput /= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s internalPresicion *= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s sqrtInput /= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s internalPresicion *= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s sqrtInput /= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s internalPresicion *= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s sqrtInput /= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s internalPresicion *= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtInput=46000..}] run scoreboard players operation @s sqrtInput /= @e[type=marker,tag=gstools_worker] 10
# </node:no_compile_mode>

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

scoreboard players operation @s sqrtResult = @s __sqrtG
scoreboard players operation @s sqrtInput *= @s internalPresicion
scoreboard players operation @s internalPresicion *= @s internalPresicion
scoreboard players operation @s sqrtInput /= @s sqrtPresicion
scoreboard players operation @s sqrtPresicion /= @e[type=marker,tag=gstools_worker] 10
execute if entity @s[scores={sqrtPresicion=..0}] run scoreboard players set @s sqrtPresicion 1
scoreboard players operation @s sqrtResult *= @s internalPresicion
scoreboard players operation @s _sqrtN = @s sqrtResult
scoreboard players operation @s _sqrtN /= @s sqrtPresicion
scoreboard players operation @s _sqrtN *= @s sqrtPresicion
scoreboard players add @s _sqrtN 5
execute if score @s sqrtResult >= @s _sqrtN run scoreboard players set @s _sqrtL 1
execute unless score @s sqrtResult >= @s _sqrtN run scoreboard players set @s _sqrtL 0

scoreboard players operation @s sqrtResult /= @s sqrtPresicion
scoreboard players operation @s sqrtResult += @s _sqrtL
