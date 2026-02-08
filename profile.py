import modules.pytools as pytools

def getFunctionTraceCount():
    traceData = {}
    traceFile = pytools.IO.getFile(".\\trace.txt").split("\n")

    currentFunction = False

    for x in traceFile:
        if "[F] " in x:
            if not x.split("[F] ")[1].split("_sub")[0] in traceData:
                traceData[x.split("[F] ")[1].split("_sub")[0]] = 0
            traceData[x.split("[F] ")[1].split("_sub")[0]] = traceData[x.split("[F] ")[1].split("_sub")[0]] + 1
            currentFunction = x.split("[F] ")[1].split("_sub")[0]

def purge(listf, token):
    while token in listf:
        listf.remove(token)
        
    return listf

def getCommandTraceCount():
    traceData = {}
    traceFile = pytools.IO.getFile(".\\trace.txt").split("\n")

    currentFunction = False
    stackTrace = {}
    
    def purgeStack(stackTrace, depth):
        done = False
        while not done:
            done = True
            key = False
            for key in stackTrace:
                if key >= depth:
                    continue
                
            if key:
                stackTrace.pop(key)
                done = False
        
        return stackTrace
    
    for x in traceFile:
        
        if (purge(x.split(" "), "")[0][0] == "[") and ("[E] " not in x):
            
            stackDepth = len(x.split("[")[0]) / 4
            
            if "[F] " in x:
                if not x.split("[F] ")[1].split("_sub")[0] in traceData:
                    traceData[x.split("[F] ")[1].split("_sub")[0]] = 0
                traceData[x.split("[F] ")[1].split("_sub")[0]] = traceData[x.split("[F] ")[1].split("_sub")[0]] + 1
                stackTrace = purgeStack(stackTrace, stackDepth)
                stackTrace[stackDepth] = x.split("[F] ")[1].split("_sub")[0]
            if "[C] " in x:
                for currentFunction in stackTrace.values():
                    traceData[currentFunction] = traceData[currentFunction] + 1
            if "[M] " in x:
                for currentFunction in stackTrace.values():
                    traceData[currentFunction] = traceData[currentFunction] + 1
    return traceData

def getCommandListInFunction(stackPtr):
    traceData = {}
    traceFile = pytools.IO.getFile(".\\trace.txt").split("\n")

    currentFunction = False
    stackTrace = {}
    commandList = {}
    
    def purgeStack(stackTrace, depth):
        done = False
        while not done:
            done = True
            key = False
            for key in stackTrace:
                if key >= depth:
                    continue
                
            if key:
                stackTrace.pop(key)
                done = False
        
        return stackTrace
    
    for x in traceFile:
        
        if (purge(x.split(" "), "")[0][0] == "[") and ("[E] " not in x):
            
            stackDepth = len(x.split("[")[0]) / 4
            
            if "[F] " in x:
                if not x.split("[F] ")[1].split("_sub")[0] in traceData:
                    traceData[x.split("[F] ")[1].split("_sub")[0]] = 0
                traceData[x.split("[F] ")[1].split("_sub")[0]] = traceData[x.split("[F] ")[1].split("_sub")[0]] + 1
                stackTrace = purgeStack(stackTrace, stackDepth)
                stackTrace[stackDepth] = x.split("[F] ")[1].split("_sub")[0]
            if "[C] " in x:
                for currentFunction in stackTrace.values():
                    traceData[currentFunction] = traceData[currentFunction] + 1
                    if currentFunction == stackPtr:
                        if x.split("[C] ")[1] not in commandList:
                            commandList[x.split("[C] ")[1]] = 0
                        commandList[x.split("[C] ")[1]] = commandList[x.split("[C] ")[1]] + 1
            if "[M] " in x:
                for currentFunction in stackTrace.values():
                    traceData[currentFunction] = traceData[currentFunction] + 1
                    if currentFunction == stackPtr:
                        if " ".join((x.split("[M] ")[1]).split(" ")[1:]) not in commandList:
                            commandList[" ".join((x.split("[M] ")[1]).split(" ")[1:])] = 0
                        commandList[" ".join((x.split("[M] ")[1]).split(" ")[1:])] = commandList[" ".join((x.split("[M] ")[1]).split(" ")[1:])] + 1
    return commandList
        