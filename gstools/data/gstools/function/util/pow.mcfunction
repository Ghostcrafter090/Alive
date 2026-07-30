# Define
scoreboard objectives add powBaseInput dummy
scoreboard objectives add powExpoInput dummy
scoreboard objectives add powResult dummy
scoreboard objectives add powWorkerA dummy
scoreboard objectives add powWorkerB dummy

# bitwise pow function
# def pow(a: float, b: int) -> float:
#     res = 1.0
# 
#     # Bit 0 (value 1)
#     if b % 2 == 1:
#         res = res * a
#     a = a * a
#   
#     # Bit 1 (value 2)
#     if int(b / 2) % 2 == 1:
#         res = res * a
#     a = a * a
#   
#     # Bit 2 (value 4)
#     if int(b / 4) % 2 == 1:
#         res = res * a
#     a = a * a
#     ...

# Main

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s 10000

execute as @e[type=marker,tag=gstools_worker] run scoreboard players set @s powResult 1
execute as @e[type=marker,tag=gstools_worker] run scoreboard players set @s powWorkerB 1

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA /= @s powWorkerB
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerA %= @s 2
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput > @s 0 run scoreboard players operation @s powResult *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] if score @s powWorkerA = @s 1 if score @s powExpoInput < @s 0 run scoreboard players operation @s powResult /= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powBaseInput *= @s powBaseInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerB *= @s 2