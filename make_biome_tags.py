import modules.pytools as pytools
import os

os.chdir("C:\\Users\\joshp\\curseforge\\minecraft\\Instances\\1.21.1 test\\saves\\Test\\datapacks_uncompiled\\gstools\\data\\gstools\\tags\\biome")

humidityLevels = {
    0.9: ['mangrove_swamp', 'jungle', 'bamboo_jungle', 'frozen_peaks', 'jagged_peaks', 'snowy_slopes'],
    0.3: ['windswept_gravelly_hills', 'windswept_forest', 'windswept_hills', 'stony_shore', 'stony_peaks', 'snowy_beach'],
    0.5: ['warm_ocean', 'lukewarm_ocean', 'deep_lukewarm_ocean', 'ocean', 'deep_ocean', 'cold_ocean', 'deep_cold_ocean', 'river', 'frozen_river', 'frozen_ocean', 'snowy_plains'],
    1.0: ['mushroom_fields'],
    0.8: ['sparse_jungle', 'forest', 'flower_forest', 'grove', 'old_growth_pine_taiga', 'old_growth_spruce_taiga', 'taiga', 'dark_forest', 'pale_garden'],
    0.4: ['snowy_taiga', 'plains', 'beach', 'sunflower_plains', 'deep_dark'],
    0.6: ['birch_forest', 'old_growth_birch_forest'],
    0.0: ['badlands', 'wooded_badlands', 'eroded_badlands', 'desert', 'windswept_savanna']
}

temperatureLevels = {
    0.8: ['mangrove_swamp', 'plains', 'beach', 'sunflower_plains', 'deep_dark'],
    0.2: ['windswept_gravelly_hills', 'windswept_forest', 'windswept_hills', 'stony_shore'],
    0.5: ['warm_ocean', 'lukewarm_ocean', 'deep_lukewarm_ocean', 'ocean', 'deep_ocean', 'cold_ocean', 'deep_cold_ocean', 'river'],
    1.0: ['stony_peaks'],
    0.9: ['mushroom_fields'],
    0.95: ['jungle', 'bamboo_jungle', 'sparse_jungle'],
    0.7: ['forest', 'flower_forest', 'dark_forest', 'pale_garden'],
    0.0: ['frozen_river', 'frozen_ocean', 'snowy_plains'],
    -0.2: ['grove'],
    -0.7: ['frozen_peaks', 'jagged_peaks'],
    -0.3: ['snowy_slopes'],
    -0.5: ['snowy_taiga'],
    0.05: ['snowy_beach'],
    0.3: ['old_growth_pine_taiga'],
    0.25: ['old_growth_spruce_taiga', 'taiga'],
    0.6: ['birch_forest', 'old_growth_birch_forest'],
    2.0: ['badlands', 'wooded_badlands', 'eroded_badlands', 'desert', 'windswept_savanna']
}

for x in temperatureLevels:
    pytools.IO.saveJson("temperature_" + str(x) + ".json", {
        "values": temperatureLevels[x]
    })

for x in humidityLevels:
    pytools.IO.saveJson("humidity_" + str(x) + ".json", {
        "values": humidityLevels[x]
    })

