import modules.pytools as pytools
import os

class util:
    class raw:
        def getCommandType(line):
            if "-->" in line:
                return 1
            elif "@" in line:
                return 2
            elif "[" in line:
                return 3
            return 0

        def cleanBlockId(rawId):
            return rawId.replace("\"", "").replace("&lt;", "<").replace("&gt;", ">")

        def extendVariableMap(variableMap, id, rawId):
            cleanedBlockId = util.raw.cleanBlockId(rawId)
            macroIds = []
            for macroName in os.listdir(".\\decay.config"):
                if "<" + macroName.split(".json")[0] + ">" in cleanedBlockId:
                    for macroItem in pytools.IO.getJson(".\\decay.config\\" + macroName)["list"]:
                        macroIds.append(cleanedBlockId.replace("<" + macroName.split(".json")[0] + ">", macroItem))
            
            if not len(macroIds):
                macroIds.append(cleanedBlockId)
            
            variableMap[id] = macroIds
            
            return variableMap
        
    class command:
        def generateFillCommand(fromBlock, toBlock):
            
            out = []
            
            if ("_stairs" in fromBlock) and ("_stairs" in toBlock):
                facing = ["east", "west", "north", "south"]
                half = ["top", "bottom"]
                shape = ["inner_left", "inner_right", "outer_left", "outer_right", "straight"]
                waterlogged = ["true", "false"]
                index = [0, 0, 0, 0]
                
                while index[0] < len(facing):
                    index[1] = 0
                    while index[1] < len(half):
                        index[2] = 0
                        while index[2] < len(shape):
                            index[3] = 0
                            while index[3] < len(waterlogged):
                                out.append("execute if block ~ ~-1 ~ " + fromBlock + "[facing=" + facing[index[0]] + "] if block ~ ~-1 ~ " + fromBlock + "[half=" + half[index[1]] + "] if block ~ ~-1 ~ " + fromBlock + "[shape=" + shape[index[2]] + "] if block ~ ~-1 ~ " + fromBlock + "[waterlogged=" + waterlogged[index[3]] + "] run fill ~ ~-1 ~ ~ ~-1 ~ " + toBlock + "[facing=" + facing[index[0]] + ",half=" + half[index[1]] + ",shape=" + shape[index[2]] + ",waterlogged=" + waterlogged[index[3]] + "] replace " + fromBlock)
                                index[3] = index[3] + 1
                            
                            index[2] = index[2] + 1
                        
                        index[1] = index[1] + 1
                    
                    index[0] = index[0] + 1
                
            elif ("_slab" in fromBlock) and ("_slab" in toBlock):
                typef = ["top", "bottom", "double"]
                waterlogged = ["true", "false"]
                index = [0, 0]
                
                while index[0] < len(typef):
                    index[1] = 0
                    while index[1] < len(waterlogged):
                        out.append("execute if block ~ ~-1 ~ " + fromBlock + "[type=" + typef[index[0]] + "] if block ~ ~-1 ~ " + fromBlock + "[waterlogged=" + waterlogged[index[1]] + "] run fill ~ ~-1 ~ ~ ~-1 ~ " + toBlock + "[type=" + typef[index[0]] + ",waterlogged=" + waterlogged[index[1]] + "] replace " + fromBlock)
                        
                        index[1] = index[1] + 1
                    
                    index[0] = index[0] + 1
            
            elif (("_log" in fromBlock) and ("_log" in toBlock)) or (("_stem" in fromBlock) and ("_stem" in toBlock)) or (("_pillar" in fromBlock) and ("_pillar" in toBlock)) or (("basalt" in fromBlock) and ("basalt" in toBlock) and ("smooth_" not in toBlock)):
                axis = ["x", "y", "z"]
                index = [0]
                
                while index[0] < len(axis):
                    out.append("execute if block ~ ~-1 ~ " + fromBlock + "[axis=" + axis[index[0]] + "] run fill ~ ~-1 ~ ~ ~-1 ~ " + toBlock + "[axis=" + axis[index[0]] + "] replace " + fromBlock)

                    index[0] = index[0] + 1
            
            elif (("_pane" in fromBlock) and ("_pane" in toBlock)) or (("_fence" in fromBlock) and ("_fence" in toBlock)) or (("_bars" in fromBlock) and ("_bars" in toBlock)):
                east = ["true", "false"]
                north = ["true", "false"]
                south = ["true", "false"]
                west = ["true", "false"]
                waterlogged = ["true", "false"]
                index = [0, 0, 0, 0, 0]
                
                while index[0] < len(east):
                    index[1] = 0
                    while index[1] < len(north):
                        index[2] = 0
                        while index[2] < len(south):
                            index[3] = 0
                            while index[3] < len(west):
                                index[4] = 0
                                while index[4] < len(waterlogged):
                                    out.append("execute if block ~ ~-1 ~ " + fromBlock + "[east=" + east[index[0]] + "] if block ~ ~-1 ~ " + fromBlock + "[north=" + north[index[1]] + "] if block ~ ~-1 ~ " + fromBlock + "[south=" + south[index[2]] + "] if block ~ ~-1 ~ " + fromBlock + "[west=" + west[index[3]] + "] if block ~ ~-1 ~ " + fromBlock + "[waterlogged=" + waterlogged[index[4]] + "] run fill ~ ~-1 ~ ~ ~-1 ~ " + toBlock + "[east=" + east[index[0]] + ",north=" + north[index[1]] + ",south=" + south[index[2]] + ",west=" + west[index[3]] + ",waterlogged=" + waterlogged[index[4]] + "] replace " + fromBlock)
                                    index[4] = index[4] + 1
                                    
                                index[3] = index[3] + 1
                            
                            index[2] = index[2] + 1
                        
                        index[1] = index[1] + 1
                    
                    index[0] = index[0] + 1

            elif (("_wall" in fromBlock) and ("_wall" in toBlock)):
                east = ["true", "false"]
                north = ["true", "false"]
                south = ["true", "false"]
                west = ["true", "false"]
                up = ["true", "false"]
                waterlogged = ["true", "false"]
                index = [0, 0, 0, 0, 0, 0]
                
                while index[0] < len(east):
                    index[1] = 0
                    while index[1] < len(north):
                        index[2] = 0
                        while index[2] < len(south):
                            index[3] = 0
                            while index[3] < len(west):
                                index[4] = 0
                                while index[4] < len(up):
                                    index[5] = 0
                                    while index[5] < len(waterlogged):
                                        out.append("execute if block ~ ~-1 ~ " + fromBlock + "[east=" + east[index[0]] + "] if block ~ ~-1 ~ " + fromBlock + "[north=" + north[index[1]] + "] if block ~ ~-1 ~ " + fromBlock + "[south=" + south[index[2]] + "] if block ~ ~-1 ~ " + fromBlock + "[west=" + west[index[3]] + "] if block ~ ~-1 ~ " + fromBlock + "[up=" + up[index[4]] + "] if block ~ ~-1 ~ " + fromBlock + "[waterlogged=" + waterlogged[index[5]] + "] run fill ~ ~-1 ~ ~ ~-1 ~ " + toBlock + "[east=" + east[index[0]] + ",north=" + north[index[1]] + ",south=" + south[index[2]] + ",west=" + west[index[3]] + ",up=" + up[index[4]] + ",waterlogged=" + waterlogged[index[5]] + "] replace " + fromBlock)
                                        index[5] = index[5] + 1
                                        
                                    index[4] = index[4] + 1
                                    
                                index[3] = index[3] + 1
                            
                            index[2] = index[2] + 1
                        
                        index[1] = index[1] + 1
                    
                    index[0] = index[0] + 1
            else:
                out.append("fill ~ ~-1 ~ ~ ~-1 ~ " + toBlock + " replace " + fromBlock)
            
            return out

