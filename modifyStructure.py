from nbt import nbt
import subprocess
import random
import modules.pytools as pytools
import time
import copy
import traceback

def readStructurePallete(path):
    _palette = []
    palette = []
    files = subprocess.getoutput("dir \"" + path + "\\*.nbt\" /s /b").split("\n")
    for file in files:
        nbtData = nbt.NBTFile(file, 'rb')
        for block in nbtData["palette"]:
            if block.pretty_tree() not in _palette:
                print("    --> " + str(block["Name"].value))
                palette.append(block)
                _palette.append(block.pretty_tree())
    
    return palette

def getGlobalBlock(name):
    files = subprocess.getoutput("dir \"decay.config\\*.json\" /s /b").split("\n")
    
    # print(files)
    
    namespace = ""
    block = name
    if ":" in name:
        namespace = name.split(":")[0]
        block = name.split(":")[1]
    _block = block.split("_")
    
    replaceables = {}
    
    for file in files:
        # print(pytools.IO.getJson(file)["list"])
        i = 0
        while i < len(_block):
            if _block[i] in pytools.IO.getJson(file)["list"]:
                replaceables["&lt;" + file.split(".")[-2].split("\\")[-1] + "&gt;"] = _block[i]
                _block[i] = "&lt;" + file.split(".")[-2].split("\\")[-1] + "&gt;"
            
            if (len(_block) - 1) > i:
                if (_block[i] + "_" + _block[i + 1]) in pytools.IO.getJson(file)["list"]:
                    replaceables["&lt;" + file.split(".")[-2].split("\\")[-1] + "&gt;"] = _block[i] + "_" + _block[i + 1]
                    _block[i] = "&lt;" + file.split(".")[-2].split("\\")[-1] + "&gt;"
                    _block.pop(i + 1)
            
            if (len(_block) - 2) > i:
                if (_block[i] + "_" + _block[i + 1] + "_" + _block[i + 2]) in pytools.IO.getJson(file)["list"]:
                    replaceables["&lt;" + file.split(".")[-2].split("\\")[-1] + "&gt;"] = _block[i] + "_" + _block[i + 1] + "_" + _block[i + 2]
                    _block[i] = "&lt;" + file.split(".")[-2].split("\\")[-1] + "&gt;"
                    _block.pop(i + 1)
                    _block.pop(i + 2)
            
            if (len(_block) - 3) > i:
                if (_block[i] + "_" + _block[i + 1] + "_" + _block[i + 2] + "_" + _block[i + 3]) in pytools.IO.getJson(file)["list"]:
                    replaceables["&lt;" + file.split(".")[-2].split("\\")[-1] + "&gt;"] = _block[i] + "_" + _block[i + 1] + "_" + _block[i + 2] + "_" + _block[i + 3]
                    _block[i] = "&lt;" + file.split(".")[-2].split("\\")[-1] + "&gt;"
                    _block.pop(i + 1)
                    _block.pop(i + 2)
                    _block.pop(i + 3)
                
            i = i + 1

    return [namespace + (":" * (len(namespace) > 0)) + "_".join(_block), replaceables]

