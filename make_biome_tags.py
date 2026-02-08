import modules.pytools as pytools
import os

os.chdir("C:\\Users\\joshp\\curseforge\\minecraft\\Instances\\1.21.1 test\\saves\\Test\\datapacks_uncompiled\\gstools\\data\\gstools\\tags\\worldgen\\biome")

officialBiomeValues = """badlands 2 0
bamboo_jungle 0.95 0.9
beach 0.8 0.4
birch_forest 0.6 0.6
cherry_grove 0.5 0.8
cold_ocean 0.5 0.5
dark_forest 0.7 0.8
deep_cold_ocean 0.5 0.5
deep_dark 0.8 0.4
deep_frozen_ocean 0 0.5
deep_lukewarm_ocean 0.5 0.5
deep_ocean 0.5 0.5
desert 2 0
dripstone_caves 0.8 0.4
eroded_badlands 2 0
flower_forest 0.7 0.8
forest 0.7 0.8
frozen_ocean 0 0.5
frozen_peaks -0.7 0.9
frozen_river 0 0.5
grove -0.2 0.8
ice_spikes 0 0.5
jagged_peaks -0.7 0.9
jungle 0.95 0.9
lukewarm_ocean 0.5 0.5
lush_caves 0.5 0.5
mangrove_swamp 0.8 0.9
meadow 0.5 0.8
mushroom_fields 0.9 1
ocean 0.5 0.5
old_growth_birch_forest 0.6 0.6
old_growth_pine_taiga 0.3 0.8
old_growth_spruce_taiga 0.25 0.8
pale_garden 0.7 0.8
plains 0.8 0.4
river 0.5 0.5
savanna 2 0
savanna_plateau 2 0
snowy_beach 0.05 0.3
snowy_plains 0 0.5
snowy_slopes -0.3 0.9
snowy_taiga -0.5 0.4
sparse_jungle 0.95 0.8
stony_peaks 1 0.3
stony_shore 0.2 0.3
sunflower_plains 0.8 0.4
swamp 0.8 0.9
taiga 0.25 0.8
warm_ocean 0.5 0.5
windswept_forest 0.2 0.3
windswept_gravelly_hills 0.2 0.3
windswept_hills 0.2 0.3
windswept_savanna 2 0
wooded_badlands 2 0"""

humidityLevels = {
}

temperatureLevels = {
}

for x in officialBiomeValues.split("\n"):
    if float(x.split(" ")[1]) not in temperatureLevels:
        temperatureLevels[float(x.split(" ")[1])] = [x.split(" ")[0]]
    else:
        temperatureLevels[float(x.split(" ")[1])].append(x.split(" ")[0])
    if float(x.split(" ")[2]) not in humidityLevels:
        humidityLevels[float(x.split(" ")[2])] = [x.split(" ")[0]]
    else:
        humidityLevels[float(x.split(" ")[2])].append(x.split(" ")[0])
    

for x in temperatureLevels:
    pytools.IO.saveJson("temperature_" + str(x) + ".json", {
        "values": temperatureLevels[x]
    })

for x in humidityLevels:
    pytools.IO.saveJson("humidity_" + str(x) + ".json", {
        "values": humidityLevels[x]
    })

