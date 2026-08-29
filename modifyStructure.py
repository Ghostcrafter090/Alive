from nbt import nbt
import subprocess
import random
import modules.pytools as pytools

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
                
            i = i + 1

    return [namespace + (":" * (len(namespace) > 0)) + "_".join(_block), replaceables]

basic = {
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
}  

def randomlyDecayBlock(blockName, decayScript, threshold):
    
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
        
    print(_blockName)
    
    blockChain = [blockName]
    chained = True
    
    while chained:
        
        chained = False
        
        customBlockName = getGlobalBlock(blockChain[-1])[0]
        replaceables = getGlobalBlock(blockChain[-1])[1]
        
        if "[\"" + customBlockName + "\"]" in decayScript:
            print(blockChain[-1])
            
            print(customBlockName)
            
            blockVariable = "n" + decayScript.split("[\"" + customBlockName + "\"]")[0].split("n")[-1]
            
            print(blockVariable)
            
            if (blockVariable + " --> " in decayScript):
                print("gf")
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
            
            
            if ((blockVariable + "[\"" + customBlockName + "\"]" + " --> ") in decayScript):
                    print("gg")
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
                        
    return blockChain
            
            
    
