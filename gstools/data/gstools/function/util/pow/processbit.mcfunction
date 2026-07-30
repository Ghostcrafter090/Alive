scoreboard players operation @s powWorkerA = @s powExpoInput
scoreboard players operation @s powWorkerA /= @s powWorkerB
scoreboard players operation @s powWorkerA %= @s 2
execute if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
scoreboard players operation @s powBaseInput /= @s 10000
scoreboard players operation @s powBaseInput *= @s powBaseInput
scoreboard players operation @s powBaseInput *= @s 10000
scoreboard players operation @s powWorkerB *= @s 2