import modules.pytools as pytools
import os
import traceback
import time

class globals:
    wordDatabase = {}
    isSetup = False

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

        def extendVariableMap(variableMap, id, rawId, customMap=False):
            cleanedBlockId = util.raw.cleanBlockId(rawId)
            macroIds = []
            for macroName in os.listdir(".\\decay.config"):
                if "<" + macroName.split(".json")[0] + ">" in cleanedBlockId:
                    if customMap and (macroName.split(".json")[0] in customMap):
                        for macroItem in customMap[macroName.split(".json")[0]]:
                            macroIds.append(cleanedBlockId.replace("<" + macroName.split(".json")[0] + ">", macroItem))
                    else:
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

def getVariableMap(rawData=False, customMap=False):
    if not rawData:
        rawData = pytools.IO.getFile("decaychain.ds")
    variableMap = {}
    
    for line in rawData.split("\n"):
        if line[0:4] == "    ":
            if util.raw.getCommandType(line) == 3:
                if line.split("    ")[1].split("[")[0] not in variableMap:
                    variableMap = util.raw.extendVariableMap(variableMap, line.split("    ")[1].split("[")[0], line.split("    ")[1].split("[")[1].split("]")[0], customMap=customMap)
            elif util.raw.getCommandType(line) == 1:
                for id in line.replace(" ", "").split("-->"):
                    if "[" in id:
                        variableMap = util.raw.extendVariableMap(variableMap, id.split("[")[0], id.split("[")[1].split("]")[0], customMap=customMap)
    
    return variableMap
 
def getDecayChain(rawData=False):
    if not rawData:
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

def getBlocksFromDecayChain():
    rawData = pytools.IO.getFile("decaychain.ds")
    blockIds = []
    for line in rawData.split("\n"):
        if ("[\"" in line) and ("\"]" in line):
            for _idsec in line.split("[\"")[1:]:
                blockIds.append(_idsec.split("\"]")[0])
    
    return blockIds

def getBlockIdDict(rawData=False, reverse=False):
    if not rawData:
        rawData = pytools.IO.getFile("decaychain.ds")
    blockIds = {}
    for line in rawData.split("\n"):
        if ("[\"" in line) and ("\"]" in line):
            variableName = "n" + line.split("[\"")[0].split(" n")[-1]
            for _idsec in line.split("[\"")[1:]:
                if not reverse:
                    blockIds[_idsec.split("\"]")[0]] = variableName
                else:
                    blockIds[variableName] = _idsec.split("\"]")[0]
                try:
                    variableName = "n" + _idsec.split("\"]")[1].split(" n")[1]
                except:
                    pass
    return blockIds

def cleanSynonymDatabase():
    g = {}
    for word in globals.wordDatabase:
        g[word] = []
        for syn in globals.wordDatabase[word]:
            if not syn in g[word]:
                g[word].append(syn)
    globals.wordDatabase = g

def getAlternateWords(word):
    try:
        if globals.wordDatabase == {}:
            globals.wordDatabase = pytools.IO.getJson("synonymDatabase.json")["data"]
        if word in globals.wordDatabase:
            return globals.wordDatabase[word]

        synAntList = pytools.net.getJsonAPI("https://www.onelook.com/api/words?ml=" + word + "&qe=ml&md=dpfcy&max=6&rif=1&k=olthes_r4")

        outList = []
        
        for wordData in synAntList:
            if ("ant" not in wordData["tags"]): # (("adj" in wordData["tags"]) or ("syn" in wordData["tags"])) and ("ant" not in wordData["tags"]):
                outList.append(wordData["word"])
                
        globals.wordDatabase[word] = outList
        
        cleanSynonymDatabase()
        
        pytools.IO.saveJson("synonymDatabase.json", {
            "data": globals.wordDatabase
        })
        
        time.sleep(0.5)
        
        return outList
    except:
        print(traceback.format_exc())
        time.sleep(1)
        return []