def getVariableMap():
    rawData = pytools.IO.getFile("decaychain.ds")
    variableMap = {}
    
    for line in rawData.split("\n"):
        if line[0:4] == "    ":
            if util.raw.getCommandType(line) == 3:
                if line.split("    ")[1].split("[")[0] not in variableMap:
                    variableMap = util.raw.extendVariableMap(variableMap, line.split("    ")[1].split("[")[0], line.split("    ")[1].split("[")[1].split("]")[0])
            elif util.raw.getCommandType(line) == 1:
                for id in line.replace(" ", "").split("-->"):
                    if "[" in id:
                        variableMap = util.raw.extendVariableMap(variableMap, id.split("[")[0], id.split("[")[1].split("]")[0])
    
    return variableMap
 
def getDecayChain():
    rawData = pytools.IO.getFile("decaychain.ds")
    decayChainDict = {}
    
    midChainIds = []
    for line in rawData.split("\n"):
        if util.raw.getCommandType(line) == 1:
            midChainIds.append(line.replace(" ", "").split("-->")[0].split("[")[0])

    hasAdded = True
    while hasAdded:
        hasAdded = False
        for line in rawData.split("\n"):
            if line[0:4] == "    ":
                if util.raw.getCommandType(line) == 1:                    
                    idSet = line.replace(" ", "").split("-->")
                    idSet[0] = idSet[0].split("[")[0]
                    idSet[1] = idSet[1].split("[")[0]
                    
                    if not idSet[1] in midChainIds:
                        if not idSet[1] in decayChainDict:
                            decayChainDict[idSet[1]] = {}
                    
                    def fleshOutDecayChainDict(theDecayChainDict, hasAdded, idEnd, idStart):
                        for anId in theDecayChainDict:
                            if anId == idStart:
                                if not idEnd in theDecayChainDict[anId]:
                                    theDecayChainDict[anId][idEnd] = {}
                                    hasAdded = True
                            elif len(theDecayChainDict[anId]):
                                theDecayChainDict[anId], hasAdded = fleshOutDecayChainDict(theDecayChainDict[anId], hasAdded, idEnd, idStart)
                        
                        return theDecayChainDict, hasAdded
                    
                    
                    decayChainDict, hasAdded = fleshOutDecayChainDict(decayChainDict, hasAdded, idSet[0], idSet[1])
                        
    return decayChainDict