dynamicDirtDecay = {
    "minecraft:stone": "minecraft:cobblestone",
    "minecraft:cobblestone": "minecraft:mossy_cobblestone",
    "minecraft:mossy_cobblestone": "minecraft:gravel",
    "minecraft:gravel": "minecraft:sand",
    "minecraft:dirt_path": "minecraft:farmland",
    "minecraft:red_sand": "minecraft:sand",
    "minecraft:coarse_dirt": "minecraft:rooted_dirt",
    "minecraft:packed_mud": "minecraft:coarse_dirt",
    "minecraft:andesite": "minecraft:gravel",
    "minecraft:diorite": "minecraft:andesite",
    "minecraft:granite": "minecraft:diortite",
    "minecraft:cobbled_deepslate": "minecraft:stone",
    "minecraft:deepslate": "minecraft:cobbled_deepslate",
    "minecraft:tuff": "minecraft:deepslate",
    "minecraft:dripstone_block": "minecraft:granite",
    "minecraft:stone_stairs": "minecraft:cobblestone_stairs",
    "minecraft:cobblestone_stairs": "minecraft:mossy_cobblestone_stairs",
    "minecraft:mossy_cobblestone_stairs": "minecraft:gravel",
    "minecraft:andesite_stairs": "minecraft:gravel",
    "minecraft:diorite_stairs": "minecraft:andesite_stairs",
    "minecraft:granite_stairs": "minecraft:diortite_stairs",
    "minecraft:cobbled_deepslate_stairs": "minecraft:stone_stairs",
    "minecraft:deepslate_stairs": "minecraft:cobbled_deepslate_stairs",
    "minecraft:tuff_stairs": "minecraft:deepslate_stairs",
    "minecraft:dripstone_block_stairs": "minecraft:granite_stairs",
    "minecraft:stone_slab": "minecraft:cobblestone_slab",
    "minecraft:cobblestone_slab": "minecraft:mossy_cobblestone_slab",
    "minecraft:mossy_cobblestone_slab": "minecraft:gravel",
    "minecraft:andesite_slab": "minecraft:gravel",
    "minecraft:diorite_slab": "minecraft:andesite_slab",
    "minecraft:granite_slab": "minecraft:diortite_slab",
    "minecraft:cobbled_deepslate_slab": "minecraft:stone_slab",
    "minecraft:deepslate_slab": "minecraft:cobbled_deepslate_slab",
    "minecraft:tuff_slab": "minecraft:deepslate_slab",
    "minecraft:dripstone_block_slab": "minecraft:granite_slab",
    "minecraft:stone_wall": "minecraft:cobblestone_wall",
    "minecraft:cobblestone_wall": "minecraft:mossy_cobblestone_wall",
    "minecraft:mossy_cobblestone_wall": "minecraft:gravel",
    "minecraft:andesite_wall": "minecraft:gravel",
    "minecraft:diorite_wall": "minecraft:andesite_wall",
    "minecraft:granite_wall": "minecraft:diortite_wall",
    "minecraft:cobbled_deepslate_wall": "minecraft:stone_wall",
    "minecraft:deepslate_wall": "minecraft:cobbled_deepslate_wall",
    "minecraft:tuff_wall": "minecraft:deepslate_wall",
    "minecraft:dripstone_block_wall": "minecraft:granite_wall"
}

class globals:
    cache = {}
    
    scriptCache = {}
    
def decayScriptHasBlock(blockName, decayScript):
    
    ogBlockName = blockName
    if blockName not in globals.scriptCache:
        decayScript = pytools.IO.getFile(decayScript)
                
        if "minecraft:" in blockName:
            _blockName = blockName.split(":")[1]
        else:
            _blockName = blockName
        
        if ("[\"" + _blockName + "\"]") in decayScript:
            decayScript = decayScript.replace("[\"" + _blockName + "\"]", "[\"" + blockName + "\"]")
            
        customBlockName = getGlobalBlock(blockName)[0]
        
        if "minecraft:" in customBlockName:
            _customBlockName = customBlockName.split(":")[1]
        else:
            _customBlockName = customBlockName
        
        if ("[\"" + _customBlockName + "\"]") in decayScript:
            decayScript = decayScript.replace("[\"" + _customBlockName + "\"]", "[\"" + customBlockName + "\"]")
        
        blockChain = [blockName]
            
        chained = False
        
        customBlockName = getGlobalBlock(blockChain[-1])[0]
        
        if ("[\"" + customBlockName + "\"]" in decayScript) or (customBlockName in dynamicDirtDecay):
            chained = True
        
        globals.scriptCache[ogBlockName] = chained
        
    return globals.scriptCache[ogBlockName]