def cleanString(oldString):
    allowed = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890 "
    newString = ""
    for char in oldString:
        if char in allowed:
            newString = newString + char
            
    return newString

def cleanQuestion(question):
    outQuestion = question.lower()
    outQuestion = outQuestion.replace("*", "")
    outQuestion = outQuestion.replace("?", "")
    
    try:
        if outQuestion[-1] == " ":
            outQuestion = outQuestion[:-1]
    except:
        pass
    
    return outQuestion

def commonateWords(shortestQuestion, longestQuestion):
    
    outQuestion = longestQuestion
    inQuestion = shortestQuestion
    
    for word in longestQuestion:
        
        word = word.replace(" ", "_")
        doBreak = False
        
        for alternate in getAlternateWords(word):
            for otherWord in shortestQuestion:
                
                otherWord = otherWord.replace(" ", "_")
                
                if alternate in getAlternateWords(otherWord):
                    i = 0
                    while i < len(outQuestion):
                        if longestQuestion[i].replace(" ", "_") == word:
                            outQuestion[i] = alternate.replace(" ", "_")
                        i = i + 1
                    i = 0
                    while i < len(inQuestion):
                        if shortestQuestion[i].replace(" ", "_") == otherWord:
                            inQuestion[i] = alternate.replace(" ", "_")
                        i = i + 1
                        
                    doBreak = True
                    
                if doBreak:
                    break
            if doBreak:
                break
    
    return inQuestion, outQuestion

def getModdedBlockEquivelents(path):
    moddedBlocksList = pytools.IO.getFile(path).split("\n")
    
    vanillaBlocks = getBlocksFromDecayChain()
    
    blockEquivelents = {}
    
    blocksUsed = []
    
    blockScores = {}
    
    def _getBlockScoreMax(x):
        return blockScores[x]
    
    for aBlock in moddedBlocksList:
        blockScores = {}
        for vanillaBlock in vanillaBlocks:
            if "#" not in vanillaBlock:
                commonatedVanillaBlock, commonatedModdedBlock = commonateWords(vanillaBlock.split("_"), aBlock.split(":")[1].split("_"))
                if vanillaBlock.split("_") != commonatedVanillaBlock:
                    print(" ".join(commonatedVanillaBlock) + " ;;; " + " ".join(commonatedModdedBlock))
                for _idsec in commonatedVanillaBlock:
                    
                    if _idsec in commonatedModdedBlock:
                        if vanillaBlock not in blockScores:
                            blockScores[vanillaBlock] = 0
                        
                        blockScores[vanillaBlock] = blockScores[vanillaBlock] + 1
        
        
        if len(blockScores) and (blockScores[max(blockScores, key=_getBlockScoreMax)] > 0):
            
            i = 0
            while (i < len(blockScores)) and ("&" not in sorted(blockScores, key=_getBlockScoreMax, reverse=True)[i]) and (sorted(blockScores, key=_getBlockScoreMax, reverse=True)[i] in blocksUsed):
                i = i + 1
            
            if (i < len(blockScores)) and (blockScores[sorted(blockScores, key=_getBlockScoreMax, reverse=True)[i]] > 0):
                blockEquivelents[aBlock] = sorted(blockScores, key=_getBlockScoreMax, reverse=True)[i]
                blocksUsed.append(blockEquivelents[aBlock])
            else:
                blockEquivelents[aBlock] = False
                
            
            
        else:
            blockEquivelents[aBlock] = False
            
    customTypes = {}
    for anEquivelent in blockEquivelents:
        if blockEquivelents[anEquivelent] and ("&lt;" in blockEquivelents[anEquivelent]):
            _eq = blockEquivelents[anEquivelent].split("&lt;" + blockEquivelents[anEquivelent].split("&lt;")[1].split("&gt;")[0] + "&gt;")
            _eqA = anEquivelent.split(":")[1]
            for _x in _eq:
                _eqA = _eqA.replace(_x, "")
            
            if blockEquivelents[anEquivelent].split("&lt;")[1].split("&gt;")[0] not in customTypes:
                customTypes[blockEquivelents[anEquivelent].split("&lt;")[1].split("&gt;")[0]] = []
            customTypes[blockEquivelents[anEquivelent].split("&lt;")[1].split("&gt;")[0]].append(_eqA)
    
    return {
        "equivelents": blockEquivelents,
        "customTypes": customTypes
    }
    