def getDecaySteps(decayChainDict):
    layerData = {}
    aLevel = 0
    
    def getLayer(level, data, aDict):
        
        if level not in data:
            data[level] = []
        
        for x in aDict:
            for n in aDict[x]:
                data[level].append([n, x])
            level, data = getLayer(level + 1, data, aDict[x])
        
        return level - 1, data

    aLevel, layerData = getLayer(aLevel, layerData, decayChainDict)
    
    return layerData

def printDecaySteps(decayChainDict, variableMap):
    decaySteps = getDecaySteps(decayChainDict)
    for layer in decaySteps:
        print("[hearder] Step " + str(layer) + ": ")
        for step in decaySteps[layer]:
            i = 0
            while i < len(variableMap[step[0]]):
                if i < len(variableMap[step[1]]):
                    print("    " + variableMap[step[0]][i] + " --> " + variableMap[step[1]][i])
                else:
                    print("    " + variableMap[step[0]][i] + " --> " + variableMap[step[1]][-1])
                i = i + 1
                
def makeFolderStructure(decayChainDict, variableMap):
    os.system("del .\\datapack_compile_temp\\* /f /s /q")
    os.system("rmdir \".\\datapack_compile_temp\" /s /q")
    os.system("mkdir .\\datapack_compile_temp")
    
    decaySteps = getDecaySteps(decayChainDict)
    
    for layer in decaySteps:
        os.system("mkdir \".\\datapack_compile_temp\\layer_" + str(layer) + "\"")
    
    for layer in decaySteps:
        for step in decaySteps[layer]:
            os.system("mkdir \".\\datapack_compile_temp\\layer_" + str(layer) + "\\" + step[0] + '\"')

def createFunctionFiles(decayChainDict, variableMap):
    
    decaySteps = getDecaySteps(decayChainDict)
    
    functionFiles = {}
    for layer in decaySteps:
        functionFiles[layer] = {}
        
    for layer in decaySteps:
        for step in decaySteps[layer]:
            
            if step[0] not in functionFiles[layer]:
                functionFiles[layer][step[0]] = {}
            
            i = 0
            while i < len(variableMap[step[0]]):
                if variableMap[step[0]][i] not in functionFiles[layer][step[0]]:
                    functionFiles[layer][step[0]][variableMap[step[0]][i]] = []
                
                if i < len(variableMap[step[1]]):
                    functionFiles[layer][step[0]][variableMap[step[0]][i]].extend(util.command.generateFillCommand(variableMap[step[0]][i], variableMap[step[1]][i]))
                else:
                    functionFiles[layer][step[0]][variableMap[step[0]][i]].extend(util.command.generateFillCommand(variableMap[step[0]][i], variableMap[step[1]][-1]))
                i = i + 1

    decayMain = []
    for layer in functionFiles:
        layerMain = []
        for step in functionFiles[layer]:
            for block in functionFiles[layer][step]:
                pytools.IO.saveFile(".\\datapack_compile_temp\\layer_" + str(layer) + "\\" + step + "\\" + block.replace("#", "tag").replace(":", "_") + ".mcfunction", "# Define\n\n# Main\n" + "\n".join(functionFiles[layer][step][block]))
                layerMain.append("function blockdecay:decay/layer_" + str(layer) + "/" + step + "/" + block.replace("#", "tag").replace(":", "_"))
        
        pytools.IO.saveFile(".\\datapack_compile_temp\\layer_" + str(layer) + "\\main.mcfunction", "# Define\n\n# Main\n" + "\n".join(layerMain))
        decayMain.append("function blockdecay:decay/layer_" + str(layer) + "/main")
    
    pytools.IO.saveFile(".\\datapack_compile_temp\\at.mcfunction", "# Define\n\n# Main\n" + "\n".join(decayMain))

    
    return functionFiles



def main():
    aDecayChain = getDecayChain()
    aVariableDict = getVariableMap()
    
    makeFolderStructure(aDecayChain, aVariableDict)
    createFunctionFiles(aDecayChain, aVariableDict)

    os.system("robocopy .\\datapack_compile_temp .\\block_decay\\data\\blockdecay\\function\\decay * /mir")
    
    os.system("del .\\datapack_compile_temp\\* /f /s /q")
    os.system("rmdir \".\\datapack_compile_temp\" /s /q")
    os.system("mkdir .\\datapack_compile_temp")
    
        