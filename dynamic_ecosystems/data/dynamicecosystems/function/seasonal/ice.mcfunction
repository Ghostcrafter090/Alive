# Define

# Main
execute at @s if block ~1 ~-1 ~ packed_ice if entity @s[scores={currentTemperature=..-48}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 blue_ice replace packed_ice
execute at @s if block ~1 ~-1 ~ packed_ice if entity @s[scores={currentTemperature=..-24}] run fill ~1 ~-1 ~ ~-1 ~-1 ~ blue_ice replace packed_ice

execute at @s if block ~-1 ~-1 ~ packed_ice if entity @s[scores={currentTemperature=..-48}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 blue_ice replace packed_ice
execute at @s if block ~-1 ~-1 ~ packed_ice if entity @s[scores={currentTemperature=..-24}] run fill ~1 ~-1 ~ ~-1 ~-1 ~ blue_ice replace packed_ice

execute at @s if block ~ ~-1 ~1 packed_ice if entity @s[scores={currentTemperature=..-48}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 blue_ice replace packed_ice
execute at @s if block ~ ~-1 ~1 packed_ice if entity @s[scores={currentTemperature=..-24}] run fill ~ ~-1 ~1 ~ ~-1 ~-1 blue_ice replace packed_ice

execute at @s if block ~ ~-1 ~-1 packed_ice if entity @s[scores={currentTemperature=..-48}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 blue_ice replace packed_ice
execute at @s if block ~ ~-1 ~-1 packed_ice if entity @s[scores={currentTemperature=..-24}] run fill ~ ~-1 ~1 ~ ~-1 ~-1 blue_ice replace packed_ice

execute at @s if block ~1 ~-1 ~ ice if entity @s[scores={currentTemperature=..-48}] run fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 packed_ice replace ice
execute at @s if block ~1 ~-1 ~ ice if entity @s[scores={currentTemperature=..-24}] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 packed_ice replace ice
execute at @s if block ~1 ~-1 ~ ice if entity @s[scores={currentTemperature=..-12}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 packed_ice replace ice
execute at @s if block ~1 ~-1 ~ ice if entity @s[scores={currentTemperature=..-6}] run fill ~1 ~-1 ~ ~-1 ~-1 ~ packed_ice replace ice

execute at @s if block ~-1 ~-1 ~ ice if entity @s[scores={currentTemperature=..-48}] run fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 packed_ice replace ice
execute at @s if block ~-1 ~-1 ~ ice if entity @s[scores={currentTemperature=..-24}] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 packed_ice replace ice
execute at @s if block ~-1 ~-1 ~ ice if entity @s[scores={currentTemperature=..-12}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 packed_ice replace ice
execute at @s if block ~-1 ~-1 ~ ice if entity @s[scores={currentTemperature=..-6}] run fill ~1 ~-1 ~ ~-1 ~-1 ~ packed_ice replace ice

execute at @s if block ~ ~-1 ~1 ice if entity @s[scores={currentTemperature=..-48}] run fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 packed_ice replace ice
execute at @s if block ~ ~-1 ~1 ice if entity @s[scores={currentTemperature=..-24}] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 packed_ice replace ice
execute at @s if block ~ ~-1 ~1 ice if entity @s[scores={currentTemperature=..-12}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 packed_ice replace ice
execute at @s if block ~ ~-1 ~1 ice if entity @s[scores={currentTemperature=..-6}] run fill ~ ~-1 ~1 ~ ~-1 ~-1 packed_ice replace ice

execute at @s if block ~ ~-1 ~-1 ice if entity @s[scores={currentTemperature=..-48}] run fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 packed_ice replace ice
execute at @s if block ~ ~-1 ~-1 ice if entity @s[scores={currentTemperature=..-24}] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 packed_ice replace ice
execute at @s if block ~ ~-1 ~-1 ice if entity @s[scores={currentTemperature=..-12}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 packed_ice replace ice
execute at @s if block ~ ~-1 ~-1 ice if entity @s[scores={currentTemperature=..-6}] run fill ~ ~-1 ~1 ~ ~-1 ~-1 packed_ice replace ice

execute at @s if block ~1 ~-1 ~ water if entity @s[scores={currentTemperature=..-48}] run fill ~6 ~-4 ~6 ~-6 ~-4 ~-6 ice replace water
execute at @s if block ~1 ~-1 ~ water if entity @s[scores={currentTemperature=..-24}] run fill ~5 ~-3 ~5 ~-5 ~-3 ~-5 ice replace water
execute at @s if block ~1 ~-1 ~ water if entity @s[scores={currentTemperature=..-12}] run fill ~4 ~-2 ~4 ~-4 ~-2 ~-4 ice replace water
execute at @s if block ~1 ~-1 ~ water if entity @s[scores={currentTemperature=..-6}] run fill ~3 ~-1 ~3 ~-3 ~-1 ~-3 ice replace water
execute at @s if block ~1 ~-1 ~ water if entity @s[scores={currentTemperature=..-3}] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 ice replace water
execute at @s if block ~1 ~-1 ~ water if entity @s[scores={currentTemperature=..-1}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 ice replace water
execute at @s if block ~1 ~-1 ~ water if entity @s[scores={currentTemperature=..0}] run fill ~1 ~-1 ~ ~-1 ~-1 ~ ice replace water

execute at @s if block ~-1 ~-1 ~ water if entity @s[scores={currentTemperature=..-48}] run fill ~6 ~-4 ~6 ~-6 ~-4 ~-6 ice replace water
execute at @s if block ~-1 ~-1 ~ water if entity @s[scores={currentTemperature=..-24}] run fill ~5 ~-3 ~5 ~-5 ~-3 ~-5 ice replace water
execute at @s if block ~-1 ~-1 ~ water if entity @s[scores={currentTemperature=..-12}] run fill ~4 ~-2 ~4 ~-4 ~-2 ~-4 ice replace water
execute at @s if block ~-1 ~-1 ~ water if entity @s[scores={currentTemperature=..-6}] run fill ~3 ~-1 ~3 ~-3 ~-1 ~-3 ice replace water
execute at @s if block ~-1 ~-1 ~ water if entity @s[scores={currentTemperature=..-3}] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 ice replace water
execute at @s if block ~-1 ~-1 ~ water if entity @s[scores={currentTemperature=..-1}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 ice replace water
execute at @s if block ~-1 ~-1 ~ water if entity @s[scores={currentTemperature=..0}] run fill ~1 ~-1 ~ ~-1 ~-1 ~ ice replace water

execute at @s if block ~ ~-1 ~1 water if entity @s[scores={currentTemperature=..-48}] run fill ~6 ~-4 ~6 ~-7 ~-4 ~-7 ice replace water
execute at @s if block ~ ~-1 ~1 water if entity @s[scores={currentTemperature=..-24}] run fill ~5 ~-3 ~5 ~-6 ~-3 ~-6 ice replace water
execute at @s if block ~ ~-1 ~1 water if entity @s[scores={currentTemperature=..-12}] run fill ~4 ~-2 ~4 ~-5 ~-2 ~-5 ice replace water
execute at @s if block ~ ~-1 ~1 water if entity @s[scores={currentTemperature=..-6}] run fill ~3 ~-1 ~3 ~-4 ~-1 ~-4 ice replace water
execute at @s if block ~ ~-1 ~1 water if entity @s[scores={currentTemperature=..-3}] run fill ~2 ~-1 ~2 ~-3 ~-1 ~-3 ice replace water
execute at @s if block ~ ~-1 ~1 water if entity @s[scores={currentTemperature=..-1}] run fill ~1 ~-1 ~1 ~-2 ~-1 ~-2 ice replace water
execute at @s if block ~ ~-1 ~1 water if entity @s[scores={currentTemperature=..0}] run fill ~ ~-1 ~1 ~ ~-1 ~-1 ice replace water

execute at @s if block ~ ~-1 ~-1 water if entity @s[scores={currentTemperature=..-48}] run fill ~6 ~-4 ~6 ~-7 ~-4 ~-7 ice replace water
execute at @s if block ~ ~-1 ~-1 water if entity @s[scores={currentTemperature=..-24}] run fill ~5 ~-3 ~5 ~-6 ~-3 ~-6 ice replace water
execute at @s if block ~ ~-1 ~-1 water if entity @s[scores={currentTemperature=..-12}] run fill ~4 ~-2 ~4 ~-5 ~-2 ~-5 ice replace water
execute at @s if block ~ ~-1 ~-1 water if entity @s[scores={currentTemperature=..-6}] run fill ~3 ~-1 ~3 ~-4 ~-1 ~-4 ice replace water
execute at @s if block ~ ~-1 ~-1 water if entity @s[scores={currentTemperature=..-3}] run fill ~2 ~-1 ~2 ~-3 ~-1 ~-3 ice replace water
execute at @s if block ~ ~-1 ~-1 water if entity @s[scores={currentTemperature=..-1}] run fill ~1 ~-1 ~1 ~-2 ~-1 ~-2 ice replace water
execute at @s if block ~ ~-1 ~-1 water if entity @s[scores={currentTemperature=..0}] run fill ~ ~-1 ~1 ~ ~-1 ~-1 ice replace water

execute at @s if block ~ ~-1 ~ ice if entity @s[scores={currentTemperature=2..}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 water replace ice
execute at @s if block ~ ~-1 ~ ice if entity @s[scores={currentTemperature=3..}] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 water replace ice
execute at @s if block ~ ~-1 ~ ice if entity @s[scores={currentTemperature=6..}] run fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 water replace ice
execute at @s if block ~ ~-1 ~ ice if entity @s[scores={currentTemperature=12..}] run fill ~4 ~-3 ~4 ~-4 ~-3 ~-4 water replace ice
execute at @s if block ~ ~-1 ~ ice if entity @s[scores={currentTemperature=24..}] run fill ~5 ~-4 ~5 ~-5 ~-4 ~-5 water replace ice
execute at @s if block ~ ~-1 ~ ice if entity @s[scores={currentTemperature=48..}] run fill ~6 ~-5 ~6 ~-6 ~-5 ~-6 water replace ice

execute at @s if block ~ ~-1 ~ packed_ice if entity @s[scores={currentTemperature=6..}] run fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 ice replace packed_ice
execute at @s if block ~ ~-1 ~ packed_ice if entity @s[scores={currentTemperature=12..}] run fill ~2 ~-1 ~2 ~-2 ~-3 ~-2 ice replace packed_ice
execute at @s if block ~ ~-1 ~ packed_ice if entity @s[scores={currentTemperature=24..}] run fill ~3 ~-2 ~3 ~-3 ~-4 ~-3 ice replace packed_ice
execute at @s if block ~ ~-1 ~ packed_ice if entity @s[scores={currentTemperature=48..}] run fill ~4 ~-3 ~4 ~-4 ~-5 ~-4 ice replace packed_ice

execute at @s if block ~ ~-1 ~ blue_ice if entity @s[scores={currentTemperature=24..}] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 packed_ice replace blue_ice
execute at @s if block ~ ~-1 ~ blue_ice if entity @s[scores={currentTemperature=48..}] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 packed_ice replace blue_ice