def genModdedDecayChainFromBase(moddedData, moddedNamespace):
        rawData = pytools.IO.getFile("decaychain.ds")
        
        oldBlockIdDict = getBlockIdDict(rawData=rawData)
        oldIdBlockDict = getBlockIdDict(rawData=rawData, reverse=True)
        
        n = 0
        unknownBlocks = []
        for equivelent in moddedData["equivelents"]:
            if moddedData["equivelents"][equivelent]:
                if "&" not in moddedData["equivelents"][equivelent]:
                    rawData = rawData.replace("\"" + moddedData["equivelents"][equivelent] + "\"", "\"" + equivelent + "\"")
            else:
                unknownBlocks.append(equivelent)
            
        
        blockIdDict = getBlockIdDict(rawData=rawData)
        idBlockDict = getBlockIdDict(rawData=rawData, reverse=True)
        
        maxNumber = 0
        
        usedVars = []
        
        for line in rawData.split("\n"):
            if "@" not in line:
                itsVars = []
                containsModdedBlock = False
                for variableName in line.split(" n")[1:]:
                    variableName = "n" + variableName.split(" ")[0].split("[")[0].split("-")[0]
                    
                    itsVars.append(variableName)
                    
                    if "flowchart " not in line: 
                        if (moddedNamespace + ":") in idBlockDict[variableName]:
                            containsModdedBlock = True
                            
                            if int(variableName.split("n")[1]) > maxNumber:
                                maxNumber = int(variableName.split("n")[1])
                    else:
                        containsModdedBlock = True
                
                if "-->" in line:
                    if not containsModdedBlock:
                        rawData = rawData.replace(line, "")
                    
                    else:
                        usedVars.extend(itsVars)
        
        for line in rawData.split("\n"):
            if "@" not in line:
                isUsed = False
                containsModdedBlock = False
                for variableName in line.split(" n")[1:]:
                    variableName = "n" + variableName.split(" ")[0].split("[")[0].split("-")[0]
                    
                    if variableName in usedVars:
                        isUsed = True
                
                if "-->" not in line:
                    if "flowchart " not in line:
                            if not isUsed:
                                rawData = rawData.replace(line, "")
            else:
                rawData = rawData.replace(line, "")                                   
                        
        while "\n\n" in rawData:
            rawData = rawData.replace("\n\n", "\n")
        
        maxNumber = (int(maxNumber / 100) + 2) * 100
        
        rawData = rawData + "\n\n"
        
        oldRawData = pytools.IO.getFile("decaychain.ds")
        
        newIdBlockDict = idBlockDict
        
        for aType in moddedData["customTypes"]:
            for line in oldRawData.split("\n"):
                if "@" not in line:
                    useLine = False
                    containsModdedBlock = False
                    for variableName in line.split(" n")[1:]:
                        variableName = "n" + variableName.split(" ")[0].split("[")[0].split("-")[0]
                        if variableName in idBlockDict:
                            if ("&lt;" + aType + "&gt;") in idBlockDict[variableName]:
                                useLine = True
                                if ":" in idBlockDict[variableName]:
                                    newIdBlockDict[variableName] = moddedNamespace + ":" + idBlockDict[variableName].split(":")[1]
                                else:
                                    newIdBlockDict[variableName] = moddedNamespace + ":" + idBlockDict[variableName]
                                
                            
                            line = line.replace("\"" + oldIdBlockDict[variableName] + "\"", "\"" + newIdBlockDict[variableName] + "\"")
                            rawData = rawData.replace("\"" + oldIdBlockDict[variableName] + "\"", "\"" + newIdBlockDict[variableName] + "\"")
                            
                if useLine:
                    rawData = rawData + "\n" + line
                    
        for aVariable in list(newIdBlockDict.keys()):
            if ((aVariable + " ") in rawData) or ((aVariable + "-") in rawData) or ((aVariable + "\n") in rawData):
                if not aVariable + "[" in rawData:
                    if newIdBlockDict[aVariable] in list(moddedData["equivelents"].values()):
                        moddedVersion = list(moddedData["equivelents"].keys())[list(moddedData["equivelents"].values()).index(newIdBlockDict[aVariable])]
                        rawData = rawData.split("\n")[0] + "\n    " + aVariable + "[\"" + moddedVersion + "\"]" + "\n" + "\n".join(rawData.split("\n")[1:])
                    else:    
                        rawData = rawData.split("\n")[0] + "\n    " + aVariable + "[\"" + newIdBlockDict[aVariable] + "\"]" + "\n" + "\n".join(rawData.split("\n")[1:])
                
                if "&lt;" in newIdBlockDict[aVariable]:
                    if ":" in newIdBlockDict[aVariable]:
                        rawData = rawData.replace("\"" + newIdBlockDict[aVariable] + "\"", "\"" + moddedNamespace + ":" + newIdBlockDict[aVariable].split(":")[1] + "\"")
                    else:
                        rawData = rawData.replace("\"" + newIdBlockDict[aVariable] + "\"", "\"" + moddedNamespace + ":" + newIdBlockDict[aVariable] + "\"")
        
        rawData = rawData + "\n\n"
        
        newBlockIdDict = getBlockIdDict(rawData=oldRawData + "\n" + rawData)
        newIdBlockDict = getBlockIdDict(rawData=oldRawData + "\n" + rawData, reverse=True)
        
        for variableName in usedVars:
            if (variableName + " -->") not in rawData:
                if (variableName + "-->") not in rawData:
                    if (variableName + "[\"" + newIdBlockDict[variableName] + "\"] -->") not in rawData:
                        if (variableName + "[\"" + newIdBlockDict[variableName] + "\"]-->") not in rawData:
                            if newIdBlockDict[variableName] in moddedData["equivelents"]:
                                if ("[\"" + moddedData["equivelents"][newIdBlockDict[variableName]] + "\"]") in rawData:
                                    rawData = rawData + "\n    " + variableName + " --> " + blockIdDict[moddedData["equivelents"][newIdBlockDict[variableName]]]
                                else:
                                    rawData = rawData + "\n    " + variableName + " --> n" + str(maxNumber + n) + "[\"" + moddedData["equivelents"][newIdBlockDict[variableName]] + "\"]"
                                    n = n + 1
                                    
                            if "&lt;" in newIdBlockDict[variableName]:
                                if ("[\"" + newIdBlockDict[variableName].split(":")[1] + "\"]") in rawData:
                                    rawData = rawData + "\n    " + variableName + " --> " + blockIdDict[newIdBlockDict[variableName].split(":")[1]]
                                else:
                                    rawData = rawData + "\n    " + variableName + " --> n" + str(maxNumber + n) + "[\"" + newIdBlockDict[variableName].split(":")[1] + "\"]"
                                    n = n + 1
        
        newBlockIdDict = getBlockIdDict(rawData=oldRawData + "\n" + rawData)
        newIdBlockDict = getBlockIdDict(rawData=oldRawData + "\n" + rawData, reverse=True)
        
        contin = True
        while contin:
            contin = False
            varsf = []
            for line in rawData.split("\n"):
                if "-->" in line:
                    j = 0
                    j0 = ""
                    for variableName in line.split(" n")[1:]:
                        variableName = "n" + variableName.split(" ")[0].split("[")[0].split("-")[0]
                        
                        if j == 0:
                            if variableName not in varsf:
                                varsf.append(variableName)
                            else:
                                print("Removing duplicate line: " + line)
                                rawData = rawData.replace(line + "\n", "")
                            j0 = variableName
                        else:
                            if j0 == variableName:
                                print("Removing loop line: " + line)
                                rawData = rawData.replace(line + "\n", "")
                            
                            elif (variableName not in varsf) and (((variableName + " -") in rawData) or ((variableName + "-") in rawData) or ((variableName + "[\"" + newIdBlockDict[variableName.split("!")[0]] + "\"] -") in rawData) or ((variableName + "[\"" + newIdBlockDict[variableName.split("!")[0]] + "\"]-") in rawData)):
                                print("Moving line to front " + line)
                                rawData = rawData.replace(line, "")
                                rawData = rawData + "\n" + line + "!line"
                                contin = True
                        
                        j = j + 1
        
        
             
        varsf = []
        reversedLines = rawData.split("\n")
        reversedLines.reverse()
        for line in reversedLines:
            if "-->" in line:
                j = 0
                j0 = ""
                for variableName in line.split(" n")[1:]:
                    variableName = "n" + variableName.split(" ")[0].split("[")[0].split("-")[0]
                    
                    if j == 0:
                        if variableName not in varsf:
                            if (moddedNamespace + ":") not in newIdBlockDict[variableName.split("!")[0]]:
                                if "&" in newIdBlockDict[variableName.split("!")[0]]:
                                    if "[" in line.split("-->")[0]:
                                        newLine = line.replace(variableName.split("!")[0] + "[\"", variableName.split("!")[0] + "[\"" + moddedNamespace + ":")
                                        rawData = rawData.replace(line + "\n", newLine + "\n")
                                else:
                                    if "[" in line.split("-->")[1]:
                                        rawData = rawData.replace(line + "\n", "    " + line.split("-->")[1].replace(" ", "") + "\n")
                                    else:
                                        rawData = rawData.replace(line + "\n", "")
                            
                            varsf.append(variableName.split("!")[0])
                            
                    else:
                        if variableName not in varsf:
                            varsf.append(variableName.split("!")[0])
             
                    j = j + 1
                    
        for line in rawData.split("\n"):
            if "-->" not in line:
                if "@" not in line:
                    if "flowchart " not in line:
                        if "n" in line:
                            if (rawData.count("n" + line.split("n")[1].split("[")[0]) <= 1):
                                print("Removing line: " + line)
                                rawData = rawData.replace(line + "\n", "")
        
        while "\n\n" in rawData:
            rawData = rawData.replace("\n\n", "\n")
        
        _rawData = []
        for aLine in rawData.split("\n"):
            _rawData.append(aLine.split("!")[0])
        
        rawData = "\n".join(_rawData)
        
            
        rawData = rawData + "\n\n"                       
        
        for equivelent in unknownBlocks:
            rawData = rawData + "\n    n" + str(maxNumber + n) + "[\"" + equivelent + "\"]"
            n = n + 1

        return rawData

def main(moddedChainPath=False, blockListPath=False):
    
    if blockListPath:
        blockList = getModdedBlockEquivelents(blockListPath)
    
    if moddedChainPath:
        aDecayChain = getDecayChain(rawData=pytools.IO.getFile(moddedChainPath))
    else:
        aDecayChain = getDecayChain()
    if blockList and moddedChainPath:
        aVariableDict = getVariableMap(rawData=pytools.IO.getFile(moddedChainPath), customMap=blockList["customTypes"])
    else:
        aVariableDict = getVariableMap()
    
    makeFolderStructure(aDecayChain, aVariableDict)
    createFunctionFiles(aDecayChain, aVariableDict)

    # os.system("robocopy .\\datapack_compile_temp .\\block_decay\\data\\blockdecay\\function\\decay * /mir")
    
    # os.system("del .\\datapack_compile_temp\\* /f /s /q")
    # os.system("rmdir \".\\datapack_compile_temp\" /s /q")
    # os.system("mkdir .\\datapack_compile_temp")
    
        