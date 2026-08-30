from nbt import nbt
import subprocess
import random
import modules.pytools as pytools
import time
import copy
import traceback
import json
import math

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

def getBlockDecayChain(blockName, decayScript, threshold):
    
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
    
    return blockChain

blockBlacklist = [
    "minecraft:trial_spawner",
    "minecraft:vault"
]

beforeVersionBlocks = {
    "minecraft:pale_moss_block": "1.21.4"
}

def isVersionGtrThanEqlToOther(version, versionOther):
    
    if version == versionOther:
        return True
    
    version = version.split(".")
    versionOther = versionOther.split(".")
    if float(version[0]) > float(versionOther[0]):
        return True
    elif (float(version[0]) == float(versionOther[0])) and (len(version) > 1) and (len(versionOther) > 1) and (float(version[1]) > float(versionOther[1])):
        return True
    elif (float(version[0]) == float(versionOther[0])) and (len(version) > 1) and (len(versionOther) > 1) and (float(version[1]) == float(versionOther[1])) and (len(version) > 2) and (len(versionOther) > 2) and (float(version[2]) > float(versionOther[2])):
        return True
    
    return False

def walkJson(jsonData, weightThreshold=1, version="1.19.4"):
    typef = False
    
    if type(jsonData) == dict:
        for key in jsonData:
            if type(jsonData[key]) == dict:
                jsonData[key] = walkJson(jsonData[key])
            elif type(jsonData[key]) == list:
                jsonData[key] = walkJson(jsonData[key])

        if "type" in jsonData:
            if jsonData["type"] == "minecraft:simple_state_provider":
                if "state" in jsonData:
                    jsonData["type"] = "minecraft:weighted_state_provider"
                    _state = jsonData["state"]
                    _chain = getBlockDecayChain(_state["Name"], "decaychain.ds", weightThreshold)
                    
                    _i = 0
                    while _i < len(_chain):
                        if _chain[_i] in beforeVersionBlocks:
                            if not isVersionGtrThanEqlToOther(version, beforeVersionBlocks[_chain[_i]]):
                                _chain.pop(_i)
                                _i = _i - 1
                                
                        _i = _i + 1
                    
                    jsonData.pop("state")
                    jsonData["entries"] = []
                    _i = len(_chain) - 1
                    _weightedThreshold = weightThreshold
                    weightedSum = 0
                    weightModif = 0
                    for _block in _chain:
                        
                        _weight = int(math.ceil((((2147483646 / len(_chain)) * ((((len(_chain) / 100) * _weightedThreshold) ** (len(_chain) - _i - 1)) * 100)) / ((2147483646 / len(_chain)) * ((((len(_chain) / 100) * _weightedThreshold) ** (len(_chain) - 1))) * 100))))

                        if (weightedSum + int(math.ceil((_weight / (10 ** weightModif))))) > 2147483646:
                            while (weightedSum + (_weight / (10 ** weightModif))) > 2147483646:
                                print(weightedSum, (_weight / (10 ** weightModif)))
                                weightModif = weightModif + 1
                            if weightModif != 0:
                                weightModif = weightModif + 1
                        
                        weightedSum = weightedSum + int(math.ceil((_weight / (10 ** weightModif))))
                        
                        jsonData["entries"].append({
                            "weight": int(math.ceil((_weight / (10 ** weightModif)))),
                            "data": copy.deepcopy(_state)
                        })
                        
                        jsonData["entries"][-1]["data"]["Name"] = _block
                        
                        if jsonData["entries"][-1]["weight"] > 2147483646:
                            jsonData["entries"][-1]["weight"] = 2147483646
                        
                        if weightedSum > 2147483646:
                            jsonData["entries"][-1]["weight"] = 1
                        
                        _i = _i - 1

    else:
        i = 0
        while i < len(jsonData):
            if type(jsonData[i]) == dict:
                jsonData[i] = walkJson(jsonData[i])
            elif type(jsonData[i]) == list:
                jsonData[i] = walkJson(jsonData[i])
                
            i = i + 1
            
    return jsonData

def processFeatureFile(file, decayThreshold=1.5, version="1.19.4"):
    
    featureData = pytools.IO.getJson(file)
    
    jsonData = walkJson(featureData, decayThreshold, version=version)
        
    return jsonData
    
def processStructure(path):
    files = subprocess.getoutput("dir \"" + path + "\\*.json\" /s /b").split("\n")
    
    for file in files:
        if ("_air_" not in file) and ("air_" not in file):
            print(" ---> " + file)
            try:
                
                outJson = processFeatureFile(file)
                pytools.IO.saveFile(file, json.dumps(outJson, indent=4))
            except:
                print(traceback.format_exc())