# Define

# Main
scoreboard players operation @s ___sqrtG = @s sqrtResult
scoreboard players operation @s ___sqrtG *= @s ___sqrtG
execute if score @s ___sqrtG > @s sqrtInput run scoreboard players operation @s _sqrtH = @s sqrtResult
execute if score @s ___sqrtG > @s sqrtInput run scoreboard players operation @s __sqrtG = @s sqrtResult
execute if score @s ___sqrtG > @s sqrtInput run scoreboard players operation @s __sqrtG += @s _sqrtL
execute if score @s ___sqrtG > @s sqrtInput run scoreboard players operation @s __sqrtG /= @e[type=marker,tag=gstools_worker] 2
execute if score @s ___sqrtG > @s sqrtInput run scoreboard players operation @s sqrtResult = @s __sqrtG
execute if score @s ___sqrtG < @s sqrtInput run scoreboard players operation @s _sqrtL = @s sqrtResult
execute if score @s ___sqrtG < @s sqrtInput run scoreboard players operation @s __sqrtG = @s sqrtResult
execute if score @s ___sqrtG < @s sqrtInput run scoreboard players operation @s __sqrtG += @s _sqrtH
execute if score @s ___sqrtG < @s sqrtInput run scoreboard players operation @s __sqrtG /= @e[type=marker,tag=gstools_worker] 2
execute if score @s ___sqrtG < @s sqrtInput run scoreboard players operation @s sqrtResult = @s __sqrtG