def randomlyDecayBlock(blockName, decayScript, threshold):
    
    if blockName not in globals.cache:
        decayScript = pytools.IO.getFile(decayScript)
        
        if "minecraft:" in blockName:
            _blockName = blockName.split(":")[1]
        else:
            _blockName = blockName
        
        if ("[\"" + _blockName + "\"]") in decayScript:
            decayScript = decayScript.replace("[\"" + _blockName + "\"]", "[\"" + blockName + "\"]")
            
        customBlockName = getGlobalBlock(blockName)[0]
        replaceables = getGlobalBlock(blockName)[1]
        
        if "minecraft:" in customBlockName:
            _customBlockName = customBlockName.split(":")[1]
        else:
            _customBlockName = customBlockName
        
        if ("[\"" + _customBlockName + "\"]") in decayScript:
            decayScript = decayScript.replace("[\"" + _customBlockName + "\"]", "[\"" + customBlockName + "\"]")
        
        blockChain = [blockName]
        chained = True
        
        chainCount = 0
        while chained and (chainCount < 50):
            
            chained = False
            
            customBlockName = getGlobalBlock(blockChain[-1])[0]
            replaceables = getGlobalBlock(blockChain[-1])[1]
            
            if ("[\"" + customBlockName + "\"]" in decayScript) or (customBlockName in dynamicDirtDecay):
                
                blockVariable = "n" + decayScript.split("[\"" + customBlockName + "\"]")[0].split("n")[-1]
                
                if (blockVariable + " --> " in decayScript):
                    toVariable = decayScript.split(blockVariable + " --> ")[1].split("[")[0].split(" ")[0].split("\n")[0]
                    toName = decayScript.split(toVariable + "[\"")[1].split("\"]")[0]
                    if ("#" not in toName):
                        if ":" not in toName:
                            if ("[\"" + toName + "\"]") in decayScript:
                                decayScript = decayScript.replace("[\"" + toName + "\"]", "[\"" + "minecraft:" + toName + "\"]")
                            
                            toName = "minecraft:" + toName
                            
                        for aReplaceable in replaceables:
                            toName = toName.replace(aReplaceable, replaceables[aReplaceable])
                        
                        blockChain.append(toName)
                        
                        chained = True
                
                
                if (not chained) and ((blockVariable + "[\"" + customBlockName + "\"]" + " --> ") in decayScript):
                        toVariable = decayScript.split(blockVariable + "[\"" + customBlockName + "\"]" + " --> ")[1].split("[")[0].split(" ")[0].split("\n")[0]
                        toName = decayScript.split(toVariable + "[\"")[1].split("\"]")[0]
                        if ("#" not in toName):
                            if ":" not in toName:
                                if ("[\"" + toName + "\"]") in decayScript:
                                    decayScript = decayScript.replace("[\"" + toName + "\"]", "[\"" + "minecraft:" + toName + "\"]")
                                toName = "minecraft:" + toName
                            
                            for aReplaceable in replaceables:
                                toName = toName.replace(aReplaceable, replaceables[aReplaceable])
                            
                            blockChain.append(toName)
                        
                            chained = True
                
                if (not chained) and (customBlockName in dynamicDirtDecay):
                    blockChain.append(dynamicDirtDecay[customBlockName])
                    chained = True
        
            chainCount = chainCount + 1
        
        globals.cache[blockName] = blockChain
    
    blockChain = copy.deepcopy(globals.cache[blockName])
    
    while ((random.random() * 100) < threshold) and (len(blockChain) > 1):
        blockChain.pop(0)
                        
    return blockChain[0]

def paletteHasBlock(block, palette, oldBlock=False):
    for _block in palette:
        if _block["Name"].value == block:
            if (not oldBlock) or (("Properties" in oldBlock) and ("Properties" in _block) and (oldBlock["Properties"].pretty_tree() == _block["Properties"].pretty_tree())) or (("Properties" not in oldBlock) and ("Properties" not in _block)):
                return True
        
    return False

def getIndexPalette(block, palette, oldBlock=False):
    i = 0
    for _block in palette:
        if _block["Name"].value == block:
            if (not oldBlock) or (("Properties" in oldBlock) and ("Properties" in _block) and (oldBlock["Properties"].pretty_tree() == _block["Properties"].pretty_tree())) or (("Properties" not in oldBlock) and ("Properties" not in _block)):
                return i
        
        i = i + 1
            
    return -1

def getStructurePalette(file):
    
    nbtData = nbt.NBTFile(file, 'rb')
    
    palette = []
    for block in nbtData["palette"]:
        palette.append(block)
        
    return palette

