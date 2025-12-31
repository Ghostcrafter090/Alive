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
        
def getDecayChain():
    rawData = pytools.IO.getFile("decaychain.ds")
    variableMap = {}
    for line in rawData.split("\n"):
        if line[0:4] == "    ":
            if util.raw.getCommandType(line) == 3:
                if line.split("    ")[1].split("[")[0] not in variableMap:
                    variableMap = util.raw.extendVariableName(variableMap, line.split("    ")[1].split("[")[0], line.split("    ")[1].split("[")[1].split("]")[0])
            elif util.raw.getCommandType(line) == 4
    return variableMap