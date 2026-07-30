# Define
scoreboard objectives add powBaseInput dummy
scoreboard objectives add powExpoInput dummy
scoreboard objectives add powResult dummy
scoreboard objectives add powWorkerA dummy
scoreboard objectives add powWorkerB dummy
scoreboard objectives add powWorkerC dummy

# bitwise pow function
# def pow(a: float, b: int) -> float:
#     res = 1.0
# 
    # Bit 0 (value 1)
        if ((b < 0) and (x <= -b)) or (x <= b):
            if int(b / x) % 2 == 1:
                if b < 0:
                    res = res / a
                elif b > 0:
                    res = res * a
            a = a * a
            x = x * 2
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

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerC = @s powExpoInput
execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powWorkerC *= @s n1

execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput > @s 0 if score @s powWorkerB <= @s powExpoInput run function gstools:util/pow/processbit

execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit
execute as @e[type=marker,tag=gstools_worker] if score @s powExpoInput < @s 0 if score @s powWorkerB <= @s powWorkerC run function gstools:util/pow/processbit

execute as @e[type=marker,tag=gstools_worker] run scoreboard players operation @s powResult /= @s 10000