def getStructureVolume(file):
    
    nbtData = nbt.NBTFile(file, 'rb')
        
    return len(nbtData["blocks"])

blockBlacklist = [
    "minecraft:trial_spawner",
    "minecraft:vault"
]

def processStructureFile(file, decayThreshold=45):
    
    nbtData = nbt.NBTFile(file, 'rb')
    
    palette = getStructurePalette(file)
    
    lastMessage = -1
    
    i = 0
    while i < len(nbtData["blocks"]):
        
        if palette[nbtData["blocks"][i]["state"].value]["Name"].value in blockBlacklist:
            return False
        
        if (palette[nbtData["blocks"][i]["state"].value]["Name"].value != "minecraft:air") and ((palette[nbtData["blocks"][i]["state"].value]["Name"].value != "minecraft:jigsaw")) and decayScriptHasBlock(palette[nbtData["blocks"][i]["state"].value]["Name"].value, "decaychain.ds"):
            newBlockName = randomlyDecayBlock(palette[nbtData["blocks"][i]["state"].value]["Name"].value, "decaychain.ds", (decayThreshold + nbtData["blocks"][i]["pos"][1].value) * (1 + (4 * ("zombie" in file))) * (1 + (1 * ("overgrown" in file))))
            
            # print(palette[nbtData["blocks"][i]["state"].value]["Name"].value + " --> " + newBlockName)
            
            if not paletteHasBlock(newBlockName, palette, oldBlock=palette[nbtData["blocks"][i]["state"].value]):
                nbtData["palette"].append(copy.deepcopy(palette[nbtData["blocks"][i]["state"].value]))
                nbtData["palette"][-1]["Name"].value = newBlockName
                palette.append(nbtData["palette"][-1])
            
            newBlock = getIndexPalette(newBlockName, palette, oldBlock=palette[nbtData["blocks"][i]["state"].value])
            
            if "Properties" in palette[newBlock]:
                if "lit" in palette[newBlock]["Properties"]:
                    if palette[newBlock]["Properties"]["lit"].value == "true":
            
                        palette.append(copy.deepcopy(palette[newBlock]))
                        palette[-1]["Properties"]["lit"].value = str(random.random() < 0.5).lower()
                        newBlock = len(palette) - 1
                        nbtData["palette"].append(palette[-1])
                
            nbtData["blocks"][i]["state"].value = newBlock
            
            # print(palette[nbtData["blocks"][i]["state"].value]["Name"].value)
            
        if int(time.time()) != lastMessage:
                    
            print("   > " + str((i / len(nbtData["blocks"])) * 100) + "% Completed.")
            
            lastMessage = int(time.time())
            
        i = i + 1
        
    return nbtData
    
def processStructure(path):
    files = subprocess.getoutput("dir \"" + path + "\\*.nbt\" /s /b").split("\n")
    
    maxPaletteSize = 0
    maxPaletteSizeFile = ""
    for file in files:
        if ("_air_" not in file) and ("air_" not in file):
            try:
                volume = getStructureVolume(file)
                palette = getStructurePalette(file)
                if (volume / len(palette)) > maxPaletteSize:
                    maxPaletteSize = (volume / len(palette))
                    maxPaletteSizeFile = file
                    
                print(volume, len(palette), (volume / len(palette)), file.split("\\")[-1], [maxPaletteSize, maxPaletteSizeFile.split('\\')[-1]])
            except:
                print(traceback.format_exc())
    
    print("Max Palette Size: " + str(maxPaletteSize))
    
    for file in files:
        if ("_air_" not in file) and ("air_" not in file):
            print(" ---> " + file)
            try:
                volume = getStructureVolume(file)
                palette = getStructurePalette(file)
                
                decayThreshold = ((volume / len(palette)) / maxPaletteSize) * 90
                
                print("    --> Threshold: " + str(decayThreshold))
                
                outNbt = processStructureFile(file, decayThreshold=decayThreshold)
                if outNbt:
                    outNbt.write_file(file)
            except:
                print(traceback.format_exc())